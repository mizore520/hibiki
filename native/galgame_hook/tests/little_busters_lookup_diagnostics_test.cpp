// Keep assertions live under Release test configurations.
#undef NDEBUG

#include <cassert>
#include <cstdint>
#include <memory>
#include <string>

#include "voice_hook_ipc.h"
#include "little_busters_lookup_diagnostics.h"

namespace {

void TestReasonTokensAndCandidateRva() {
  assert(std::string(fushi_voice_hook::LookupDiagnosticReasonToken(
             fushi_voice_hook::kLbIdMismatch)) == "LB_ID_MISMATCH");
  assert(std::string(fushi_voice_hook::LookupDiagnosticReasonToken(0xffffu)) ==
         "LB_REASON_UNKNOWN");
  assert(fushi_voice_hook::little_busters::LittleBustersVtableRvaFromMinusOneVa(
             0x0079ff8cu) == 0x0039ff90u);
  assert(fushi_voice_hook::kLookupDiagnosticEventCount == 128u);
  assert(sizeof(fushi_voice_hook::LookupDiagnosticEvent) == 272u);
  assert(std::string(fushi_voice_hook::LookupDiagnosticReasonToken(
             fushi_voice_hook::kLbParserHandoffRecord)) ==
         "LB_PARSER_HANDOFF_RECORD");
  assert(std::string(fushi_voice_hook::LookupDiagnosticReasonToken(
             fushi_voice_hook::kLbXformViewportMissing)) ==
         "LB_XFORM_VIEWPORT_MISSING");
  assert(std::string(fushi_voice_hook::LookupDiagnosticReasonToken(
             fushi_voice_hook::kLbMapAnnotationObserved)) ==
         "LB_MAP_ANNOTATION_OBSERVED");
  assert(std::string(fushi_voice_hook::LookupDiagnosticReasonToken(
             fushi_voice_hook::kLbParserOccurrenceSourceMismatch)) ==
         "LB_PARSER_OCCURRENCE_SOURCE_MISMATCH");
  assert(std::string(fushi_voice_hook::LookupDiagnosticReasonToken(
             fushi_voice_hook::kLbXformViewportUnproven)) ==
         "LB_XFORM_VIEWPORT_UNPROVEN");
  assert(std::string(fushi_voice_hook::LookupDiagnosticReasonToken(
             fushi_voice_hook::kLbXformRenderTargetMissing)) ==
         "LB_XFORM_RENDER_TARGET_MISSING");
  assert(std::string(fushi_voice_hook::LookupDiagnosticReasonToken(
             fushi_voice_hook::kLbProducerHandoffObserverMissed)) ==
         "LB_PRODUCER_HANDOFF_OBSERVER_MISSED");
  assert(std::string(fushi_voice_hook::LookupDiagnosticReasonToken(
             fushi_voice_hook::kLbRecordSourceSpanUnproven)) ==
         "LB_RECORD_SOURCE_SPAN_UNPROVEN");
  assert(std::string(fushi_voice_hook::LookupDiagnosticReasonToken(
             fushi_voice_hook::kLbRenderCommandRaw)) ==
         "LB_RENDER_COMMAND_RAW");
  assert(std::string(fushi_voice_hook::LookupDiagnosticReasonToken(
             fushi_voice_hook::kLbXformProjectionUnobserved)) ==
         "LB_XFORM_PROJECTION_UNOBSERVED");
  assert(std::string(fushi_voice_hook::LookupDiagnosticReasonToken(
             fushi_voice_hook::kLbWndprocSubclassActive)) ==
         "LB_WNDPROC_SUBCLASS_ACTIVE");
  assert(std::string(fushi_voice_hook::LookupDiagnosticReasonToken(
             fushi_voice_hook::kLbProducerHandoffNotObserved)) ==
         "LB_PRODUCER_HANDOFF_NOT_OBSERVED");
  assert(fushi_voice_hook::little_busters::
             LittleBustersRenderCommandCountAligned(0u));
  assert(fushi_voice_hook::little_busters::
             LittleBustersRenderCommandCountAligned(8u));
  assert(!fushi_voice_hook::little_busters::
              LittleBustersRenderCommandCountAligned(6u));
  assert(fushi_voice_hook::little_busters::
             LittleBustersRenderCommandOrdinalFromCount(12u) == 3u);
}

void TestUtf16MappingBoundaries() {
  const uint16_t ordinary[] = {0x65e5u, 0x672cu, 0x0020u, 0x3002u};
  auto inspection = fushi_voice_hook::little_busters::InspectLittleBustersUtf16Span(
      ordinary, 4u, 1u, 1u);
  assert(inspection.utf16_valid && inspection.source_span_valid);
  assert(!inspection.markup_unknown && !inspection.surrogate_split);

  const uint16_t supplementary[] = {0xd83du, 0xde00u, 0x3002u};
  inspection = fushi_voice_hook::little_busters::InspectLittleBustersUtf16Span(
      supplementary, 3u, 0u, 2u);
  assert(inspection.utf16_valid && inspection.source_span_valid);
  inspection = fushi_voice_hook::little_busters::InspectLittleBustersUtf16Span(
      supplementary, 3u, 1u, 1u);
  assert(inspection.utf16_valid && inspection.surrogate_split &&
         !inspection.source_span_valid);

  const uint16_t malformed[] = {0x65e5u, 0xd83du};
  inspection = fushi_voice_hook::little_busters::InspectLittleBustersUtf16Span(
      malformed, 2u, 0u, 1u);
  assert(!inspection.utf16_valid && inspection.surrogate_split);

  const uint16_t markup[] = {0x65e5u, 0x0001u, 0x672cu};
  inspection = fushi_voice_hook::little_busters::InspectLittleBustersUtf16Span(
      markup, 3u, 2u, 1u);
  assert(inspection.utf16_valid && inspection.source_span_valid &&
         inspection.markup_unknown);
  inspection = fushi_voice_hook::little_busters::InspectLittleBustersUtf16Span(
      ordinary, 4u, 4u, 1u);
  assert(inspection.utf16_valid && !inspection.source_span_valid);
}

void TestOwnershipReducerFailsOpen() {
  using fushi_voice_hook::little_busters::DecideLittleBustersDownOwner;
  using fushi_voice_hook::little_busters::kLbDownOwnerDismiss;
  using fushi_voice_hook::little_busters::kLbDownOwnerNative;
  using fushi_voice_hook::little_busters::kLbDownOwnerPass;
  using fushi_voice_hook::little_busters::kLbDownOwnerPopup;
  using fushi_voice_hook::little_busters::LittleBustersLookupDownOwner;
  using fushi_voice_hook::little_busters::LittleBustersOwnsMatchingUp;

  assert(DecideLittleBustersDownOwner(false, false, false, true, true, true) ==
         kLbDownOwnerPass);
  assert(DecideLittleBustersDownOwner(false, false, true, true, true, true) ==
         kLbDownOwnerNative);
  assert(DecideLittleBustersDownOwner(true, false, true, true, true, true) ==
         kLbDownOwnerPopup);
  assert(DecideLittleBustersDownOwner(false, true, false, true, true, false) ==
         kLbDownOwnerDismiss);
  assert(!LittleBustersOwnsMatchingUp(kLbDownOwnerPass, false));
  assert(!LittleBustersOwnsMatchingUp(kLbDownOwnerNative, false));
  assert(LittleBustersOwnsMatchingUp(kLbDownOwnerNative, true));
  const LittleBustersLookupDownOwner owner = kLbDownOwnerNative;
  assert(owner != kLbDownOwnerPass);
}

void TestDiagnosticThrottleIsBounded() {
  using fushi_voice_hook::little_busters::
      LittleBustersDiagnosticThrottleAllows;
  using fushi_voice_hook::little_busters::
      kLittleBustersDiagnosticClickTraceBudget;

  // The first sample, an edge, and a changed state are retained.
  assert(LittleBustersDiagnosticThrottleAllows(
      true, false, false, 100u, 0u, 11u, 0u, 0u));
  assert(LittleBustersDiagnosticThrottleAllows(
      true, true, false, 101u, 100u, 11u, 11u, 99u));
  assert(LittleBustersDiagnosticThrottleAllows(
      true, false, false, 101u, 100u, 12u, 11u, 0u));
  // An unchanged steady-state frame is dropped until the one-second interval.
  assert(!LittleBustersDiagnosticThrottleAllows(
      true, false, false, 101u, 100u, 11u, 11u, 0u));
  assert(LittleBustersDiagnosticThrottleAllows(
      true, false, false, 1100u, 100u, 11u, 11u, 0u));
  // A click trace is still bounded by a fixed budget, even if every sample
  // appears to change.
  assert(LittleBustersDiagnosticThrottleAllows(
      true, false, true, 101u, 100u, 12u, 11u,
      kLittleBustersDiagnosticClickTraceBudget - 1u));
  assert(!LittleBustersDiagnosticThrottleAllows(
      true, false, true, 101u, 100u, 12u, 11u,
      kLittleBustersDiagnosticClickTraceBudget));
  assert(LittleBustersDiagnosticThrottleAllows(
      false, false, false, 101u, 100u, 11u, 11u, 0u));
  assert(fushi_voice_hook::little_busters::
             LittleBustersDiagnosticRenderSnapshotAllowed(0u));
  assert(!fushi_voice_hook::little_busters::
             LittleBustersDiagnosticRenderSnapshotAllowed(1u));
  assert(fushi_voice_hook::little_busters::
             LittleBustersDiagnosticSteadyStateBudgetAllows(15u));
  assert(!fushi_voice_hook::little_busters::
              LittleBustersDiagnosticSteadyStateBudgetAllows(16u));

  // A simulated one-minute steady render loop cannot emit more than one
  // unchanged high-frequency sample per second through the pure reducer.
  uint32_t steady_emitted = 0u;
  uint64_t last_emit = 0u;
  uint64_t previous_signature = 0u;
  for (uint64_t tick = 100u; tick < 60100u; tick += 16u) {
    if (LittleBustersDiagnosticThrottleAllows(
            true, false, false, tick, last_emit, 99u,
            previous_signature, 0u)) {
      ++steady_emitted;
      last_emit = tick;
      previous_signature = 99u;
    }
  }
  assert(steady_emitted <= 61u);

  uint32_t distinct_steady_emitted = 0u;
  for (uint32_t signature = 0u; signature < 4096u; ++signature) {
    if (fushi_voice_hook::little_busters::
            LittleBustersDiagnosticSteadyStateBudgetAllows(
                distinct_steady_emitted)) {
      ++distinct_steady_emitted;
    }
  }
  assert(distinct_steady_emitted ==
         fushi_voice_hook::little_busters::
             kLittleBustersDiagnosticSteadyStateEventBudget);

  uint32_t render_snapshots = 0u;
  for (uint32_t snapshot = 0u; snapshot < 4096u; ++snapshot) {
    if (fushi_voice_hook::little_busters::
            LittleBustersDiagnosticRenderSnapshotAllowed(snapshot)) {
      ++render_snapshots;
    }
  }
  assert(render_snapshots ==
         fushi_voice_hook::little_busters::
             kLittleBustersDiagnosticRenderSnapshotBudget);
}

void TestCTextProductionLayoutContract() {
  using namespace fushi_voice_hook::little_busters;
  // These offsets are the hydrated Luca cText layout contract.  In
  // particular, the item count is not allowed to regress to a u32 read, and
  // the hit builder must use the native run-local geometry fields rather than
  // the retired four-corner interpretation.
  assert(kLittleBustersCTextItemCountOffset == 0x04u);
  assert(kLittleBustersCTextItemRecordOffset == 0x48u);
  assert(kLittleBustersCTextRecordCodepointOffset == 0x04u);
  assert(kLittleBustersCTextRecordXOffset == 0x06u);
  assert(kLittleBustersCTextRecordWidthOffset == 0x0cu);
  assert(kLittleBustersCTextRecordHeightOffset == 0x12u);
  assert(kLittleBustersCTextLayoutOriginXOffset == 0x298u);
  assert(kLittleBustersCTextLayoutOriginYOffset == 0x29cu);
  assert(kLittleBustersCTextLayoutWidthOffset == 0x2a0u);
  assert(kLittleBustersCTextLayoutHeightOffset == 0x2a4u);
  assert(kLittleBustersCTextItemOriginYOffset == 0x10u);
  assert(kLittleBustersCTextItemOriginXOffset == 0x14u);
  assert(kLittleBustersEngineDesignHeightGlobalRva == 0x00401ca4u);
  assert(kLittleBustersEngineDesignWidthGlobalRva == 0x00401ca8u);
  assert(LittleBustersInputPollerReturnAddressRva(
      kLittleBustersInputPollerCallsiteBeginRva));
  assert(LittleBustersInputPollerReturnAddressRva(
      kLittleBustersInputPollerCallsiteEndRva));
  assert(!LittleBustersInputPollerReturnAddressRva(0x000EE2C0u));
  assert(!LittleBustersInputPollerReturnAddressRva(0x000EE430u));
}

void TestShiftLookupSampleContract() {
  using namespace fushi_voice_hook::little_busters;
  bool last_down = false;
  assert(ConsumeLittleBustersLookupShiftSample(0x8001u, &last_down));
  assert(last_down);
  assert(!ConsumeLittleBustersLookupShiftSample(0x8000u, &last_down));
  assert(!ConsumeLittleBustersLookupShiftSample(0x8000u, &last_down));
  assert(!ConsumeLittleBustersLookupShiftSample(0x0000u, &last_down));
  assert(ConsumeLittleBustersLookupShiftSample(0x0001u, &last_down));
  assert(!last_down);
  assert(!ConsumeLittleBustersLookupShiftSample(0x0000u, nullptr));
}

void TestLittleBustersLogicalToClientProjection() {
  using namespace fushi_voice_hook::little_busters;
  LittleBustersLookupProjection projection;
  assert(MakeLittleBustersLookupProjection(2240, 1260, 1280u, 720u,
                                            &projection));
  assert(projection.scale == 1.75);
  assert(projection.offset_x == 0.0);
  assert(projection.offset_y == 0.0);

  int32_t x = 0;
  int32_t y = 0;
  int32_t width = 0;
  int32_t height = 0;
  assert(ProjectLittleBustersLogicalRectToClient(
      190.0, 576.0, 15, 15, projection, &x, &y, &width, &height));
  assert(x == 333 && y == 1008 && width == 26 && height == 26);
  assert(ProjectLittleBustersLogicalRectToClient(
      205.0, 576.0, 30, 30, projection, &x, &y, &width, &height));
  assert(x == 359 && y == 1008 && width == 52 && height == 53);

  // A non-16:9 client keeps the engine's aspect-fit letterbox.  This is the
  // same mapping used by the host direct-card presenter.
  assert(MakeLittleBustersLookupProjection(1920, 1200, 1280u, 720u,
                                            &projection));
  assert(projection.scale == 1.5);
  assert(projection.offset_x == 0.0);
  assert(projection.offset_y == 60.0);
  assert(ProjectLittleBustersLogicalRectToClient(
      0.0, 0.0, 30, 30, projection, &x, &y, &width, &height));
  assert(x == 0 && y == 60 && width == 45 && height == 45);
  assert(!ProjectLittleBustersLogicalRectToClient(
      0.0, 0.0, 30, 30, projection, nullptr, &y, &width, &height));
}

void TestDiagnosticRingResetWrapAndOverflow() {
  std::unique_ptr<fushi_voice_hook::SharedHeader> header(
      new fushi_voice_hook::SharedHeader{});
  fushi_voice_hook::ResetLookupDiagnosticRing(header.get(), 0x12345678u);
  assert(fushi_voice_hook::AtomicLoadPreview64(
             &header->lookup_diagnostic_event_seq) == 0u);
  assert(fushi_voice_hook::AtomicLoadPreview64(
             &header->lookup_diagnostic_session_id) == 0x12345678u);
  header->lookup_diagnostics_enabled = 1u;
  for (uint64_t sequence = 1u;
       sequence <= fushi_voice_hook::kLookupDiagnosticEventCount + 3u;
       ++sequence) {
    fushi_voice_hook::LookupDiagnosticEvent event = {};
    event.event_kind = fushi_voice_hook::kLookupDiagnosticEventCounter;
    event.probe_id = fushi_voice_hook::kLookupDiagnosticProbeP11Pipeline;
    event.reason_id = fushi_voice_hook::kLbPublishAttempt;
    event.argument0 = sequence;
    fushi_voice_hook::RecordLookupDiagnostic(header.get(), event);
  }
  const uint64_t count = fushi_voice_hook::AtomicLoadPreview64(
      &header->lookup_diagnostic_event_seq);
  assert(count == fushi_voice_hook::kLookupDiagnosticEventCount + 3u);
  assert(fushi_voice_hook::AtomicLoadPreview64(
             &header->lookup_diagnostic_overflow_count) == 3u);
  for (uint64_t sequence = 4u; sequence <= count; ++sequence) {
    const auto& slot = header->lookup_diagnostic_events[
        static_cast<size_t>(sequence %
                            fushi_voice_hook::kLookupDiagnosticEventCount)];
    assert(fushi_voice_hook::AtomicLoadPreview64(&slot.seq) == sequence);
    assert(slot.argument0 == sequence);
  }
  fushi_voice_hook::ResetLookupDiagnosticRing(header.get(), 0x55u);
  assert(fushi_voice_hook::AtomicLoadPreview64(
             &header->lookup_diagnostic_event_seq) == 0u);
  assert(fushi_voice_hook::AtomicLoadPreview64(
             &header->lookup_diagnostic_overflow_count) == 0u);
}

}  // namespace

int main() {
  TestReasonTokensAndCandidateRva();
  TestUtf16MappingBoundaries();
  TestOwnershipReducerFailsOpen();
  TestDiagnosticThrottleIsBounded();
  TestCTextProductionLayoutContract();
  TestShiftLookupSampleContract();
  TestLittleBustersLogicalToClientProjection();
  TestDiagnosticRingResetWrapAndOverflow();
  return 0;
}
