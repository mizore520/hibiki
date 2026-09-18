#undef NDEBUG

#include "../attached_text_layout.h"

#include <cassert>
#include <iostream>
#include <limits>

namespace {
namespace layout = fushi::attached_text_layout;

void ExpectSameBoxes(const layout::Result &left, const layout::Result &right,
                     LONG offset_x = 0, LONG offset_y = 0) {
  assert(left.ok() && right.ok());
  assert(!left.boxes.empty() && left.boxes.size() == right.boxes.size());
  for (size_t index = 0; index < left.boxes.size(); ++index) {
    const auto &actual = left.boxes[index];
    const auto &expected = right.boxes[index];
    assert(actual.text_position == expected.text_position);
    assert(actual.text_length == expected.text_length);
    assert(actual.client_rect.left == expected.client_rect.left + offset_x);
    assert(actual.client_rect.right == expected.client_rect.right + offset_x);
    assert(actual.client_rect.top == expected.client_rect.top + offset_y);
    assert(actual.client_rect.bottom == expected.client_rect.bottom + offset_y);
  }
}

void ExpectRejected(const layout::Result &result, const char *reason) {
  assert(!result.ok());
  assert(result.reason == reason);
  assert(result.boxes.empty());
  assert(result.text_layout == nullptr);
}
} // namespace

