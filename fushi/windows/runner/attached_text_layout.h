#ifndef RUNNER_ATTACHED_TEXT_LAYOUT_H_
#define RUNNER_ATTACHED_TEXT_LAYOUT_H_

#include <dwrite.h>
#include <dwrite_1.h>
#include <windows.h>
#include <wrl/client.h>

#include <algorithm>
#include <cmath>
#include <cstdint>
#include <string>
#include <vector>

#include "attached_layout_validation.h"

// The runtime catch surface and offline calibration previews use this one
// DirectWrite implementation. Coordinates are physical pixels; no HWND,
// provider admission or input state is read or changed here.
namespace fushi::attached_text_layout {

struct NormalizedRect {
  double left = 0.0;
  double top = 0.0;
  double width = 0.0;
  double height = 0.0;
};

struct ReferenceClient {
  int width_px = 0;
  int height_px = 0;
  int dpi = 96;
};

struct Layout {
  std::wstring font_family = L"Yu Gothic";
  double font_size_per_client_height = 0.045;
  double letter_spacing_per_client_height = 0.0;
  double line_height = 1.0;
  std::string text_align = "left";
  std::string vertical_align = "top";
  double padding_per_client_height = 0.0;
};

struct ClusterBox {
  uint32_t text_position = 0;
  uint32_t text_length = 0;
  RECT client_rect{};
};

struct Result {
  Microsoft::WRL::ComPtr<IDWriteTextLayout> text_layout;
  std::vector<ClusterBox> boxes;
  std::string reason;

