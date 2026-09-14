#undef NDEBUG

#include <cassert>
#include <cstring>

#include "little_busters_voice_binding.h"
#include "little_busters_voice_calibration.h"
#include "luna_text_selector.h"

namespace lb = fushi_voice_hook::little_busters;

lb::VoiceTextCandidate Candidate(uint64_t seq, uint64_t timestamp,
                                 uint64_t thread, uint32_t source = 2u,
                                 uint32_t event = 0u, bool exact = true) {
  return {seq, timestamp, thread, 12u, source, event, exact};
}

int main() {
  const lb::VoicePendingResource pending[] = {
      {100u, 1600u, 10u, 7u, lb::VoiceResourceReadRole::kDialogueOnDemand},
  };
  const lb::VoiceTextCandidate candidates[] = {
      Candidate(9u, 99u, 7u),       // previous sequence: never bind backward
      Candidate(11u, 90u, 7u),      // before resource: not eligible
      Candidate(12u, 131u, 7u),     // next eligible line
      Candidate(13u, 150u, 7u),
  };
  lb::VoicePairDecision decisions[2] = {};
  assert(lb::ResolveLittleBustersPendingResources(
             pending, 1u, candidates, 4u, 131u, decisions, 2u) == 1u);
  assert(decisions[0].state == lb::VoicePairState::kMatched);
  assert(decisions[0].text_event_id == 12u);

  // No newly observed resource means there is no decision at all; a narration
  // candidate cannot acquire a neighboring member implicitly.
  assert(lb::ResolveLittleBustersPendingResources(
             nullptr, 0u, candidates, 4u, 131u, decisions, 2u) == 0u);

  const lb::VoicePendingResource stale_valid[] = {
      {100u, 1600u, 20u, 7u, lb::VoiceResourceReadRole::kDialogueOnDemand},
  };
  assert(lb::ResolveLittleBustersPendingResources(
             stale_valid, 1u, candidates, 4u, 1600u, decisions, 2u) == 1u);
  assert(decisions[0].state == lb::VoicePairState::kExpired);

  // Two resource reads competing for one next line are ambiguous and both
  // fail closed instead of being assigned by arbitrary FIFO order.
  const lb::VoicePendingResource ambiguous[] = {
      {100u, 1600u, 10u, 7u,
       lb::VoiceResourceReadRole::kDialogueOnDemand},
      {110u, 1610u, 10u, 7u,
       lb::VoiceResourceReadRole::kDialogueOnDemand},
  };
  const lb::VoiceTextCandidate one_next_line = Candidate(12u, 131u, 7u);
  assert(lb::ResolveLittleBustersPendingResources(
             ambiguous, 2u, &one_next_line, 1u, 131u, decisions, 2u) ==
         2u);
  assert(decisions[0].state == lb::VoicePairState::kAmbiguous);
  assert(decisions[1].state == lb::VoicePairState::kAmbiguous);

  const lb::VoiceTextCandidate wrong_source = Candidate(20u, 120u, 7u, 1u);
  assert(lb::ResolveLittleBustersPendingResources(
             pending, 1u, &wrong_source, 1u, 1600u, decisions, 2u) == 1u);
  assert(decisions[0].state == lb::VoicePairState::kExpired);

  const lb::VoicePendingResource unselected_valid[] = {
      {100u, 1600u, 10u, 0u,
       lb::VoiceResourceReadRole::kDialogueOnDemand},
  };
  assert(lb::ResolveLittleBustersPendingResources(
             unselected_valid, 1u, candidates, 4u, 131u, decisions, 2u) ==
         1u);
  assert(decisions[0].state == lb::VoicePairState::kUnselected);

  // A single resource with no proven read role is not allowed to claim the
  // intervening narration.  This is the safe state until runtime caller
  // calibration proves an on-demand call site.
  const lb::VoiceTextCandidate intervening_narration = one_next_line;
  const lb::VoicePendingResource unproven_prefetch[] = {
      {100u, 1600u, 10u, 7u, lb::VoiceResourceReadRole::kUnknown},
  };
  assert(lb::ResolveLittleBustersPendingResources(
             unproven_prefetch, 1u, &intervening_narration, 1u, 131u,
             decisions, 2u) ==
         1u);
  assert(decisions[0].state == lb::VoicePairState::kUnclassified);
  assert(decisions[0].text_event_id == 0u);

  assert(lb::ClassifyLittleBustersVoiceReadRole(0x1234u) ==
         lb::VoiceResourceReadRole::kUnknown);

  lb::LittleBustersVoiceReadAdmissionEvidence admission;
  admission.member_mapped = true;
  admission.member_id = 733u;
  admission.consumer_snapshot_valid = true;
  admission.context_matched = true;
  admission.match_count = 1u;
  admission.enqueue_token_matched = true;
  admission.enqueue_token = 552u;
  admission.request_index = 733u;
  admission.queue_id = 1u;
  admission.slot_index = 0u;
  admission.object_token = 6u;
  admission.slot_generation_valid = true;
  assert(lb::ClassifyLittleBustersVoiceReadAdmission(admission) ==
         lb::VoiceResourceReadRole::kDialogueOnDemand);
  auto rejected_admission = admission;
  rejected_admission.member_mapped = false;
  assert(lb::ClassifyLittleBustersVoiceReadAdmission(rejected_admission) ==
         lb::VoiceResourceReadRole::kUnknown);
  rejected_admission = admission;
  rejected_admission.consumer_snapshot_valid = false;
  assert(lb::ClassifyLittleBustersVoiceReadAdmission(rejected_admission) ==
         lb::VoiceResourceReadRole::kUnknown);
  rejected_admission = admission;
  rejected_admission.context_matched = false;
  assert(lb::ClassifyLittleBustersVoiceReadAdmission(rejected_admission) ==
         lb::VoiceResourceReadRole::kUnknown);
  rejected_admission = admission;
  rejected_admission.match_count = 2u;
  assert(lb::ClassifyLittleBustersVoiceReadAdmission(rejected_admission) ==
         lb::VoiceResourceReadRole::kUnknown);
  rejected_admission = admission;
  rejected_admission.enqueue_token_matched = false;
  assert(lb::ClassifyLittleBustersVoiceReadAdmission(rejected_admission) ==
         lb::VoiceResourceReadRole::kUnknown);
  rejected_admission = admission;
  rejected_admission.enqueue_token = 0u;
  assert(lb::ClassifyLittleBustersVoiceReadAdmission(rejected_admission) ==
         lb::VoiceResourceReadRole::kUnknown);
  rejected_admission = admission;
  rejected_admission.request_index = 734u;
  assert(lb::ClassifyLittleBustersVoiceReadAdmission(rejected_admission) ==
         lb::VoiceResourceReadRole::kUnknown);
  rejected_admission = admission;
  rejected_admission.queue_id = UINT32_MAX;
  assert(lb::ClassifyLittleBustersVoiceReadAdmission(rejected_admission) ==
         lb::VoiceResourceReadRole::kUnknown);
  rejected_admission = admission;
  rejected_admission.slot_index = UINT32_MAX;
  assert(lb::ClassifyLittleBustersVoiceReadAdmission(rejected_admission) ==
         lb::VoiceResourceReadRole::kUnknown);
  rejected_admission = admission;
  rejected_admission.object_token = 0u;
  assert(lb::ClassifyLittleBustersVoiceReadAdmission(rejected_admission) ==
         lb::VoiceResourceReadRole::kUnknown);
  rejected_admission = admission;
  rejected_admission.slot_generation_valid = false;
  assert(lb::ClassifyLittleBustersVoiceReadAdmission(rejected_admission) ==
         lb::VoiceResourceReadRole::kUnknown);

  assert(lb::DecideLittleBustersProducerHookInstall(false, false, false) ==
         lb::LittleBustersProducerHookInstallDecision::
             kRetryablePreflightFailure);
  assert(lb::DecideLittleBustersProducerHookInstall(true, false, false) ==
         lb::LittleBustersProducerHookInstallDecision::kHookAttemptAllowed);
  assert(lb::DecideLittleBustersProducerHookInstall(true, true, false) ==
         lb::LittleBustersProducerHookInstallDecision::
             kTerminalPartialFailure);
  assert(lb::DecideLittleBustersProducerHookInstall(true, true, true) ==
         lb::LittleBustersProducerHookInstallDecision::kReady);

  // Worker-state addresses become usable only after all four decodes commit;
  // this catches the regression where a successful decode never set valid.
  lb::LittleBustersConsumerWorkerContextAddresses worker_context;
  assert(lb::FinalizeLittleBustersConsumerWorkerContextAddresses(
      0x1000u, true, 0x2000u, true, 0x3000u, true, 0x4000u, true,
      &worker_context));
  assert(worker_context.valid && worker_context.current_object == 0x1000u &&
         worker_context.request_index == 0x2000u &&
         worker_context.slot_0c_state == 0x3000u &&
         worker_context.slot_10_mode == 0x4000u);
  assert(!lb::FinalizeLittleBustersConsumerWorkerContextAddresses(
      0x1000u, true, 0x2000u, false, 0x3000u, true, 0x4000u, true,
      &worker_context));
  assert(!worker_context.valid && worker_context.current_object == 0u &&
         worker_context.request_index == 0u && worker_context.slot_0c_state == 0u &&
         worker_context.slot_10_mode == 0u);

  assert(lb::IsLittleBustersExactHookCode(
      lb::kLittleBustersTextHookCode));
  assert(!lb::IsLittleBustersExactHookCode(L"HQFN1C@8BA37:other.exe"));

  // The new H-code is the only bridge that interprets ctx2 as the pinned
  // MESSAGE.voiceId.  Logical thread/face identity canonicalizes that raw
  // value for LB, while the raw value itself remains available to the caller
  // that writes TextSlot.thread_context2.
  assert(lb::IsLittleBustersVoiceSplitHookCode(
      L"HQFN1C:-18*-3244@8BA37:LITBUS_WIN32.exe"));
  assert(!lb::IsLittleBustersVoiceSplitHookCode(
      L"HQFN1C@8BA37:LITBUS_WIN32.exe"));
  const uint64_t lb_raw_voice_733 = 733u;
  const uint64_t lb_raw_voice_735 = 735u;
  assert(lb_raw_voice_733 == 733u && lb_raw_voice_735 == 735u);
  assert(lb::CanonicalLittleBustersTextContext2(
             lb::kLittleBustersTextHookCode, lb_raw_voice_733) == 0u);
  assert(lb::CanonicalLittleBustersTextContext2(
             lb::kLittleBustersTextHookCode, lb_raw_voice_735) == 0u);
  const uint32_t bridge_pid = 4242u;
  const uint64_t bridge_addr = 0x8BA37u;
  const uint64_t raw_thread_733 = fushi_voice_hook::LunaTextThreadIdFrom(
      bridge_pid, bridge_addr, 0u, lb_raw_voice_733,
      lb::kLittleBustersTextHookCode, nullptr);
  const uint64_t raw_thread_735 = fushi_voice_hook::LunaTextThreadIdFrom(
      bridge_pid, bridge_addr, 0u, lb_raw_voice_735,
      lb::kLittleBustersTextHookCode, nullptr);
  const uint64_t logical_thread_733 = fushi_voice_hook::LunaTextThreadIdFrom(
      bridge_pid, bridge_addr, 0u,
      lb::CanonicalLittleBustersTextContext2(lb::kLittleBustersTextHookCode,
                                             lb_raw_voice_733),
      lb::kLittleBustersTextHookCode, nullptr);
  const uint64_t logical_thread_735 = fushi_voice_hook::LunaTextThreadIdFrom(
      bridge_pid, bridge_addr, 0u,
      lb::CanonicalLittleBustersTextContext2(lb::kLittleBustersTextHookCode,
                                             lb_raw_voice_735),
      lb::kLittleBustersTextHookCode, nullptr);
  assert(raw_thread_733 != raw_thread_735);
  assert(logical_thread_733 == logical_thread_735);
  const uint64_t logical_face_733 = fushi_voice_hook::LunaTextFaceIdFrom(
      bridge_pid, bridge_addr,
      lb::CanonicalLittleBustersTextContext2(lb::kLittleBustersTextHookCode,
                                             lb_raw_voice_733),
      lb::kLittleBustersTextHookCode, nullptr);
  const uint64_t logical_face_735 = fushi_voice_hook::LunaTextFaceIdFrom(
      bridge_pid, bridge_addr,
      lb::CanonicalLittleBustersTextContext2(lb::kLittleBustersTextHookCode,
                                             lb_raw_voice_735),
      lb::kLittleBustersTextHookCode, nullptr);
  assert(logical_face_733 == logical_face_735);
  const wchar_t* other_hook = L"HB0@1234:other.exe";
  assert(lb::CanonicalLittleBustersTextContext2(other_hook, 733u) == 733u);
  uint32_t decoded_voice_id = 99u;
  assert(lb::DecodeLittleBustersVoiceId(0u, &decoded_voice_id) &&
         decoded_voice_id == 0u);
  assert(lb::DecodeLittleBustersVoiceId(733u, &decoded_voice_id) &&
         decoded_voice_id == 733u);
  assert(!lb::DecodeLittleBustersVoiceId(0x10000u, &decoded_voice_id));
  assert(!lb::kLittleBustersAutomaticVoiceBindingEnabled);

  lb::VoiceTextCandidate message_733 = Candidate(17u, 1000u, 7u);
  message_733.raw_context2 = 733u;
  assert(lb::ResolveLittleBustersMessageVoiceId(message_733,
                                                &decoded_voice_id));
  assert(decoded_voice_id == 733u);
  lb::VoiceTextCandidate message_0 = message_733;
  message_0.raw_context2 = 0u;
  assert(lb::ResolveLittleBustersMessageVoiceId(message_0, &decoded_voice_id));
  assert(decoded_voice_id == 0u);
  lb::VoiceTextCandidate malformed_message = message_733;
  malformed_message.raw_context2 = 0x10000u;
  assert(!lb::ResolveLittleBustersMessageVoiceId(malformed_message,
                                                  &decoded_voice_id));
  malformed_message = message_733;
  malformed_message.exact_hook_code = false;
  assert(!lb::ResolveLittleBustersMessageVoiceId(malformed_message,
                                                  &decoded_voice_id));

  lb::CalibrationTraceBudget budget;
  assert(!budget.TryConsume(0u));
  assert(!budget.TryConsume(lb::kLittleBustersCalibrationMaxBytes + 1u));
  assert(budget.TryConsume(16u));
  assert(budget.records == 1u && budget.bytes == 16u);
  for (size_t index = budget.records;
       index < lb::kLittleBustersCalibrationMaxRecords; ++index) {
    assert(budget.TryConsume(1u));
  }
  assert(!budget.TryConsume(1u));

  lb::CalibrationTraceTextDedup dedup;
  assert(!dedup.SeenOrRemember(638u));
  assert(dedup.SeenOrRemember(638u));
  assert(!dedup.SeenOrRemember(642u));
  assert(dedup.count == 2u);
  dedup.Reset();
  assert(dedup.count == 0u && !dedup.SeenOrRemember(638u));

  const uintptr_t module_base = static_cast<uintptr_t>(0x100000u);
  const uintptr_t stack_addresses[] = {
      module_base + 0xECF97u,
      static_cast<uintptr_t>(0x400000u) + 0x1234u,
      module_base + 0x35462u,
      module_base + 0x40711u,
      module_base + 0x1000u + 0x10u,
  };
  const lb::CalibrationStackTrace stack = lb::FilterCalibrationStackRvas(
      stack_addresses, sizeof(stack_addresses) / sizeof(stack_addresses[0]),
      module_base, 0x200000u);
  assert(stack.count == 4u);
  assert(stack.valid_mask == 0x0Fu);
  assert(stack.rvas[0] == 0xECF97u);
  assert(stack.rvas[1] == 0x35462u);
  assert(stack.rvas[2] == 0x40711u);
  assert(stack.rvas[3] == 0x1010u);

  const uintptr_t too_many[] = {
      module_base + 0x10u, module_base + 0x20u, module_base + 0x30u,
      module_base + 0x40u, module_base + 0x50u, module_base + 0x60u,
      module_base + 0x70u, module_base + 0x80u,
  };
  const lb::CalibrationStackTrace bounded = lb::FilterCalibrationStackRvas(
      too_many, sizeof(too_many) / sizeof(too_many[0]), module_base,
      0x1000u);
  assert(bounded.count == lb::kLittleBustersCalibrationMaxStackRvas);
  assert(bounded.valid_mask == 0x3Fu);

  char stack_json[64] = {};
  size_t stack_json_bytes = 0u;
  assert(lb::FormatCalibrationStackRvaJson(
      stack.rvas, stack.count, stack_json, sizeof(stack_json),
      &stack_json_bytes));
  assert(std::strcmp(stack_json, "[970647,218210,263953,4112]") == 0);
  assert(stack_json_bytes == std::strlen(stack_json));
  assert(!lb::FormatCalibrationStackRvaJson(
      stack.rvas, lb::kLittleBustersCalibrationMaxStackRvas + 1u,
      stack_json, sizeof(stack_json), &stack_json_bytes));

  // Producer calibration is pinned to the four statically verified wrapper /
  // ring-callsite pairs.  The synthetic rel32 check exercises the same
  // relocation-independent validation used before installing the x86 hooks.
  assert(lb::kLittleBustersProducerHookSpecs.size() == 4u);
  assert(lb::IsLittleBustersProducerWrapperRva(0x3E8A0u));
  assert(lb::IsLittleBustersProducerWrapperRva(0x3EE00u));
  assert(!lb::IsLittleBustersProducerWrapperRva(0xECF97u));
  const auto* producer_spec =
      lb::FindLittleBustersProducerHookSpecByWrapper(0x3E8A0u);
  assert(producer_spec != nullptr);
  assert(producer_spec->ring_callsite_rva == 0x3E92Bu);
  assert(producer_spec->queue_id == 0u);
  assert(producer_spec->queue_rva == 0x6D5150u);
  const uint32_t expected_callsite_rvas[] = {
      0x3E92Bu, 0x3EC84u, 0x3ED34u, 0x3EEE5u};
  const uint32_t expected_queue_rvas[] = {
      0x6D5150u, 0x6D5170u, 0x6D5180u, 0x6D5190u};
  for (size_t index = 0u; index < lb::kLittleBustersProducerHookSpecs.size();
       ++index) {
    const auto& spec = lb::kLittleBustersProducerHookSpecs[index];
    assert(spec.ring_callsite_rva == expected_callsite_rvas[index]);
    assert(spec.queue_rva == expected_queue_rvas[index]);
    assert(lb::FindLittleBustersProducerHookSpecByQueue(spec.queue_id) ==
           &spec);
    uint8_t call_bytes[5] = {0xE8u, 0u, 0u, 0u, 0u};
    const int32_t call_relative = static_cast<int32_t>(
        lb::kLittleBustersProducerRingEnqueueRva -
        (spec.ring_callsite_rva + 5u));
    std::memcpy(call_bytes + 1u, &call_relative, sizeof(call_relative));
    assert(lb::DecodeLittleBustersProducerRel32Call(
        call_bytes, sizeof(call_bytes), spec.ring_callsite_rva,
        lb::kLittleBustersProducerRingEnqueueRva));
  }

  uint8_t rel32_call[5] = {0xE8u, 0u, 0u, 0u, 0u};
  const int32_t relative = static_cast<int32_t>(
      lb::kLittleBustersProducerRingEnqueueRva - (0x3E92Bu + 5u));
  std::memcpy(rel32_call + 1u, &relative, sizeof(relative));
  assert(lb::DecodeLittleBustersProducerRel32Call(
      rel32_call, sizeof(rel32_call), 0x3E92Bu,
      lb::kLittleBustersProducerRingEnqueueRva));
  rel32_call[0] = 0xE9u;
  assert(!lb::DecodeLittleBustersProducerRel32Call(
      rel32_call, sizeof(rel32_call), 0x3E92Bu,
      lb::kLittleBustersProducerRingEnqueueRva));

  uint8_t ring_prefix[lb::kLittleBustersProducerRingPrefix.size()] = {};
  std::memcpy(ring_prefix, lb::kLittleBustersProducerRingPrefix.data(),
              sizeof(ring_prefix));
  assert(lb::MatchesLittleBustersProducerBytes(
      ring_prefix, sizeof(ring_prefix),
      lb::kLittleBustersProducerRingPrefix.data(),
      lb::kLittleBustersProducerRingPrefix.size()));
  ring_prefix[0] ^= 1u;
  assert(!lb::MatchesLittleBustersProducerBytes(
      ring_prefix, sizeof(ring_prefix),
      lb::kLittleBustersProducerRingPrefix.data(),
      lb::kLittleBustersProducerRingPrefix.size()));

  const uint32_t slot_words[] = {0x12345678u, 0u, 42u, 0xABCDu, 7u};
  lb::LittleBustersProducerSlotFields slot_fields;
  assert(lb::ParseLittleBustersProducerSlotFields(
      slot_words, sizeof(slot_words) / sizeof(slot_words[0]), &slot_fields));
  assert(slot_fields.slot_0 == 0x12345678u);
  assert(slot_fields.slot_8 == 42u);
  assert(slot_fields.slot_0c == 0xABCDu);
  assert(slot_fields.slot_10 == 7u);
  assert(!lb::ParseLittleBustersProducerSlotFields(
      slot_words, 4u, &slot_fields));

  // The consumer dispatch maps only the four profile queues.  The fifth
  // engine ring is deliberately unsupported and must remain fail closed.
  assert(lb::kLittleBustersProducerConsumerStateRva == 0x4BC04Cu);
  assert(lb::LittleBustersConsumerQueueIdForState(2u) == 3u);
  assert(lb::LittleBustersConsumerQueueIdForState(3u) == 1u);
  assert(lb::LittleBustersConsumerQueueIdForState(4u) == 2u);
  assert(lb::LittleBustersConsumerQueueIdForState(5u) == UINT32_MAX);
  assert(lb::LittleBustersConsumerQueueIdForState(0u) == 0u);
  assert(lb::LittleBustersConsumerQueueIdForState(99u) == 0u);

  // A consumer record may recover a producer token only from the complete
  // side-table identity.  Missing object identity and every mismatching
  // queue/slot/request must fail closed.
  lb::LittleBustersProducerCorrelationFields correlation;
  correlation.enqueue_token = 9u;
  correlation.queue_id = 0u;
  correlation.slot_index = 3u;
  correlation.slot_generation = 2u;
  correlation.slot_generation_valid = true;
  correlation.request_index = 42u;
  correlation.object_token = 1u;
  assert(lb::IsLittleBustersProducerCorrelationMatch(
      correlation, 0u, 3u, 42u, 1u));
  assert(!lb::IsLittleBustersProducerCorrelationMatch(
      correlation, 1u, 3u, 42u, 1u));
  assert(!lb::IsLittleBustersProducerCorrelationMatch(
      correlation, 0u, 4u, 42u, 1u));
  assert(!lb::IsLittleBustersProducerCorrelationMatch(
      correlation, 0u, 3u, 43u, 1u));
  assert(!lb::IsLittleBustersProducerCorrelationMatch(
      correlation, 0u, 3u, 42u, 2u));
  assert(!lb::IsLittleBustersProducerCorrelationMatch(
      correlation, 0u, 3u, 42u, 0u));

  using CorrelationState = lb::LittleBustersProducerCorrelationState;
  using PublishDecision = lb::LittleBustersProducerCorrelationPublishDecision;
  assert(lb::DecideLittleBustersProducerCorrelationPublish(
             CorrelationState::kFree, true, 1u, true, 1u, false, 0u) ==
         PublishDecision::kPublishIntoFree);
  assert(lb::DecideLittleBustersProducerCorrelationPublish(
             CorrelationState::kPublished, true, 2u, true, 2u, true, 1u) ==
         PublishDecision::kReplacePublished);
  assert(lb::DecideLittleBustersProducerCorrelationPublish(
             CorrelationState::kPublished, true, 1u, true, 1u, true, 1u) ==
         PublishDecision::kReject);
  assert(lb::DecideLittleBustersProducerCorrelationPublish(
             CorrelationState::kReader, true, 2u, true, 2u, true, 1u) ==
         PublishDecision::kReject);
  assert(lb::DecideLittleBustersProducerCorrelationPublish(
             CorrelationState::kPublished, false, 2u, true, 2u, true, 1u) ==
         PublishDecision::kReject);
  assert(lb::DecideLittleBustersProducerCorrelationPublish(
             CorrelationState::kPublished, true, 2u, false, 0u, true, 1u) ==
         PublishDecision::kReject);
  assert(lb::DecideLittleBustersProducerCorrelationPublish(
             CorrelationState::kPublished, true, 2u, true, 2u, false, 0u) ==
         PublishDecision::kReject);
  assert(lb::IsLittleBustersProducerCorrelationGenerationCurrent(
      true, 2u, true, 2u));
  assert(!lb::IsLittleBustersProducerCorrelationGenerationCurrent(
      true, 2u, true, 3u));
  assert(!lb::IsLittleBustersProducerCorrelationGenerationCurrent(
      false, 2u, true, 2u));

  // Live correlation is keyed by the engine's natural ring identity, not by
  // the producer JSON log append count. This small model uses the same pure
  // state/freshness decisions as production, crosses the 128-record
  // diagnostic log cap, and reuses the same two ring slots.
  size_t correlation_index = 0u;
  assert(lb::LittleBustersProducerCorrelationSlotIndex(
      0u, 0u, &correlation_index));
  assert(correlation_index == 0u);
  assert(lb::LittleBustersProducerCorrelationSlotIndex(
      3u, 1023u, &correlation_index));
  assert(correlation_index == lb::kLittleBustersProducerCorrelationSlots - 1u);
  assert(!lb::LittleBustersProducerCorrelationSlotIndex(
      4u, 0u, &correlation_index));
  assert(!lb::LittleBustersProducerCorrelationSlotIndex(
      0u, 1024u, &correlation_index));

  struct CorrelationModelEntry {
    CorrelationState state = CorrelationState::kFree;
    lb::LittleBustersProducerCorrelationFields fields;
    bool current_generation_valid = false;
    uint32_t current_generation = 0u;
  };
  CorrelationModelEntry model[2];
  auto model_publish = [&](const lb::LittleBustersProducerCorrelationFields& fields,
                           bool current_generation_valid,
                           uint32_t current_generation) {
    size_t index = 0u;
    if (!lb::LittleBustersProducerCorrelationSlotIndex(
            fields.queue_id, fields.slot_index, &index) ||
        index >= 2u) {
      return false;
    }
    const auto decision = lb::DecideLittleBustersProducerCorrelationPublish(
        model[index].state, fields.slot_generation_valid,
        fields.slot_generation, current_generation_valid, current_generation,
        model[index].fields.slot_generation_valid,
        model[index].fields.slot_generation);
    if (decision == PublishDecision::kReject) return false;
    model[index].fields = fields;
    model[index].state = CorrelationState::kPublished;
    model[index].current_generation_valid = current_generation_valid;
    model[index].current_generation = current_generation;
    return true;
  };
  auto model_matches = [&](uint32_t queue_id, uint32_t slot_index,
                           uint32_t request_index, uint32_t object_token,
                           uint64_t* enqueue_token) {
    size_t index = 0u;
    if (!lb::LittleBustersProducerCorrelationSlotIndex(
            queue_id, slot_index, &index) ||
        index >= 2u ||
        model[index].state != CorrelationState::kPublished ||
        !lb::IsLittleBustersProducerCorrelationGenerationCurrent(
            model[index].fields.slot_generation_valid,
            model[index].fields.slot_generation,
            model[index].current_generation_valid,
            model[index].current_generation) ||
        !lb::IsLittleBustersProducerCorrelationMatch(
            model[index].fields, queue_id, slot_index, request_index,
            object_token)) {
      return false;
    }
    if (enqueue_token != nullptr) {
      *enqueue_token = model[index].fields.enqueue_token;
    }
    return true;
  };
  auto model_retire = [&](uint32_t queue_id, uint32_t slot_index,
                          uint32_t request_index, uint32_t object_token) {
    uint64_t ignored_token = 0u;
    if (!model_matches(queue_id, slot_index, request_index, object_token,
                       &ignored_token)) {
      return false;
    }
    size_t index = 0u;
    assert(lb::LittleBustersProducerCorrelationSlotIndex(
        queue_id, slot_index, &index));
    model[index].state = CorrelationState::kFree;
    model[index].fields = {};
    return true;
  };

  // A missed retire is safe: advancing the structural generation prevents a
  // repeated request/object pair from recovering the old token, and a newer
  // valid generation replaces it without touching a reader-owned entry.
  lb::LittleBustersProducerCorrelationFields old_generation;
  old_generation.enqueue_token = 7001u;
  old_generation.queue_id = 0u;
  old_generation.slot_index = 0u;
  old_generation.slot_generation = 1u;
  old_generation.slot_generation_valid = true;
  old_generation.request_index = 77u;
  old_generation.object_token = 88u;
  assert(model_publish(old_generation, true, 1u));
  uint64_t found_token = 0u;
  assert(model_matches(0u, 0u, 77u, 88u, &found_token));
  assert(found_token == 7001u);
  model[0].current_generation = 2u;
  assert(!model_matches(0u, 0u, 77u, 88u, nullptr));
  lb::LittleBustersProducerCorrelationFields new_generation = old_generation;
  new_generation.enqueue_token = 7002u;
  new_generation.slot_generation = 2u;
  assert(model_publish(new_generation, true, 2u));
  assert(model_matches(0u, 0u, 77u, 88u, &found_token));
  assert(found_token == 7002u);
  model[0].state = CorrelationState::kReader;
  new_generation.enqueue_token = 7003u;
  new_generation.slot_generation = 3u;
  model[0].current_generation = 3u;
  assert(!model_publish(new_generation, true, 3u));
  model[0] = {};

  for (uint32_t i = 0u; i < 256u; ++i) {
    lb::LittleBustersProducerCorrelationFields current;
    current.enqueue_token = 1000u + i;
    current.queue_id = 0u;
    current.slot_index = i % 2u;
    current.slot_generation = i + 1u;
    current.slot_generation_valid = true;
    current.request_index = 2000u + i;
    current.object_token = 3000u + (i % 2u);
    assert(model_publish(current, true, current.slot_generation));
    found_token = 0u;
    assert(model_matches(current.queue_id, current.slot_index,
                         current.request_index, current.object_token,
                         &found_token));
    assert(found_token == current.enqueue_token);
    assert(!model_matches(current.queue_id, current.slot_index,
                          current.request_index + 1u, current.object_token,
                          nullptr));
    assert(!model_matches(current.queue_id, current.slot_index,
                          current.request_index, current.object_token + 1u,
                          nullptr));

    auto replacement = current;
    replacement.enqueue_token += 100000u;
    assert(!model_publish(replacement, true, current.slot_generation));
    assert(model_retire(current.queue_id, current.slot_index,
                        current.request_index, current.object_token));
    assert(!model_matches(current.queue_id, current.slot_index,
                          current.request_index, current.object_token,
                          nullptr));
  }

  // Consumer serialization is bounded metadata only.  It exposes the
  // queue/slot/token relationship but explicitly cannot claim a member id.
  lb::LittleBustersConsumerCalibrationFields consumer;
  consumer.tick_ms = 1234u;
  consumer.thread_id = 77u;
  consumer.consumer_rva = lb::kLittleBustersProducerConsumerSelectRva;
  consumer.consumer_callsite_rva =
      lb::kLittleBustersProducerConsumerSelectCallsiteRva;
  consumer.consumer_state = 2u;
  consumer.queue_id = 3u;
  consumer.queue_rva = 0x6D5190u;
  consumer.slot_index = 3u;
  consumer.slot_generation = 2u;
  consumer.slot_generation_valid = true;
  consumer.request_index = 42u;
  consumer.slot_0_object_token = 1u;
  consumer.slot_8_request_index = 42u;
  consumer.slot_0c_state = 7u;
  consumer.slot_10_mode = 0u;
  consumer.producer_match_count = 1u;
  consumer.enqueue_token = 9u;
  consumer.enqueue_token_matched = true;
  assert(lb::IsLittleBustersConsumerWorkerContextMatch(
      consumer, 77u, 2u, 42u, 1u, 0x10007u, 0u));
  assert(lb::ClassifyLittleBustersConsumerWorkerContextMismatch(
             consumer, 77u, 2u, 42u, 1u, 0x10007u, 0u) == 0u);
  const uint32_t all_context_mismatches =
      lb::kLittleBustersConsumerMismatchThread |
      lb::kLittleBustersConsumerMismatchState |
      lb::kLittleBustersConsumerMismatchRequest |
      lb::kLittleBustersConsumerMismatchObject |
      lb::kLittleBustersConsumerMismatchSlot0c |
      lb::kLittleBustersConsumerMismatchMode;
  assert(lb::ClassifyLittleBustersConsumerWorkerContextMismatch(
             consumer, 78u, 3u, 43u, 2u, 8u, 1u) == all_context_mismatches);
  assert(lb::ClassifyLittleBustersConsumerWorkerContextMismatch(
             consumer, 77u, 2u, 42u, 1u, 7u, 1u) ==
         lb::kLittleBustersConsumerMismatchMode);
  assert(lb::ClassifyLittleBustersConsumerWorkerContextIdentityMismatch(
             consumer, 77u, 2u, 42u, 1u, 7u) == 0u);
  assert(lb::ClassifyLittleBustersConsumerWorkerContextIdentityMismatch(
             consumer, 78u, 3u, 43u, 2u, 8u) ==
         (all_context_mismatches &
          lb::kLittleBustersConsumerWorkerIdentityMismatchMask));
  assert(!lb::IsLittleBustersConsumerWorkerContextMatch(
      consumer, 78u, 2u, 42u, 1u, 7u, 0u));
  assert(!lb::IsLittleBustersConsumerWorkerContextMatch(
      consumer, 77u, 2u, 43u, 1u, 7u, 0u));
  assert(!lb::IsLittleBustersConsumerWorkerContextMatch(
      consumer, 77u, 3u, 42u, 1u, 7u, 0u));
  assert(!lb::IsLittleBustersConsumerWorkerContextMatch(
      consumer, 77u, 2u, 42u, 2u, 7u, 0u));
  assert(!lb::IsLittleBustersConsumerWorkerContextMatch(
      consumer, 77u, 2u, 42u, 1u, 8u, 0u));
  // slot_10_mode is intentionally diagnostic-only: the pinned worker reuses
  // that global before the VOICE ReadFile boundary, so a mode-only delta must
  // not reject the otherwise exact identity.
  assert(lb::IsLittleBustersConsumerWorkerContextMatch(
      consumer, 77u, 2u, 42u, 1u, 7u, 1u));
  lb::LittleBustersVoiceReadConsumerContextFields empty_context;
  assert(empty_context.match_count == 0u && !empty_context.context_matched &&
          !empty_context.enqueue_token_matched &&
          empty_context.queue_id == UINT32_MAX &&
          !empty_context.worker_snapshot_valid &&
          empty_context.worker_snapshot_valid_mask == 0u &&
          empty_context.same_thread_select_count == 0u &&
          !empty_context.same_thread_candidate_available &&
          !empty_context.candidate_mismatch_available &&
          empty_context.candidate_mismatch_mask == 0u);
  char consumer_json[2048] = {};
  size_t consumer_json_bytes = 0u;
  assert(lb::FormatLittleBustersConsumerCalibrationJson(
      6u, consumer, consumer_json, sizeof(consumer_json),
      &consumer_json_bytes));
  assert(std::strstr(consumer_json, "\"kind\":\"consumer_dequeue\"") !=
         nullptr);
  assert(std::strstr(consumer_json, "\"consumer_boundary\":\"select\"") !=
         nullptr);
  assert(std::strstr(consumer_json, "\"enqueue_token_matched\":true") !=
         nullptr);
  assert(std::strstr(consumer_json,
                     "\"member_identity_available\":false") != nullptr);
  assert(std::strstr(consumer_json, "0x") == nullptr);
  assert(consumer_json_bytes == std::strlen(consumer_json));
  consumer.consumer_rva = lb::kLittleBustersProducerRingAdvanceRva;
  assert(lb::FormatLittleBustersConsumerCalibrationJson(
      7u, consumer, consumer_json, sizeof(consumer_json),
      &consumer_json_bytes));
  assert(std::strstr(consumer_json,
                     "\"consumer_boundary\":\"advance_ring\"") !=
         nullptr);
  char consumer_tiny[16] = {};
  assert(!lb::FormatLittleBustersConsumerCalibrationJson(
      7u, consumer, consumer_tiny, sizeof(consumer_tiny),
      &consumer_json_bytes));

  lb::LittleBustersProducerObjectTokenBook token_book;
  assert(token_book.FindOrAssign(0u) == 0u);
  const uint32_t first_token = token_book.FindOrAssign(0x1000u);
  assert(first_token != 0u);
  assert(token_book.FindOrAssign(0x1000u) == first_token);
  assert(token_book.FindOrAssign(0x2000u) == first_token + 1u);
  token_book.Reset();
  assert(token_book.count == 0u && token_book.FindOrAssign(0x1000u) == 1u);

  lb::LittleBustersProducerCalibrationBudget producer_budget;
  assert(!producer_budget.TryConsume(0u));
  assert(!producer_budget.TryConsume(
      lb::kLittleBustersProducerCalibrationMaxBytes + 1u));
  assert(producer_budget.TryConsume(32u));
  for (size_t index = producer_budget.records;
       index < lb::kLittleBustersProducerCalibrationMaxRecords; ++index) {
    assert(producer_budget.TryConsume(1u));
  }
  assert(!producer_budget.TryConsume(1u));

  lb::LittleBustersProducerCalibrationFields producer_fields;
  producer_fields.tick_ms = 1234u;
  producer_fields.thread_id = 77u;
  producer_fields.enqueue_token = 9u;
  producer_fields.wrapper_rva = 0x3E8A0u;
  producer_fields.callsite_rva = 0x12345u;
  producer_fields.ring_callsite_rva = 0x3E92Bu;
  producer_fields.queue_id = 0u;
  producer_fields.queue_rva = 0x6D5150u;
  producer_fields.slot_index = 3u;
  producer_fields.slot_generation = 2u;
  producer_fields.slot_generation_valid = true;
  producer_fields.request_index = 42u;
  producer_fields.slot_0_object_token = 1u;
  producer_fields.slot_8_request_index = 42u;
  char producer_json[2048] = {};
  size_t producer_json_bytes = 0u;
  assert(lb::FormatLittleBustersProducerCalibrationJson(
      5u, producer_fields, producer_json, sizeof(producer_json),
      &producer_json_bytes));
  assert(std::strstr(producer_json, "\"kind\":\"producer_enqueue\"") !=
         nullptr);
  assert(std::strstr(producer_json, "\"member_identity_available\":false") !=
         nullptr);
  assert(std::strstr(producer_json, "0x") == nullptr);
  assert(producer_json_bytes == std::strlen(producer_json));
  char producer_tiny[16] = {};
  assert(!lb::FormatLittleBustersProducerCalibrationJson(
      5u, producer_fields, producer_tiny, sizeof(producer_tiny),
      &producer_json_bytes));
  return 0;
}
