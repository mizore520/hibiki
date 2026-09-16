#ifndef FUSHI_LITTLE_BUSTERS_LOOKUP_DIAGNOSTICS_H_
#define FUSHI_LITTLE_BUSTERS_LOOKUP_DIAGNOSTICS_H_

#include <cstddef>
#include <cstdint>
#include <cmath>

namespace fushi_voice_hook::little_busters {

// These are static locator facts only.  The packed-on-disk image is never
// used as a callable address; the runtime resolves base+rva in hydrated
// memory and validates the page/vtable before installing a bounded observer.
// The production exact-layout lookup path is independently gated by the live
// TextSlot occurrence, cText post-call records and shared provider admission.
constexpr uintptr_t kLittleBustersPreferredImageBase = 0x00400000u;

// Match the mature Siglus/Anemoi route: a Shift rising edge asks the current
// mouse position for a glyph, while holding Shift does not submit repeatedly.
inline bool ConsumeLittleBustersLookupShiftSample(uint16_t async_state,
                                                  bool* last_down) {
  if (last_down == nullptr) return false;
  const bool down = (async_state & 0x8000u) != 0u;
  const bool pressed_since_poll = (async_state & 0x0001u) != 0u;
  const bool rising_edge =
      (down && !*last_down) || (!down && pressed_since_poll);
  *last_down = down;
  return rising_edge;
}

enum LittleBustersLookupCandidateGroup : uint32_t {
  kLbCandidateText = 1u,
  kLbCandidateMessageWin = 2u,
  kLbCandidateRender = 3u,
  kLbCandidateDraw = 4u,
  kLbCandidateScreen = 5u,
  kLbCandidateScript = 6u,
  kLbCandidateDialog = 7u,
};

struct LittleBustersLookupCandidateSpec {
  const char* name;
  uint32_t group;
  uint32_t vtable_rva;
  uint32_t expected_slot;
  uint32_t target_rva;
};

// The input facts supplied by the static Luca investigation, normalized to
// module-relative RVAs.  expected_slot==UINT32_MAX means the slot is not known
// statically and must be discovered by the hydrated vtable scan.
inline constexpr LittleBustersLookupCandidateSpec
    kLittleBustersLookupCandidates[] = {
        {"Render0Node.slot2", kLbCandidateRender, 0x0039FF90u, 2u,
         0x000B2C90u},
        {"Draw0Node.slot2", kLbCandidateDraw, 0x0039FFA0u, 2u,
         0x000B2C80u},
        {"cText.slot0", kLbCandidateText, 0x003947A0u, 0u, 0x0007F130u},
        {"cText.slot3", kLbCandidateText, 0x003947A0u, 3u, 0x00074460u},
        {"cMessageWin.0", kLbCandidateMessageWin, 0x00395E98u,
         UINT32_MAX, 0x000A9020u},
        {"cMessageWin.1", kLbCandidateMessageWin, 0x00395E98u,
         UINT32_MAX, 0x000AA190u},
        {"cMessageWin.2", kLbCandidateMessageWin, 0x00395E98u,
         UINT32_MAX, 0x000AA350u},
        {"cMessageWin.3", kLbCandidateMessageWin, 0x00395E98u,
         UINT32_MAX, 0x000AA340u},
        {"cMessageWin.4", kLbCandidateMessageWin, 0x00395E98u,
         UINT32_MAX, 0x000AD4D0u},
        {"cMessageWin.5", kLbCandidateMessageWin, 0x00395E98u,
         UINT32_MAX, 0x000AD4A0u},
        {"cMessageWin.6", kLbCandidateMessageWin, 0x00395E98u,
         UINT32_MAX, 0x000AE1E0u},
        {"cMessageWin.7", kLbCandidateMessageWin, 0x00395E98u,
         UINT32_MAX, 0x000A9050u},
        {"cScreen.0", kLbCandidateScreen, 0x0039659Cu, UINT32_MAX,
         0x000B2C50u},
        {"cScreen.1", kLbCandidateScreen, 0x0039659Cu, UINT32_MAX,
         0x000B34D0u},
        {"cScreen.2", kLbCandidateScreen, 0x0039659Cu, UINT32_MAX,
         0x000B2CA0u},
        {"cScreen.3", kLbCandidateScreen, 0x0039659Cu, UINT32_MAX,
         0x000B3A70u},
        {"cScreen.4", kLbCandidateScreen, 0x0039659Cu, UINT32_MAX,
         0x000B54E0u},
        {"cScreen.5", kLbCandidateScreen, 0x0039659Cu, UINT32_MAX,
         0x000B5510u},
        {"cScript.0", kLbCandidateScript, 0x00396864u, UINT32_MAX,
         0x000B9CD0u},
        {"cScript.1", kLbCandidateScript, 0x00396864u, UINT32_MAX,
         0x000BB700u},
        {"cScript.2", kLbCandidateScript, 0x00396864u, UINT32_MAX,
         0x000B9D00u},
        {"cScript.3", kLbCandidateScript, 0x00396864u, UINT32_MAX,
         0x000BA740u},
        {"cScript.4", kLbCandidateScript, 0x00396864u, UINT32_MAX,
         0x000BA080u},
        {"cScript.5", kLbCandidateScript, 0x00396864u, UINT32_MAX,
         0x000BA4F0u},
        {"cScript.6", kLbCandidateScript, 0x00396864u, UINT32_MAX,
         0x000BB780u},
        {"cScript.7", kLbCandidateScript, 0x00396864u, UINT32_MAX,
         0x000BA180u},
        {"cScript.8", kLbCandidateScript, 0x00396864u, UINT32_MAX,
         0x000BC6F0u},
        {"cDialog.0", kLbCandidateDialog, 0x003951ECu, UINT32_MAX,
         0x00099FD0u},
        {"cDialog.1", kLbCandidateDialog, 0x003951ECu, UINT32_MAX,
         0x0009A2C0u},
        {"cDialog.2", kLbCandidateDialog, 0x003951ECu, UINT32_MAX,
         0x0009A000u},
        {"cDialog.3", kLbCandidateDialog, 0x003951ECu, UINT32_MAX,
         0x0009A360u},
        {"cDialog.4", kLbCandidateDialog, 0x003951ECu, UINT32_MAX,
         0x0009A090u},
        {"cDialog.5", kLbCandidateDialog, 0x003951ECu, UINT32_MAX,
         0x0009B3A0u},
    };

inline constexpr size_t kLittleBustersLookupCandidateCount =
    sizeof(kLittleBustersLookupCandidates) /
    sizeof(kLittleBustersLookupCandidates[0]);

// Concrete hydrated-process probes.  These are not disk VAs and are never
// called directly: the runtime resolves module_base+rva, validates the live
// executable page, and only then installs an observational detour.  Internal
// labels are intentionally marked so a failed detour is visible rather than
// silently being treated as an ordinary function miss.
enum LittleBustersConcreteProbeKind : uint32_t {
  kLbConcreteGeneric = 0u,
  kLbConcreteHitTest = 1u,
  kLbConcreteSelector = 2u,
  kLbConcreteScriptRequest = 3u,
  kLbConcreteObservationOnly = 4u,
  kLbConcreteParserHandoff = 5u,
  kLbConcreteLayoutDraw = 6u,
};

struct LittleBustersConcreteProbeSpec {
  const char* name;
  uint32_t probe_id;
  uint32_t rva;
  uint32_t kind;
  bool internal_label;
};

inline constexpr LittleBustersConcreteProbeSpec
    kLittleBustersConcreteProbes[] = {
        {"F24D30.parser", kLookupDiagnosticProbeP5Mapping, 0x00074D30u,
         kLbConcreteGeneric, false},
        {"F25630.item_record_handoff", kLookupDiagnosticProbeP4Layout,
         0x00075630u, kLbConcreteParserHandoff, false},
        {"F2D580.layout_rebuild", kLookupDiagnosticProbeP4Layout,
         0x0007D580u, kLbConcreteGeneric, false},
        {"F2F360.layout_record_draw", kLookupDiagnosticProbeP3Renderer,
         0x0007F360u, kLbConcreteLayoutDraw, false},
        {"EF5B00.draw_layer", kLookupDiagnosticProbeP3Renderer, 0x00045B00u,
         kLbConcreteGeneric, false},
        {"EFB3B0.render_quad", kLookupDiagnosticProbeP3Renderer, 0x0004B3B0u,
         kLbConcreteGeneric, false},
        {"F2D050.native_hit_test", kLookupDiagnosticProbeP3Renderer,
         0x0007D050u, kLbConcreteHitTest, false},
        {"F5A350.message_update", kLookupDiagnosticProbeP9Semantic,
         0x000AA350u, kLbConcreteGeneric, false},
        {"F5B9CC.semantic_selector7_callsite", kLookupDiagnosticProbeP9Semantic,
         0x000AB9CCu, kLbConcreteGeneric, true},
        {"EE4370.selector", kLookupDiagnosticProbeP9Semantic, 0x00034370u,
         kLbConcreteSelector, false},
        {"F70A50.script_request", kLookupDiagnosticProbeP9Semantic,
         0x000C0A50u, kLbConcreteScriptRequest, false},
        {"F6C6F0.script_lifecycle", kLookupDiagnosticProbeP9Semantic,
         0x000BC6F0u, kLbConcreteGeneric, false},
        {"F70A90.script_lifecycle_worker", kLookupDiagnosticProbeP9Semantic,
         0x000C0A90u, kLbConcreteGeneric, false},
        {"F9E930.private_input_dispatch", kLookupDiagnosticProbeP8Input,
         0x000EE930u, kLbConcreteGeneric, false},
        {"F9E952.private_left_down_label", kLookupDiagnosticProbeP8Input,
         0x000EE952u, kLbConcreteGeneric, true},
        {"F9E9C1.private_left_up_label", kLookupDiagnosticProbeP8Input,
         0x000EE9C1u, kLbConcreteGeneric, true},
        {"F9E2C0.cursor_poll", kLookupDiagnosticProbeP8Input, 0x000EE2C0u,
         kLbConcreteGeneric, false},
        {"F03600.engine_transform_x", kLookupDiagnosticProbeP6Transform,
         0x00053600u, kLbConcreteGeneric, false},
        {"F03F10.engine_transform_y", kLookupDiagnosticProbeP6Transform,
         0x00053F10u, kLbConcreteGeneric, false},
        {"F040C0.engine_transform_rect", kLookupDiagnosticProbeP6Transform,
         0x000540C0u, kLbConcreteGeneric, false},
        {"FB6950.wndproc_static", kLookupDiagnosticProbeP8Input,
          0x00106950u, kLbConcreteObservationOnly, false},
        {"FB6C70.display_init", kLookupDiagnosticProbeP6Transform,
         0x00106C70u, kLbConcreteGeneric, false},
};

inline constexpr size_t kLittleBustersConcreteProbeCount =
    sizeof(kLittleBustersConcreteProbes) /
    sizeof(kLittleBustersConcreteProbes[0]);

// The hydrated Luca code keeps the fixed logical design size in these two
// globals.  The first slot is the design height (720), the second is the
// design width (1280); the names make that reversed storage order explicit.
constexpr uint32_t kLittleBustersEngineDesignHeightGlobalRva = 0x00401CA4u;
constexpr uint32_t kLittleBustersEngineDesignWidthGlobalRva = 0x00401CA8u;
// Source-compatibility aliases for the old diagnostic names.  They are not
// scale factors: production geometry must use the design-size names above.
constexpr uint32_t kLittleBustersEngineScaleXGlobalRva =
    kLittleBustersEngineDesignHeightGlobalRva;
constexpr uint32_t kLittleBustersEngineScaleYGlobalRva =
    kLittleBustersEngineDesignWidthGlobalRva;
constexpr uint32_t kLittleBustersDisplayContextGlobalRva = 0x004BBFD0u;
constexpr uint32_t kLittleBustersWindowGlobalRva = 0x006F487Cu;
constexpr uint32_t kLittleBustersMouseXGlobalRva = 0x00B0ACC0u;
constexpr uint32_t kLittleBustersMouseYGlobalRva = 0x00B0ACC4u;
constexpr uint32_t kLittleBustersRenderCommandCountGlobalRva = 0x004BE054u;
constexpr uint32_t kLittleBustersRenderCommandBufferGlobalRva = 0x004BE05Cu;
constexpr uint32_t kLittleBustersDisplayInitRva = 0x00106C70u;
constexpr uint32_t kLittleBustersWndProcRva = 0x00106950u;
constexpr uint32_t kLittleBustersSemanticHitCallerRva = 0x000AB8C9u;
constexpr uint32_t kLittleBustersSemanticSelectorCallsiteRva = 0x000AB9CCu;
constexpr uint32_t kLittleBustersParserRva = 0x00074D30u;
constexpr uint32_t kLittleBustersParserHandoffRva = 0x00075630u;
constexpr uint32_t kLittleBustersInputPollerRva = 0x000EE2C0u;
// Return addresses around the single GetAsyncKeyState(VK_LBUTTON) call in
// the poller.  The small range covers the instruction's post-call address
// across the two hydrated callsite annotations used by the probes.
constexpr uint32_t kLittleBustersInputPollerCallsiteBeginRva = 0x000EE40Du;
constexpr uint32_t kLittleBustersInputPollerCallsiteEndRva = 0x000EE419u;

inline constexpr bool LittleBustersInputPollerReturnAddressRva(
    uint32_t rva) {
  return rva >= kLittleBustersInputPollerCallsiteBeginRva &&
         rva <= kLittleBustersInputPollerCallsiteEndRva;
}

constexpr uint32_t kLittleBustersCTextItemArrayOffset = 0x11Cu;
constexpr uint32_t kLittleBustersCTextLineCountOffset = 0x28u;
// The hydrated Luca cText item stores its active glyph count as a 16-bit
// field.  Reading the neighboring layout fields as one u32 produces values
// such as 0x01E00011 and silently rejects an otherwise complete line.
constexpr uint32_t kLittleBustersCTextItemCountOffset = 0x04u;
constexpr uint32_t kLittleBustersCTextItemRecordOffset = 0x48u;
constexpr uint32_t kLittleBustersCTextItemStride = 0x50u;
constexpr uint32_t kLittleBustersCTextRecordStride = 0x18u;
// cText records are glyph-run records, not four client-space corners.  +06
// is the run-local x, +0c/+12 are the glyph width/height, and +04 carries the
// UTF-16 code unit used to bind the native record to the exact TextSlot
// occurrence.  +08/+0a are renderer/atlas fields and must not be used for hit
// geometry (one of them legitimately contains an atlas coordinate).
constexpr uint32_t kLittleBustersCTextRecordCodepointOffset = 0x04u;
constexpr uint32_t kLittleBustersCTextRecordXOffset = 0x06u;
constexpr uint32_t kLittleBustersCTextRecordWidthOffset = 0x0Cu;
constexpr uint32_t kLittleBustersCTextRecordHeightOffset = 0x12u;
// The cText object owns the outer dialogue rectangle in the game's logical
// 1280x720 design domain.  These fields are the engine's live layout origin
// and bounds; they are not inferred from a screenshot.
constexpr uint32_t kLittleBustersCTextLayoutOriginXOffset = 0x298u;
constexpr uint32_t kLittleBustersCTextLayoutOriginYOffset = 0x29Cu;
constexpr uint32_t kLittleBustersCTextLayoutWidthOffset = 0x2A0u;
constexpr uint32_t kLittleBustersCTextLayoutHeightOffset = 0x2A4u;
// The active item owns the run-local design-space origin.  Luca's hydrated
// cText layout writes the base design y at +10.  In the observed wrapped-dialogue
// layout, +14 carries the integer y offset for the item/run (zero for the
// first run, e.g. 43 for the second run), rather than a second corner or a
// screenshot-derived transform.
constexpr uint32_t kLittleBustersCTextItemOriginYOffset = 0x10u;
constexpr uint32_t kLittleBustersCTextItemLineOffsetYOffset = 0x14u;
// Compatibility name retained for diagnostic callers written against the
// first single-run interpretation of this structure.
constexpr uint32_t kLittleBustersCTextItemOriginXOffset =
    kLittleBustersCTextItemLineOffsetYOffset;
// system.cnf and the live cText layout use a 1280x720 logical design domain.
// These values are also the safe fallback if the hydrated dimension globals
// are temporarily unreadable during startup.
constexpr int32_t kLittleBustersConfiguredClientWidth = 1280;
constexpr int32_t kLittleBustersConfiguredClientHeight = 720;

// Little Busters renders its logical 1280x720 canvas into the current client
// rectangle with an aspect-fit transform.  Keeping this projection pure makes
// the exact mapping testable without a live process and keeps both the native
// hit test and the host's direct-card placement in the same client-pixel
// domain.
struct LittleBustersLookupProjection {
  double scale = 0.0;
  double offset_x = 0.0;
  double offset_y = 0.0;
  int32_t client_w = 0;
  int32_t client_h = 0;
  uint32_t design_w = 0;
  uint32_t design_h = 0;
};

inline bool MakeLittleBustersLookupProjection(
    int32_t client_w, int32_t client_h, uint32_t design_w,
    uint32_t design_h, LittleBustersLookupProjection* out) {
  if (out == nullptr || client_w <= 0 || client_h <= 0 || design_w == 0u ||
      design_h == 0u) {
    return false;
  }
  const double scale_x = static_cast<double>(client_w) /
                         static_cast<double>(design_w);
  const double scale_y = static_cast<double>(client_h) /
                         static_cast<double>(design_h);
  const double scale = scale_x < scale_y ? scale_x : scale_y;
  const double offset_x =
      (static_cast<double>(client_w) - static_cast<double>(design_w) * scale) /
      2.0;
  const double offset_y =
      (static_cast<double>(client_h) - static_cast<double>(design_h) * scale) /
      2.0;
  if (!std::isfinite(scale) || !std::isfinite(offset_x) ||
      !std::isfinite(offset_y) || scale <= 0.0 || offset_x < 0.0 ||
      offset_y < 0.0) {
    return false;
  }
  out->scale = scale;
  out->offset_x = offset_x;
  out->offset_y = offset_y;
  out->client_w = client_w;
  out->client_h = client_h;
  out->design_w = design_w;
  out->design_h = design_h;
  return true;
}

inline bool ProjectLittleBustersLogicalRectToClient(
    double logical_x, double logical_y, int32_t logical_w, int32_t logical_h,
    const LittleBustersLookupProjection& projection, int32_t* out_x,
    int32_t* out_y, int32_t* out_w, int32_t* out_h) {
  if (out_x == nullptr || out_y == nullptr || out_w == nullptr ||
      out_h == nullptr || logical_w <= 0 || logical_h <= 0 ||
      projection.scale <= 0.0 || projection.client_w <= 0 ||
      projection.client_h <= 0 || !std::isfinite(logical_x) ||
      !std::isfinite(logical_y)) {
    return false;
  }
  const double left = projection.offset_x + logical_x * projection.scale;
  const double top = projection.offset_y + logical_y * projection.scale;
  const double right = projection.offset_x +
                       (logical_x + static_cast<double>(logical_w)) *
                           projection.scale;
  const double bottom = projection.offset_y +
                        (logical_y + static_cast<double>(logical_h)) *
                            projection.scale;
  if (!std::isfinite(left) || !std::isfinite(top) || !std::isfinite(right) ||
      !std::isfinite(bottom)) {
    return false;
  }
  const int64_t rounded_left = static_cast<int64_t>(std::lround(left));
  const int64_t rounded_top = static_cast<int64_t>(std::lround(top));
  const int64_t rounded_right = static_cast<int64_t>(std::lround(right));
  const int64_t rounded_bottom = static_cast<int64_t>(std::lround(bottom));
  if (rounded_left < 0 || rounded_top < 0 || rounded_right <= rounded_left ||
      rounded_bottom <= rounded_top ||
      rounded_right > static_cast<int64_t>(projection.client_w) ||
      rounded_bottom > static_cast<int64_t>(projection.client_h) ||
      rounded_right > 0x7fffffffLL || rounded_bottom > 0x7fffffffLL) {
    return false;
  }
  *out_x = static_cast<int32_t>(rounded_left);
  *out_y = static_cast<int32_t>(rounded_top);
  *out_w = static_cast<int32_t>(rounded_right - rounded_left);
  *out_h = static_cast<int32_t>(rounded_bottom - rounded_top);
  return true;
}
// Retained as source-compatibility aliases for the old diagnostic decoder;
// production code must use the named run/origin fields above.
constexpr uint32_t kLittleBustersCTextRecordX0Offset =
    kLittleBustersCTextRecordXOffset;
constexpr uint32_t kLittleBustersCTextRecordY0Offset = 0x08u;
constexpr uint32_t kLittleBustersCTextRecordX1Offset =
    kLittleBustersCTextRecordWidthOffset;
constexpr uint32_t kLittleBustersCTextRecordY1Offset =
    kLittleBustersCTextRecordHeightOffset;
constexpr uint32_t kLittleBustersCTextRecordOpaqueKeyOffset = 0x0Eu;
constexpr uint32_t kLittleBustersCTextRecordFlagsOffset = 0x13u;
constexpr uint32_t kLittleBustersCTextRecordActiveOffset = 0x17u;
// F03600/F03F10/F040C0 use these as scalar display-context divisors.  They
// are not pointer-bearing layer/viewport objects; the diagnostic adapter must
// retain them as raw engine state and must not promote them to a transform.
constexpr uint32_t kLittleBustersDisplayContextDivisorXOffset = 0x9A4u;
constexpr uint32_t kLittleBustersDisplayContextDivisorYOffset = 0x9A8u;
constexpr uint32_t kLittleBustersResourceOriginOffset = 0x440u;
constexpr uint32_t kLittleBustersResourceScaleOffset = 0x44Cu;
constexpr uint32_t kLittleBustersResourceRectOffset = 0x450u;
// F03F10 writes the derived resource/layer pair here.  The values are
// captured as raw evidence only; they are not promoted to client pixels.
constexpr uint32_t kLittleBustersResourceComputedXOffset = 0x470u;
constexpr uint32_t kLittleBustersResourceComputedYOffset = 0x474u;
constexpr uint32_t kLittleBustersRenderCommandStride = 0x60u;
constexpr uint32_t kLittleBustersRenderCommandCountStep = 4u;

inline constexpr bool LittleBustersRenderCommandCountAligned(
    uint32_t count) {
  return (count % kLittleBustersRenderCommandCountStep) == 0u;
}

inline constexpr uint32_t LittleBustersRenderCommandOrdinalFromCount(
    uint32_t count) {
  return count / kLittleBustersRenderCommandCountStep;
}

// The shared ring is intentionally small.  These constants are also used by
// the adapter's pure throttle decision so a steady render loop cannot turn a
// diagnostic session into an unbounded stream of indistinguishable events.
constexpr uint64_t kLittleBustersDiagnosticSteadyStateIntervalMs = 1000u;
constexpr uint64_t kLittleBustersDiagnosticClickTraceWindowMs = 5000u;
constexpr uint32_t kLittleBustersDiagnosticClickTraceBudget = 32u;
constexpr uint32_t kLittleBustersDiagnosticSteadyStateEventBudget = 16u;
constexpr uint32_t kLittleBustersDiagnosticRenderSnapshotBudget = 1u;

inline constexpr bool LittleBustersDiagnosticSteadyStateBudgetAllows(
    uint32_t emitted) {
  return emitted < kLittleBustersDiagnosticSteadyStateEventBudget;
}

inline constexpr bool LittleBustersDiagnosticRenderSnapshotAllowed(
    uint32_t snapshot_number) {
  return snapshot_number < kLittleBustersDiagnosticRenderSnapshotBudget;
}

inline constexpr bool LittleBustersDiagnosticThrottleAllows(
    bool high_frequency, bool edge, bool click_window, uint64_t now,
    uint64_t last_emit, uint64_t signature, uint64_t previous_signature,
    uint32_t click_emitted) {
  if (!high_frequency || edge) return true;
  if (click_window && click_emitted >= kLittleBustersDiagnosticClickTraceBudget) {
    return false;
  }
  if (signature != previous_signature) return true;
  if (last_emit == 0u || now < last_emit ||
      now - last_emit >= kLittleBustersDiagnosticSteadyStateIntervalMs) {
    return true;
  }
  // Always retain the first high-frequency snapshot after a physical edge;
  // later same-state samples are covered by the interval and budget above.
  return click_window && click_emitted == 0u;
}

inline constexpr uint32_t LittleBustersVtableRvaFromMinusOneVa(
    uintptr_t vtable_minus_one_va) {
  return static_cast<uint32_t>(vtable_minus_one_va + sizeof(uint32_t) -
                               kLittleBustersPreferredImageBase);
}

struct LittleBustersUtf16MapInspection {
  uint32_t char_count = 0;
  bool utf16_valid = false;
  bool source_span_valid = false;
  bool surrogate_split = false;
  bool markup_unknown = false;
};

inline constexpr bool IsLittleBustersHighSurrogate(uint16_t value) {
  return value >= 0xd800u && value <= 0xdbffu;
}

inline constexpr bool IsLittleBustersLowSurrogate(uint16_t value) {
  return value >= 0xdc00u && value <= 0xdfffu;
}

// A production hit may only name a complete UTF-16 source cluster.  This
// helper understands surrogate pairs, ordinary spaces, and punctuation.  It
// deliberately labels C0/control material as markup_unknown instead of
// inventing a ruby/glossary/control-code mapping.
inline LittleBustersUtf16MapInspection InspectLittleBustersUtf16Span(
    const uint16_t* text, uint32_t char_count, uint32_t source_start,
    uint32_t source_length) {
  LittleBustersUtf16MapInspection result;
  result.char_count = char_count;
  if (text == nullptr || char_count == 0u) return result;
  for (uint32_t index = 0u; index < char_count; ++index) {
    const uint16_t value = text[index];
    if (value < 0x20u && value != 0x09u && value != 0x20u) {
      result.markup_unknown = true;
    }
    if (IsLittleBustersHighSurrogate(value)) {
      if (index + 1u >= char_count ||
          !IsLittleBustersLowSurrogate(text[index + 1u])) {
        result.surrogate_split = true;
        return result;
      }
      ++index;
    } else if (IsLittleBustersLowSurrogate(value)) {
      result.surrogate_split = true;
      return result;
    }
  }
  result.utf16_valid = true;
  if (source_start >= char_count || source_length == 0u ||
      source_start + source_length > char_count) {
    return result;
  }
  const uint16_t first = text[source_start];
  if (IsLittleBustersHighSurrogate(first)) {
    result.source_span_valid = source_length == 2u &&
                              source_start + 1u < char_count &&
                              IsLittleBustersLowSurrogate(
                                  text[source_start + 1u]);
  } else {
    result.source_span_valid = source_length == 1u &&
                               !IsLittleBustersLowSurrogate(first);
  }
  if (source_start > 0u && IsLittleBustersLowSurrogate(text[source_start])) {
    result.surrogate_split = true;
    result.source_span_valid = false;
  }
  return result;
}

enum LittleBustersLookupDownOwner : uint32_t {
  kLbDownOwnerPass = 0u,
  kLbDownOwnerNative = 1u,
  kLbDownOwnerAttached = 2u,
  kLbDownOwnerPopup = 3u,
  kLbDownOwnerDismiss = 4u,
};

// Shared production ownership reducer.  Until all three proof gates are true,
// a physical down is passed to the game.  Once a provider or popup owns the
// down, the matching up/tail remains part of that same transaction.
inline constexpr LittleBustersLookupDownOwner DecideLittleBustersDownOwner(
    bool popup_owns, bool outside_dismiss, bool geometry_proven,
    bool admission_proven, bool shield_ready, bool glyph_hit) {
  if (popup_owns) return kLbDownOwnerPopup;
  if (outside_dismiss && admission_proven && shield_ready) {
    return kLbDownOwnerDismiss;
  }
  if (geometry_proven && admission_proven && shield_ready && glyph_hit) {
    return kLbDownOwnerNative;
  }
  return kLbDownOwnerPass;
}

inline constexpr bool LittleBustersOwnsMatchingUp(
    LittleBustersLookupDownOwner owner, bool down_owned) {
  return down_owned && owner != kLbDownOwnerPass;
}

}  // namespace fushi_voice_hook::little_busters

#endif  // FUSHI_LITTLE_BUSTERS_LOOKUP_DIAGNOSTICS_H_