  bool ok() const { return reason.empty(); }
};

inline Result Failure(const char *reason) {
  Result result;
  result.reason = reason;
  return result;
}

inline bool IsNormalizedRectValid(const NormalizedRect &rect) {
  return std::isfinite(rect.left) && std::isfinite(rect.top) &&
         std::isfinite(rect.width) && std::isfinite(rect.height) &&
         rect.width >= 0.002 && rect.height >= 0.002 && rect.left >= 0.0 &&
         rect.top >= 0.0 && rect.left + rect.width <= 1.0 &&
         rect.top + rect.height <= 1.0;
}

inline RECT ResolveBodyRect(const RECT &client,
                            const NormalizedRect &normalized) {
  const double width = static_cast<double>(client.right - client.left);
  const double height = static_cast<double>(client.bottom - client.top);
  const LONG left =
      client.left + static_cast<LONG>(std::llround(normalized.left * width));
  const LONG top =
      client.top + static_cast<LONG>(std::llround(normalized.top * height));
  const LONG right =
      client.left + static_cast<LONG>(std::llround(
                        (normalized.left + normalized.width) * width));
  const LONG bottom =
      client.top + static_cast<LONG>(std::llround(
                       (normalized.top + normalized.height) * height));
  return RECT{left, top, right, bottom};
}

inline bool RectHasArea(const RECT &rect) {
  return rect.right > rect.left && rect.bottom > rect.top;
}

// Build a surface-local layout. Runtime calibration uses a full-client surface
// with body_bounds inside it; normal lookup uses a surface the size of the
// body.
inline Result Build(IDWriteFactory *factory, const std::wstring &source,
                    const Layout &style, int client_height_px,
                    int surface_width_px, int surface_height_px,
                    const RECT &layout_bounds) {
  if (source.empty() || surface_width_px <= 0 || surface_height_px <= 0)
    return Failure("empty_text_or_no_surface_rect");
  if (factory == nullptr)
    return Failure("dwrite_factory_failed");
  constexpr float kMinimumBodyPixels = 8.0f;
  const float client_height = static_cast<float>(std::max(1, client_height_px));
  const float surface_width = static_cast<float>(surface_width_px);
  const float surface_height = static_cast<float>(surface_height_px);
  Result result;
  const float font_size = static_cast<float>(std::clamp(
      style.font_size_per_client_height * client_height, 1.0, 512.0));
  const float padding = static_cast<float>(
      std::max(0.0, style.padding_per_client_height * client_height));
  const float layout_width =
      static_cast<float>(layout_bounds.right - layout_bounds.left);
  const float layout_height =
      static_cast<float>(layout_bounds.bottom - layout_bounds.top);
  if (layout_width < kMinimumBodyPixels || layout_height < kMinimumBodyPixels) {
    return Failure("layout_bounds_too_small");
  }
  const float layout_origin_x =
      static_cast<float>(layout_bounds.left) + padding;
  const float layout_origin_y = static_cast<float>(layout_bounds.top) + padding;
  const float content_width = std::max(1.0f, layout_width - 2.0f * padding);
  const float content_height = std::max(1.0f, layout_height - 2.0f * padding);

  Microsoft::WRL::ComPtr<IDWriteTextFormat> format;
  HRESULT hr = factory->CreateTextFormat(
      style.font_family.c_str(), nullptr, DWRITE_FONT_WEIGHT_NORMAL,
      DWRITE_FONT_STYLE_NORMAL, DWRITE_FONT_STRETCH_NORMAL, font_size, L"ja-JP",
      &format);
  if (FAILED(hr))
    return Failure("create_text_format_failed");
  if (style.text_align == "center") {
    format->SetTextAlignment(DWRITE_TEXT_ALIGNMENT_CENTER);
  } else if (style.text_align == "right" || style.text_align == "trailing") {
    format->SetTextAlignment(DWRITE_TEXT_ALIGNMENT_TRAILING);
  } else {
    format->SetTextAlignment(DWRITE_TEXT_ALIGNMENT_LEADING);
  }
  if (style.vertical_align == "center") {
    format->SetParagraphAlignment(DWRITE_PARAGRAPH_ALIGNMENT_CENTER);
  } else if (style.vertical_align == "bottom" ||
             style.vertical_align == "far") {
    format->SetParagraphAlignment(DWRITE_PARAGRAPH_ALIGNMENT_FAR);
  } else {
    format->SetParagraphAlignment(DWRITE_PARAGRAPH_ALIGNMENT_NEAR);
  }
  format->SetWordWrapping(DWRITE_WORD_WRAPPING_WRAP);
  const float line_spacing =
      std::max(font_size, font_size * static_cast<float>(style.line_height));
  // BUG-2138: Japanese ascenders can extend above the initial 0.8-em baseline.
  // Measure that overhang and lower the baseline by the actual amount before
  // validating the final layout. This preserves the runtime calibration rule.
  float baseline = font_size * 0.8f;
  {
    Microsoft::WRL::ComPtr<IDWriteTextFormat> probe_format;
    if (SUCCEEDED(factory->CreateTextFormat(
            style.font_family.c_str(), nullptr, DWRITE_FONT_WEIGHT_NORMAL,
            DWRITE_FONT_STYLE_NORMAL, DWRITE_FONT_STRETCH_NORMAL, font_size,
            L"ja-JP", &probe_format))) {
      probe_format->SetWordWrapping(DWRITE_WORD_WRAPPING_WRAP);
      probe_format->SetLineSpacing(DWRITE_LINE_SPACING_METHOD_UNIFORM,
                                   line_spacing, baseline);
      Microsoft::WRL::ComPtr<IDWriteTextLayout> probe_layout;
      if (SUCCEEDED(factory->CreateTextLayout(
              source.data(), static_cast<UINT32>(source.size()),
              probe_format.Get(), content_width, content_height,
              &probe_layout))) {
        DWRITE_OVERHANG_METRICS probe{};
        if (SUCCEEDED(probe_layout->GetOverhangMetrics(&probe)) &&
            probe.top > 0.0f) {
          baseline += probe.top;
        }
      }
    }
  }
  format->SetLineSpacing(DWRITE_LINE_SPACING_METHOD_UNIFORM, line_spacing,
                         baseline);

  hr = factory->CreateTextLayout(
      source.data(), static_cast<UINT32>(source.size()), format.Get(),
      content_width, content_height, &result.text_layout);
  if (FAILED(hr) || result.text_layout == nullptr)
    return Failure("create_text_layout_failed");

  const float letter_spacing = static_cast<float>(
      style.letter_spacing_per_client_height * client_height);
  if (letter_spacing != 0.0f) {
    Microsoft::WRL::ComPtr<IDWriteTextLayout1> layout1;
    if (SUCCEEDED(result.text_layout.As(&layout1))) {
      const DWRITE_TEXT_RANGE range{0, static_cast<UINT32>(source.size())};
      layout1->SetCharacterSpacing(letter_spacing * 0.5f, letter_spacing * 0.5f,
                                   0.0f, range);
    }
  }

  // A catch surface must never publish geometry for text that DirectWrite
  // clipped. A partially laid-out sentence makes the final visible glyphs map
  // to stale/absent boxes, which is worse than reporting no surface. Validate
  // all three views of the layout before exposing a single HWND region.
  constexpr float kLayoutEpsilon = 0.01f;
  DWRITE_TEXT_METRICS text_metrics{};
  if (FAILED(result.text_layout->GetMetrics(&text_metrics)) ||
      text_metrics.left < -kLayoutEpsilon ||
      text_metrics.top < -kLayoutEpsilon ||
      text_metrics.left + text_metrics.widthIncludingTrailingWhitespace >
          content_width + kLayoutEpsilon ||
      text_metrics.top + text_metrics.height >
          content_height + kLayoutEpsilon) {
    return Failure("metrics_overflow_body_rect");
  }
  DWRITE_OVERHANG_METRICS overhang{};
  if (FAILED(result.text_layout->GetOverhangMetrics(&overhang)) ||
      overhang.left > kLayoutEpsilon || overhang.top > kLayoutEpsilon ||
      overhang.right > kLayoutEpsilon || overhang.bottom > kLayoutEpsilon) {
    return Failure("overhang_outside_body_rect");
  }

  UINT32 line_count = 0;
  HRESULT line_hr = result.text_layout->GetLineMetrics(nullptr, 0, &line_count);
  if ((line_hr != E_NOT_SUFFICIENT_BUFFER && FAILED(line_hr)) ||
      line_count == 0) {
    return Failure("line_metrics_unavailable");
  }
  std::vector<DWRITE_LINE_METRICS> lines(line_count);
  line_hr =
      result.text_layout->GetLineMetrics(lines.data(), line_count, &line_count);
  if (FAILED(line_hr)) {
    return Failure("line_metrics_read_failed");
  }
  uint64_t line_units = 0;
  double line_height_total = 0.0;
  for (UINT32 index = 0; index < line_count; ++index) {
    if (lines[index].isTrimmed) {
      return Failure("line_trimmed");
    }
    line_units += lines[index].length;
    line_height_total += lines[index].height;
  }
  if (line_units != source.size() ||
      line_height_total > content_height + kLayoutEpsilon) {
    return Failure("line_units_or_height_mismatch");
  }

  UINT32 cluster_count = 0;
  hr = result.text_layout->GetClusterMetrics(nullptr, 0, &cluster_count);
  if (hr != E_NOT_SUFFICIENT_BUFFER && FAILED(hr))
    return Failure("cluster_metrics_unavailable");
  if (cluster_count == 0)
    return Failure("cluster_count_zero");
  std::vector<DWRITE_CLUSTER_METRICS> metrics(cluster_count);
  hr = result.text_layout->GetClusterMetrics(metrics.data(), cluster_count,
                                             &cluster_count);
  if (FAILED(hr))
    return Failure("cluster_metrics_read_failed");

  uint32_t text_position = 0;
  for (UINT32 index = 0; index < cluster_count; ++index) {
    const DWRITE_CLUSTER_METRICS &cluster = metrics[index];
    const uint32_t length = cluster.length;
    if (length == 0 || text_position >= source.size() ||
        static_cast<uint64_t>(text_position) + length > source.size()) {
      return Failure("cluster_range_out_of_text");
    }
    if (!cluster.isWhitespace && !cluster.isNewline && !cluster.isSoftHyphen) {
      UINT32 hit_count = 0;
      HRESULT hit_hr = result.text_layout->HitTestTextRange(
          text_position, length, layout_origin_x, layout_origin_y, nullptr, 0,
          &hit_count);
      if ((hit_hr != E_NOT_SUFFICIENT_BUFFER && FAILED(hit_hr)) ||
          hit_count == 0) {
        return Failure("hit_test_range_empty");
      }
      std::vector<DWRITE_HIT_TEST_METRICS> hits(hit_count);
      hit_hr = result.text_layout->HitTestTextRange(
          text_position, length, layout_origin_x, layout_origin_y, hits.data(),
          hit_count, &hit_count);
      if (FAILED(hit_hr)) {
        return Failure("hit_test_range_failed");
      }
      for (UINT32 hit_index = 0; hit_index < hit_count; ++hit_index) {
        const DWRITE_HIT_TEST_METRICS &hit = hits[hit_index];
        RECT box{
            static_cast<LONG>(std::floor(hit.left)),
            static_cast<LONG>(std::floor(hit.top)),
            static_cast<LONG>(std::ceil(hit.left + hit.width)),
            static_cast<LONG>(std::ceil(hit.top + hit.height)),
        };
        if (!RectHasArea(box) || box.left < 0 || box.top < 0 ||
            box.right > static_cast<LONG>(surface_width) ||
            box.bottom > static_cast<LONG>(surface_height)) {
          return Failure("cluster_box_outside_surface");
        }
        result.boxes.push_back(ClusterBox{text_position, length, box});
      }
    }
    text_position += length;
  }
  if (text_position != source.size()) {
    return Failure("text_position_mismatch");
  }
  if (result.boxes.empty())
    return Failure("clusters_empty");
  return result;
}

// Bounded, stateless preview of the *configured runtime* catch geometry. Build
// relative to the body before adding the integer origin, matching runtime's
// rounding even when the body begins at a fractional normalized coordinate.
inline Result Preview(const std::wstring &source,
                      const ReferenceClient &reference,
                      const NormalizedRect &body_rect, const Layout &layout) {
  constexpr size_t kMaximumSourceTextUnits = 32768;
  constexpr int kMaximumClientExtent = 16384;
  constexpr int64_t kMaximumClientPixels = 64LL * 1024 * 1024;
  if (source.empty())
    return Failure("empty_text_or_no_surface_rect");
  if (source.size() > kMaximumSourceTextUnits)
    return Failure("source_text_too_large");
  if (reference.width_px <= 0 || reference.height_px <= 0 ||
      reference.width_px > kMaximumClientExtent ||
      reference.height_px > kMaximumClientExtent || reference.dpi <= 0 ||
      reference.dpi > 960 ||
      static_cast<int64_t>(reference.width_px) * reference.height_px >
          kMaximumClientPixels)
    return Failure("invalid_reference_client");
  if (!IsNormalizedRectValid(body_rect))
    return Failure("invalid_body_rect");
  if (layout.font_family.size() > 256 ||
      !attached_layout_validation::IsLayoutValid(
          layout.font_size_per_client_height,
          layout.letter_spacing_per_client_height, layout.line_height,
          layout.text_align, layout.vertical_align,
          layout.padding_per_client_height))
    return Failure("invalid_layout");
  const RECT client{0, 0, reference.width_px, reference.height_px};
  const RECT body = ResolveBodyRect(client, body_rect);
  const int width = body.right - body.left;
  const int height = body.bottom - body.top;
  const RECT bounds{0, 0, width, height};
  Microsoft::WRL::ComPtr<IDWriteFactory> factory;
  if (FAILED(DWriteCreateFactory(
          DWRITE_FACTORY_TYPE_SHARED, __uuidof(IDWriteFactory),
          reinterpret_cast<IUnknown **>(factory.GetAddressOf()))))
    return Failure("dwrite_factory_failed");
  Layout style = layout;
  if (style.font_family.empty())
    style.font_family = L"Yu Gothic";
  Result result = Build(factory.Get(), source, style, reference.height_px,
                        width, height, bounds);
  for (ClusterBox &box : result.boxes) {
    box.client_rect.left += body.left;
    box.client_rect.right += body.left;
    box.client_rect.top += body.top;
    box.client_rect.bottom += body.top;
  }
  return result;
}

} // namespace fushi::attached_text_layout

#endif // RUNNER_ATTACHED_TEXT_LAYOUT_H_
