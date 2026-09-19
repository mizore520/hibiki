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
    assert(actual.hit_rect.left == expected.hit_rect.left + offset_x);
    assert(actual.hit_rect.right == expected.hit_rect.right + offset_x);
    assert(actual.hit_rect.top == expected.hit_rect.top + offset_y);
    assert(actual.hit_rect.bottom == expected.hit_rect.bottom + offset_y);
    assert(actual.visual_rect.left == expected.visual_rect.left + offset_x);
    assert(actual.visual_rect.right == expected.visual_rect.right + offset_x);
    assert(actual.visual_rect.top == expected.visual_rect.top + offset_y);
    assert(actual.visual_rect.bottom == expected.visual_rect.bottom + offset_y);
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
      assert(box.hit_rect.top > unicode.boxes.front().hit_rect.top);
      found_second_line = true;
    }
  }
  assert(found_pair && found_second_line);
  ++cases;

  const auto wrapped =
      layout::Preview(std::wstring(36, L'\u3042'), client,
                      layout::NormalizedRect{0.1, 0.1, 0.35, 0.8}, style);
  assert(wrapped.ok());
  assert(wrapped.boxes.back().hit_rect.top >
         wrapped.boxes.front().hit_rect.top);
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
    const auto &a = small_result.boxes[index].hit_rect;
    const auto &b = large_result.boxes[index].hit_rect;
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
  const std::wstring full_line(16, L'\u3042');
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
      assert(box.hit_rect.left == body.left + 36);
      assert(box.hit_rect.top == body.top + 24);
      found_quoted_continuation = true;
    }
  }
  assert(!found_space && found_quoted_continuation);
  ++cases;

  // Per-character advances change the actual horizontal cell width and the
  // following cursor, while every row keeps the calibrated cell height.
  layout::Layout narrow_style = grid_style;
  narrow_style.character_advances.push_back(
      layout::CharacterAdvance{0x3002, 0.5});
  const auto narrow =
      layout::Preview(L"あ。い", client, rect, narrow_style);
  assert(narrow.ok() && narrow.boxes.size() == 3);
  assert(narrow.boxes[1].hit_rect.left == body.left + 18);
  assert(narrow.boxes[1].hit_rect.right == body.left + 27);
  assert(narrow.boxes[2].hit_rect.left == body.left + 27);
  assert(narrow.boxes[2].hit_rect.right == body.left + 45);
  for (const auto &box : narrow.boxes) {
    assert(box.hit_rect.bottom - box.hit_rect.top == 21);
    assert(EqualRect(&box.hit_rect, &box.visual_rect));
  }
  ++cases;

  layout::Layout wide_style = grid_style;
  wide_style.cell_grid->line_width_in_cells = 2.0;
  wide_style.cell_grid->continuation_indent = 0;
  wide_style.cell_grid->quoted_continuation_indent = 0;
  wide_style.character_advances.push_back(
      layout::CharacterAdvance{L'あ', 1.5});
  const auto wide =
      layout::Preview(L"ああ", client, rect, wide_style);
  assert(wide.ok() && wide.boxes.size() == 2);
  assert(wide.boxes[0].hit_rect.left == body.left);
  assert(wide.boxes[0].hit_rect.right == body.left + 27);
  assert(wide.boxes[1].hit_rect.left == body.left);
  assert(wide.boxes[1].hit_rect.top == body.top + 24);
  ++cases;

  // A fractional line width is the actual capacity. Three characters whose
  // ratios total 2.5 cells remain on one line; the legacy default capacity of
  // two cells wraps the third character.
  layout::Layout fractional_capacity = grid_style;
  fractional_capacity.cell_grid->columns = 4;
  fractional_capacity.cell_grid->line_width_in_cells = 2.5;
  fractional_capacity.character_advances = {
      layout::CharacterAdvance{L'あ', 0.75},
      layout::CharacterAdvance{L'い', 1.0},
      layout::CharacterAdvance{L'う', 0.75},
  };
  const auto fractional = layout::Preview(
      L"あいう", client, rect, fractional_capacity);
  assert(fractional.ok() && fractional.boxes.size() == 3);
  assert(fractional.boxes[2].hit_rect.top == body.top);
  assert(fractional.boxes[2].hit_rect.left == body.left + 32);
  layout::Layout integer_capacity = fractional_capacity;
  integer_capacity.cell_grid->line_width_in_cells = 2.0;
  const auto integer = layout::Preview(L"あいう", client, rect,
                                       integer_capacity);
  assert(integer.ok() && integer.boxes[2].hit_rect.top == body.top + 24);
  ++cases;

  // Hanging punctuation is decided from accumulated actual width. A narrow
  // terminal punctuation can hang after a full line, and the next character
  // starts at the configured continuation indent.
  layout::Layout narrow_hanging = grid_style;
  narrow_hanging.character_advances.push_back(
      layout::CharacterAdvance{0x3002, 0.5});
  narrow_hanging.cell_grid->hanging_punctuation = true;
  const auto narrow_hang = layout::Preview(full_line + L"。A", client, rect,
                                            narrow_hanging);
  assert(narrow_hang.ok() && narrow_hang.boxes.size() == 18);
  assert(narrow_hang.boxes[16].hit_rect.left == body.left + 16 * 18);
  assert(narrow_hang.boxes[16].hit_rect.right == body.left + 16 * 18 + 9);
  assert(narrow_hang.boxes[16].hit_rect.top == body.top);
  assert(narrow_hang.boxes[17].hit_rect.left == body.left + 18);
  assert(narrow_hang.boxes[17].hit_rect.top == body.top + 24);
  layout::Layout partial_hanging = grid_style;
  partial_hanging.cell_grid->hanging_punctuation = true;
  partial_hanging.cell_grid->line_width_in_cells = 2.0;
  partial_hanging.character_advances.push_back(
      layout::CharacterAdvance{L'A', 0.75});
  const auto partial = layout::Preview(L"AA。", client, rect,
                                       partial_hanging);
  assert(partial.ok() && partial.boxes.size() == 3);
  assert(partial.boxes[2].hit_rect.top == body.top + 24);
  ++cases;

  // Continuation indentation still uses the legacy default-cell basis, while
  // subsequent characters advance by their actual ratios.
  layout::Layout indented = grid_style;
  indented.character_advances.push_back(
      layout::CharacterAdvance{L'A', 0.5});
  const auto indented_result =
      layout::Preview(full_line + L"AB", client, rect, indented);
  assert(indented_result.ok() && indented_result.boxes.size() == 18);
  assert(indented_result.boxes[16].hit_rect.left == body.left + 18);
  assert(indented_result.boxes[16].hit_rect.right == body.left + 27);
  assert(indented_result.boxes[17].hit_rect.left == body.left + 27);
  assert(indented_result.boxes[17].hit_rect.top == body.top + 24);
  ++cases;

  // Whitespace remains non-clickable but consumes one default cell, and a
  // supplementary code point keeps its two UTF-16 code units.
  const auto spaced = layout::Preview(L"A B", client, rect, narrow_style);
  assert(spaced.ok() && spaced.boxes.size() == 2);
  assert(spaced.boxes[1].text_position == 2);
  assert(spaced.boxes[1].hit_rect.left == body.left + 36);
  const auto spaced_tab = layout::Preview(L"A\tB", client, rect, narrow_style);
  assert(spaced_tab.ok() && spaced_tab.boxes.size() == 2);
  assert(spaced_tab.boxes[1].hit_rect.left == body.left + 36);
  const auto advanced_emoji =
      layout::Preview(L"A\U0001F600B", client, rect, narrow_style);
  assert(advanced_emoji.ok() && advanced_emoji.boxes.size() == 3);
  assert(advanced_emoji.boxes[1].text_position == 1);
  assert(advanced_emoji.boxes[1].text_length == 2);
  ++cases;

  // Native validation mirrors the MethodChannel limits: scalar, printable,
  // non-whitespace code points; unique entries; and bounded finite ratios.
  assert(layout::IsCharacterAdvanceValid(
      layout::CharacterAdvance{0x10FFFF, 0.15}));
  assert(layout::IsCharacterAdvanceValid(
      layout::CharacterAdvance{0x3002, 2.0}));
  assert(!layout::IsCharacterAdvanceValid(
      layout::CharacterAdvance{0x1F, 1.0}));
  assert(!layout::IsCharacterAdvanceValid(
      layout::CharacterAdvance{0x200B, 1.0}));
  assert(!layout::IsCharacterAdvanceValid(
      layout::CharacterAdvance{L' ', 1.0}));
  assert(!layout::IsCharacterAdvanceValid(
      layout::CharacterAdvance{0xD800, 1.0}));
  assert(!layout::IsCharacterAdvanceValid(
      layout::CharacterAdvance{0x110000, 1.0}));
  assert(!layout::IsCharacterAdvanceValid(
      layout::CharacterAdvance{L'A', 0.149}));
  assert(!layout::IsCharacterAdvanceValid(
      layout::CharacterAdvance{L'A', 2.001}));
  assert(!layout::IsCharacterAdvanceValid(
      layout::CharacterAdvance{L'A', std::numeric_limits<double>::quiet_NaN()}));
  assert(!layout::IsCharacterAdvanceValid(
      layout::CharacterAdvance{L'A', std::numeric_limits<double>::infinity()}));
  layout::Layout duplicate_advance = grid_style;
  duplicate_advance.character_advances = {
      layout::CharacterAdvance{L'A', 0.5},
      layout::CharacterAdvance{L'A', 1.5},
  };
  assert(!layout::IsCharacterAdvancesListValid(duplicate_advance));
  layout::Layout too_many_advances = grid_style;
  too_many_advances.character_advances.resize(65,
                                               layout::CharacterAdvance{L'A', 1.0});
  assert(!layout::IsCharacterAdvancesListValid(too_many_advances));
  layout::CellGrid invalid_line_width = grid;
  invalid_line_width.line_width_in_cells = 1.99;
  assert(!layout::IsCellGridValid(invalid_line_width));
  invalid_line_width.line_width_in_cells = 128.01;
  assert(!layout::IsCellGridValid(invalid_line_width));
  ++cases;

  // Legacy punctuation visual bounds remain readable but never alter the
  // actual hit/visual cell or the following character position.
  layout::Layout punctuation_style = grid_style;
  punctuation_style.punctuation_visual_bounds.push_back(
      layout::PunctuationVisualBounds{0x3002, 0.35, 0.55, 0.65, 0.95});
  const auto punctuation =
      layout::Preview(L"あ。い", client, rect, punctuation_style);
  const auto punctuation_legacy =
      layout::Preview(L"あ。い", client, rect, grid_style);
  assert(punctuation.ok() && punctuation_legacy.ok());
  assert(punctuation.boxes.size() == 3 && punctuation_legacy.boxes.size() == 3);
  assert(EqualRect(&punctuation.boxes[1].hit_rect,
                   &punctuation_legacy.boxes[1].hit_rect));
  assert(EqualRect(&punctuation.boxes[1].visual_rect,
                   &punctuation.boxes[1].hit_rect));
  assert(EqualRect(&punctuation.boxes[2].hit_rect,
                   &punctuation_legacy.boxes[2].hit_rect));
  assert(EqualRect(&punctuation.boxes[2].visual_rect,
                   &punctuation.boxes[2].hit_rect));
  ++cases;

  layout::Layout duplicate_visual = punctuation_style;
  duplicate_visual.punctuation_visual_bounds.push_back(
      layout::PunctuationVisualBounds{0x3002, 0.2, 0.2, 0.8, 0.8});
  ExpectRejected(layout::Preview(L"あ。", client, rect, duplicate_visual),
                 "invalid_layout");
  ++cases;

  layout::Layout letter_visual = grid_style;
  letter_visual.punctuation_visual_bounds.push_back(
      layout::PunctuationVisualBounds{L'A', 0.2, 0.2, 0.8, 0.8});
  ExpectRejected(layout::Preview(L"あA", client, rect, letter_visual),
                 "invalid_layout");
  ++cases;

  // Supplementary-plane symbols remain ordinary full cells; only BMP
  // punctuation/symbols may carry a visual override.
  assert(!layout::IsPunctuationOrSymbolCodePoint(0x1F4A9));
  assert(!layout::IsPunctuationOrSymbolCodePoint(0xD800));
  layout::Layout supplementary_symbol = grid_style;
  supplementary_symbol.punctuation_visual_bounds.push_back(
      layout::PunctuationVisualBounds{0x1F4A9, 0.2, 0.2, 0.8, 0.8});
  ExpectRejected(layout::Preview(L"A", client, rect, supplementary_symbol),
                 "invalid_layout");
  ++cases;

  const auto grid_wrapped = layout::Preview(
      std::wstring(17, L'\u3042'), client, rect, grid_style);
  assert(grid_wrapped.ok());
  assert(grid_wrapped.boxes.back().text_position == 16);
  assert(grid_wrapped.boxes.back().hit_rect.left == body.left + 18);
  assert(grid_wrapped.boxes.back().hit_rect.top == body.top + 24);
  ++cases;

  // A disabled grid keeps the legacy wrap point. Enabling hanging punctuation
  // adds exactly one body cell for the terminal punctuation, then normal text
  // starts on the continuation row.
  const auto disabled_wrap =
      layout::Preview(full_line + L"。A", client, rect, grid_style);
  assert(disabled_wrap.ok() && disabled_wrap.boxes.size() == 18);
  assert(disabled_wrap.boxes[16].text_position == 16);
  assert(disabled_wrap.boxes[16].hit_rect.top >
         disabled_wrap.boxes[15].hit_rect.top);

  layout::Layout hanging_style = grid_style;
  hanging_style.cell_grid->hanging_punctuation = true;
  assert(*grid_style.cell_grid != *hanging_style.cell_grid);
  const auto hanging =
      layout::Preview(full_line + L"。A", client, rect, hanging_style);
  assert(hanging.ok() && hanging.boxes.size() == 18);
  assert(hanging.boxes[16].text_position == 16);
  assert(hanging.boxes[16].hit_rect.left == body.left + 16 * 18);
  assert(hanging.boxes[16].hit_rect.top == body.top);
  assert(hanging.boxes[17].text_position == 17);
  assert(hanging.boxes[17].hit_rect.left == body.left + 18);
  assert(hanging.boxes[17].hit_rect.top == body.top + 24);

  // Only one punctuation may hang. A second punctuation and the following
  // ordinary character both remain in the normal continuation row.
  const auto one_hang = layout::Preview(full_line + L"。。A", client, rect,
                                        hanging_style);
  assert(one_hang.ok() && one_hang.boxes.size() == 19);
  assert(one_hang.boxes[16].hit_rect.top == body.top);
  assert(one_hang.boxes[17].hit_rect.top == body.top + 24);
  assert(one_hang.boxes[18].hit_rect.top == body.top + 24);
  assert(one_hang.boxes[18].hit_rect.left == body.left + 36);
  ++cases;

  const auto small_kana = layout::Preview(full_line + L"ょあ", client, rect,
                                          hanging_style);
  assert(small_kana.ok() && small_kana.boxes.size() == 18);
  assert(small_kana.boxes[16].hit_rect.top == body.top);
  assert(small_kana.boxes[17].hit_rect.top == body.top + 24);
  const auto normal_kana = layout::Preview(full_line + L"よ", client, rect,
                                           hanging_style);
  assert(normal_kana.ok());
  assert(normal_kana.boxes[16].hit_rect.top == body.top + 24);
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
      assert(box.hit_rect.top == body.top + 24);
      found_emoji = true;
    }
    if (box.text_position == 21) {
      assert(box.hit_rect.top == body.top + 24);
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