int main() {
  const layout::ReferenceClient client{800, 600, 96};
  const layout::NormalizedRect rect{0.103, 0.117, 0.793, 0.75};
  layout::Layout style;
  style.font_size_per_client_height = 0.04;
  style.line_height = 1.4;
  style.letter_spacing_per_client_height = 0.001;
  style.padding_per_client_height = 0.013;
  const std::wstring text = L"\u3042\u3044\u3046\u3048\u304a\u3002\nABC";
  int cases = 0;

  // Preview must reproduce the actual body-local runtime layout exactly,
  // including its integer catch-box rounding and normalized body origin.
  Microsoft::WRL::ComPtr<IDWriteFactory> factory;
  assert(SUCCEEDED(DWriteCreateFactory(
      DWRITE_FACTORY_TYPE_SHARED, __uuidof(IDWriteFactory),
      reinterpret_cast<IUnknown **>(factory.GetAddressOf()))));
  const RECT body = layout::ResolveBodyRect(RECT{0, 0, 800, 600}, rect);
  const int width = body.right - body.left;
  const int height = body.bottom - body.top;
  const auto runtime = layout::Build(factory.Get(), text, style, 600, width,
                                     height, RECT{0, 0, width, height});
  const auto preview = layout::Preview(text, client, rect, style);
  ExpectSameBoxes(preview, runtime, body.left, body.top);
  ++cases;

  // Invisible spaces/newlines never become clickable, while a surrogate pair
  // remains one UTF-16 range. Fixtures contain only synthetic text.
  const auto unicode = layout::Preview(L"A \U0001f600\nB", client, rect, style);
  assert(unicode.ok());
  bool found_pair = false;
  bool found_second_line = false;
  for (const auto &box : unicode.boxes) {
    assert(box.text_position != 1 && box.text_position != 4);
    if (box.text_position == 2) {
      assert(box.text_length == 2);
      found_pair = true;
    }
    if (box.text_position == 5) {
      assert(box.client_rect.top > unicode.boxes.front().client_rect.top);
      found_second_line = true;
    }
  }
  assert(found_pair && found_second_line);
  ++cases;

  const auto wrapped =
      layout::Preview(std::wstring(36, L'\u3042'), client,
                      layout::NormalizedRect{0.1, 0.1, 0.35, 0.8}, style);
  assert(wrapped.ok());
  assert(wrapped.boxes.back().client_rect.top >
         wrapped.boxes.front().client_rect.top);
  ++cases;

  // Physical pixel coordinates do not receive a second DPI multiplier.
  ExpectSameBoxes(preview,
                  layout::Preview(text, layout::ReferenceClient{800, 600, 192},
                                  rect, style));
  ++cases;

  // An interleaved sample cannot mutate a previously computed preview.
  const auto other = layout::Preview(L"XYZ", client, rect, style);
  assert(other.ok());
  ExpectSameBoxes(preview, layout::Preview(text, client, rect, style));
  ++cases;

  const layout::NormalizedRect scaled_rect{0.1, 0.1, 0.8, 0.8};
  const auto small_result = layout::Preview(text, client, scaled_rect, style);
  const auto large_result = layout::Preview(
      text, layout::ReferenceClient{1600, 1200, 96}, scaled_rect, style);
  assert(small_result.ok() && large_result.ok());
  assert(small_result.boxes.size() == large_result.boxes.size());
  for (size_t index = 0; index < small_result.boxes.size(); ++index) {
    const auto &a = small_result.boxes[index].client_rect;
    const auto &b = large_result.boxes[index].client_rect;
    assert(std::abs(b.left - 2 * a.left) <= 1);
    assert(std::abs(b.top - 2 * a.top) <= 1);
    assert(std::abs(b.right - 2 * a.right) <= 1);
    assert(std::abs(b.bottom - 2 * a.bottom) <= 1);
  }
  ++cases;

  layout::Layout grid_style = style;
  layout::CellGrid grid;
  grid.advance_per_client_height = 0.03;
  grid.line_advance_per_client_height = 0.04;
  grid.cell_height_per_client_height = 0.035;
  grid.columns = 16;
  grid.continuation_indent = 1;
  grid.quoted_continuation_indent = 2;
  grid_style.cell_grid = grid;
  const auto grid_preview = layout::Preview(
      L"\u300C\u3042\u3044 \u3046\u3048\u304A\n\u304B\u304D\u304F\u2026\u2014", client, rect,
      grid_style);
  assert(grid_preview.ok() && grid_preview.text_layout == nullptr);
  assert(grid_preview.boxes.front().text_position == 0);
  assert(grid_preview.boxes.front().text_length == 1);
  bool found_space = false;
  bool found_quoted_continuation = false;
  for (const auto &box : grid_preview.boxes) {
    if (box.text_position == 3 || box.text_position == 7)
      found_space = true;
    if (box.text_position == 8) {
      assert(box.client_rect.left == body.left + 36);
      assert(box.client_rect.top == body.top + 24);
      found_quoted_continuation = true;
    }
  }
  assert(!found_space && found_quoted_continuation);
  ++cases;

  const auto grid_wrapped = layout::Preview(
      std::wstring(17, L'\u3042'), client, rect, grid_style);
  assert(grid_wrapped.ok());
  assert(grid_wrapped.boxes.back().text_position == 16);
  assert(grid_wrapped.boxes.back().client_rect.left == body.left + 18);
  assert(grid_wrapped.boxes.back().client_rect.top == body.top + 24);
  ++cases;

  // A disabled grid keeps the legacy wrap point. Enabling hanging punctuation
  // adds exactly one body cell for the terminal punctuation, then normal text
  // starts on the continuation row.
  const std::wstring full_line(16, L'\u3042');
  const auto disabled_wrap =
      layout::Preview(full_line + L"。A", client, rect, grid_style);
  assert(disabled_wrap.ok() && disabled_wrap.boxes.size() == 18);
  assert(disabled_wrap.boxes[16].text_position == 16);
  assert(disabled_wrap.boxes[16].client_rect.top >
         disabled_wrap.boxes[15].client_rect.top);

  layout::Layout hanging_style = grid_style;
  hanging_style.cell_grid->hanging_punctuation = true;
  assert(*grid_style.cell_grid != *hanging_style.cell_grid);
  const auto hanging =
      layout::Preview(full_line + L"。A", client, rect, hanging_style);
  assert(hanging.ok() && hanging.boxes.size() == 18);
  assert(hanging.boxes[16].text_position == 16);
  assert(hanging.boxes[16].client_rect.left == body.left + 16 * 18);
  assert(hanging.boxes[16].client_rect.top == body.top);
  assert(hanging.boxes[17].text_position == 17);
  assert(hanging.boxes[17].client_rect.left == body.left + 18);
  assert(hanging.boxes[17].client_rect.top == body.top + 24);

  // Only one punctuation may hang. A second punctuation and the following
  // ordinary character both remain in the normal continuation row.
  const auto one_hang = layout::Preview(full_line + L"。。A", client, rect,
                                        hanging_style);
  assert(one_hang.ok() && one_hang.boxes.size() == 19);
  assert(one_hang.boxes[16].client_rect.top == body.top);
  assert(one_hang.boxes[17].client_rect.top == body.top + 24);
  assert(one_hang.boxes[18].client_rect.top == body.top + 24);
  assert(one_hang.boxes[18].client_rect.left == body.left + 36);
  ++cases;

  // UTF-16 offsets and explicit CRLF remain stable after a hanging cell.
  const auto hanging_unicode = layout::Preview(
      full_line + L"。\r\n\U0001f600A", client, rect, hanging_style);
  assert(hanging_unicode.ok());
  bool found_emoji = false;
  bool found_after_break = false;
  for (const auto &box : hanging_unicode.boxes) {
    if (box.text_position == 19) {
      assert(box.text_length == 2);
      assert(box.client_rect.top == body.top + 24);
      found_emoji = true;
    }
    if (box.text_position == 21) {
      assert(box.client_rect.top == body.top + 24);
      found_after_break = true;
    }
  }
  assert(found_emoji && found_after_break);
  ++cases;

  // The fitter supplies the extra cell in bodyRect. Native layout rejects a
  // narrower body instead of returning an out-of-bounds clickable box.
  ExpectRejected(
      layout::Preview(full_line + L"。", client,
                      layout::NormalizedRect{0.1, 0.1, 0.36, 0.8},
                      hanging_style),
      "grid_overflow_body_rect");
  ++cases;

  const auto mixed_grid = layout::Preview(
      L"\u3042A\U0001f600e\u0301", client, rect, grid_style);
  assert(mixed_grid.ok());
  assert(mixed_grid.boxes.size() == 4);
  assert(mixed_grid.boxes[1].text_position == 1 &&
         mixed_grid.boxes[1].text_length == 1);
  assert(mixed_grid.boxes[2].text_position == 2 &&
         mixed_grid.boxes[2].text_length == 2);
  assert(mixed_grid.boxes[3].text_position == 4 &&
         mixed_grid.boxes[3].text_length == 2);
  ExpectRejected(layout::Preview(L"\u3042\u0001", client, rect, grid_style),
                 "grid_unsupported_text");
  ExpectRejected(layout::Preview(
                     std::wstring(17, L'\u3042'), client,
                     layout::NormalizedRect{0.1, 0.1, 0.5, 0.05}, grid_style),
                 "grid_overflow_body_rect");
  ++cases;

  // A terminal line break changes only the logical cursor. The body need not
  // contain a future cell until a following source unit actually needs one.
  const layout::NormalizedRect tight_grid_rect{0.1, 0.1, 0.5, 0.05};
  const auto trailing_newline =
      layout::Preview(L"\u3042\r\n", client, tight_grid_rect, grid_style);
  assert(trailing_newline.ok());
  assert(trailing_newline.boxes.size() == 1);
  assert(trailing_newline.boxes.front().text_position == 0);
  ExpectRejected(layout::Preview(L"\u3042\n\n\u3044", client,
                                 tight_grid_rect, grid_style),
                 "grid_overflow_body_rect");
  ++cases;

  ExpectRejected(layout::Preview(L"", client, rect, style),
                 "empty_text_or_no_surface_rect");
  ExpectRejected(
      layout::Preview(std::wstring(32769, L'A'), client, rect, style),
      "source_text_too_large");
  ++cases;

  ExpectRejected(layout::Preview(text, {0, 600, 96}, rect, style),
                 "invalid_reference_client");
  ExpectRejected(layout::Preview(text, {16384, 16384, 96}, rect, style),
                 "invalid_reference_client");
  ExpectRejected(layout::Preview(text, {800, 600, -1}, rect, style),
                 "invalid_reference_client");
  ++cases;

  const double nan = std::numeric_limits<double>::quiet_NaN();
  ExpectRejected(layout::Preview(text, client, {nan, 0.1, 0.5, 0.5}, style),
                 "invalid_body_rect");
  ExpectRejected(layout::Preview(text, client, {0.8, 0.1, 0.5, 0.5}, style),
                 "invalid_body_rect");
  ++cases;

  layout::Layout invalid = style;
  invalid.font_size_per_client_height = nan;
  ExpectRejected(layout::Preview(text, client, rect, invalid),
                 "invalid_layout");
  invalid = style;
  invalid.text_align = "unknown";
  ExpectRejected(layout::Preview(text, client, rect, invalid),
                 "invalid_layout");
  invalid = style;
  invalid.font_family = std::wstring(257, L'x');
  ExpectRejected(layout::Preview(text, client, rect, invalid),
                 "invalid_layout");
  ++cases;

  // Overflow returns no partial geometry. Preview failures remain diagnostic,
  // never a truncated set of clickable characters.
  const auto overflow = layout::Preview(std::wstring(200, L'\u3042'), client,
                                        {0.1, 0.1, 0.2, 0.1}, style);
  assert(!overflow.ok() && overflow.boxes.empty());
  assert(overflow.reason == "metrics_overflow_body_rect" ||
         overflow.reason == "overhang_outside_body_rect" ||
         overflow.reason == "line_units_or_height_mismatch");
  ++cases;

  std::cout << "attached_text_layout: " << cases << " cases passed\n";
  return 0;
}
