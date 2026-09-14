#pragma once

#include <array>
#include <cstddef>
#include <cstdint>
#include <cstdio>
#include <cstring>

namespace fushi_voice_hook::little_busters {

// The calibration sink is deliberately small and finite.  The native hook
// keeps records in memory and the worker drains them to a per-process temp
// JSONL file; these limits also bound the file if the worker cannot keep up.
inline constexpr size_t kLittleBustersCalibrationMaxRecords = 512u;
inline constexpr size_t kLittleBustersCalibrationMaxBytes = 128u * 1024u;
inline constexpr uint32_t kLittleBustersCalibrationMaxStackRvas = 6u;

// Producer calibration is deliberately stricter than the existing shared
// caller trace.  The producer hook is a temporary x86-only diagnostic and is
// never a production role allowlist.
inline constexpr size_t kLittleBustersProducerCalibrationMaxRecords = 128u;
inline constexpr size_t kLittleBustersProducerCalibrationMaxBytes = 32u * 1024u;
inline constexpr uint32_t kLittleBustersProducerRingPeekRva = 0x41230u;
inline constexpr uint32_t kLittleBustersProducerRingEnqueueRva = 0x41280u;
inline constexpr uint32_t kLittleBustersProducerConsumerSelectRva = 0x3F340u;
inline constexpr uint32_t kLittleBustersProducerConsumerAdvanceRva = 0x3F390u;
inline constexpr uint32_t kLittleBustersProducerRingAdvanceRva = 0x412D0u;
inline constexpr uint32_t kLittleBustersProducerConsumerStateRva = 0x4BC04Cu;
inline constexpr uint32_t kLittleBustersProducerConsumerSelectCallsiteRva =
    0x3F8F5u;
inline constexpr uint32_t kLittleBustersProducerConsumerAdvanceCallsiteRva =
    0x3F969u;
// The selected slot is copied into these worker globals before the same worker
// reaches its direct VOICE ReadFile call at 0x40711.  These are diagnostic
// anchors only; they are not a production caller allowlist or a member ID.
inline constexpr uint32_t kLittleBustersConsumerWorkerRva = 0x3F4B0u;
inline constexpr uint32_t kLittleBustersConsumerWorkerSelectRva = 0x3F8FAu;
inline constexpr uint32_t kLittleBustersConsumerWorkerVoiceReadCallsiteRva =
    0x40711u;
inline constexpr uint32_t kLittleBustersConsumerWorkerVoiceReadWrapperRva =
    0xECF70u;
inline constexpr size_t kLittleBustersConsumerCalibrationMaxRecords = 128u;
inline constexpr size_t kLittleBustersConsumerContextMaxRecords = 64u;
inline constexpr size_t kLittleBustersProducerMaxRingSlots = 1024u;
inline constexpr size_t kLittleBustersProducerObjectTokenSlots = 64u;
inline constexpr size_t kLittleBustersProducerCorrelationQueueCount = 4u;
inline constexpr size_t kLittleBustersProducerCorrelationSlots =
    kLittleBustersProducerCorrelationQueueCount *
    kLittleBustersProducerMaxRingSlots;

inline bool LittleBustersProducerCorrelationSlotIndex(
    uint32_t queue_id,
    uint32_t slot_index,
    size_t* output_index) {
  if (output_index == nullptr ||
      queue_id >= kLittleBustersProducerCorrelationQueueCount ||
      slot_index >= kLittleBustersProducerMaxRingSlots) {
    return false;
  }
  *output_index = static_cast<size_t>(queue_id) *
                      kLittleBustersProducerMaxRingSlots +
                  slot_index;
  return *output_index < kLittleBustersProducerCorrelationSlots;
}

enum class LittleBustersProducerCorrelationState : uint32_t {
  kFree = 0u,
  kWriter = 1u,
  kPublished = 2u,
  kReader = 3u,
};

enum class LittleBustersProducerCorrelationPublishDecision : uint8_t {
  kReject,
  kPublishIntoFree,
  kReplacePublished,
};

// Generation freshness is structural: a producer may publish into a free
// identity, or replace a published entry only when the incoming generation is
// valid, is the current generation, and is strictly newer than the entry being
// replaced.  Unknown/busy states and unknown generations remain rejected.
inline LittleBustersProducerCorrelationPublishDecision
DecideLittleBustersProducerCorrelationPublish(
    LittleBustersProducerCorrelationState state,
    bool incoming_generation_valid,
    uint32_t incoming_generation,
    bool current_generation_valid,
    uint32_t current_generation,
    bool existing_generation_valid,
    uint32_t existing_generation) {
  if (!incoming_generation_valid || incoming_generation == 0u ||
      !current_generation_valid || current_generation == 0u ||
      incoming_generation != current_generation) {
    return LittleBustersProducerCorrelationPublishDecision::kReject;
  }
  if (state == LittleBustersProducerCorrelationState::kFree) {
    return LittleBustersProducerCorrelationPublishDecision::kPublishIntoFree;
  }
  if (state != LittleBustersProducerCorrelationState::kPublished ||
      !existing_generation_valid || existing_generation == 0u ||
      incoming_generation <= existing_generation) {
    return LittleBustersProducerCorrelationPublishDecision::kReject;
  }
  return LittleBustersProducerCorrelationPublishDecision::kReplacePublished;
}

inline bool IsLittleBustersProducerCorrelationGenerationCurrent(
    bool producer_generation_valid,
    uint32_t producer_generation,
    bool current_generation_valid,
    uint32_t current_generation) {
  return producer_generation_valid && producer_generation != 0u &&
         current_generation_valid && current_generation != 0u &&
         producer_generation == current_generation;
}

enum class LittleBustersProducerHookInstallDecision : uint8_t {
  kRetryablePreflightFailure,
  kHookAttemptAllowed,
  kTerminalPartialFailure,
  kReady,
};

// Keep the lifecycle distinction pure and testable: validation happens before
// any HookFn call and may be retried; once installation starts, an incomplete
// hook set is terminal for this process.
inline LittleBustersProducerHookInstallDecision
DecideLittleBustersProducerHookInstall(
    bool preflight_validated, bool hook_attempt_started,
    bool hook_set_complete) {
  if (!hook_attempt_started) {
    return preflight_validated
               ? LittleBustersProducerHookInstallDecision::kHookAttemptAllowed
               : LittleBustersProducerHookInstallDecision::
                     kRetryablePreflightFailure;
  }
  return hook_set_complete
             ? LittleBustersProducerHookInstallDecision::kReady
             : LittleBustersProducerHookInstallDecision::
                   kTerminalPartialFailure;
}

// Process-local addresses decoded from the pinned worker's slot-copy
// instructions.  They are never serialized into calibration output.
struct LittleBustersConsumerWorkerContextAddresses {
  uintptr_t current_object = 0u;
  uintptr_t request_index = 0u;
  uintptr_t slot_0c_state = 0u;
  uintptr_t slot_10_mode = 0u;
  bool valid = false;
};

// Commit the decoded worker state only after every address was validated.  A
// partial decode is deliberately indistinguishable from no decode.
inline bool FinalizeLittleBustersConsumerWorkerContextAddresses(
    uintptr_t current_object, bool current_object_decoded,
    uintptr_t request_index, bool request_index_decoded,
    uintptr_t slot_0c_state, bool slot_0c_state_decoded,
    uintptr_t slot_10_mode, bool slot_10_mode_decoded,
    LittleBustersConsumerWorkerContextAddresses* output) {
  if (output == nullptr) return false;
  *output = {};
  if (!current_object_decoded || !request_index_decoded ||
      !slot_0c_state_decoded || !slot_10_mode_decoded ||
      current_object == 0u || request_index == 0u || slot_0c_state == 0u ||
      slot_10_mode == 0u) {
    return false;
  }
  output->current_object = current_object;
  output->request_index = request_index;
  output->slot_0c_state = slot_0c_state;
  output->slot_10_mode = slot_10_mode;
  output->valid = true;
  return true;
}

struct LittleBustersProducerHookSpec {
  uint32_t wrapper_rva = 0u;
  uint32_t ring_callsite_rva = 0u;
  uint32_t queue_rva = 0u;
  uint32_t queue_id = 0u;
  uint32_t argument_count = 0u;
};

// These are module-relative RVAs from the independently unpacked x86 image:
// the four queue globals are the live image's D85150/D85170/D85180/D85190
// addresses relative to its 006B0000 image base.  The values are identifiers
// for this pinned profile, never addresses written to the diagnostic file.
inline constexpr std::array<LittleBustersProducerHookSpec, 4>
    kLittleBustersProducerHookSpecs = {{
        {0x3E8A0u, 0x3E92Bu, 0x6D5150u, 0u, 1u},
        {0x3EC10u, 0x3EC84u, 0x6D5170u, 1u, 1u},
        {0x3ECC0u, 0x3ED34u, 0x6D5180u, 2u, 1u},
        {0x3EE00u, 0x3EEE5u, 0x6D5190u, 3u, 3u},
    }};

// Exact loaded-image signatures used before installing the temporary hooks.
// The callsite signatures include the post-call slot stores, which prevents a
// coincidental function/call boundary from being treated as the ring seam.
inline constexpr std::array<uint8_t, 19>
    kLittleBustersProducerRingPrefix = {{
        0x55u, 0x8Bu, 0xECu, 0x51u, 0x56u, 0x8Bu, 0x71u, 0x04u,
        0x85u, 0xF6u, 0x75u, 0x07u, 0x33u, 0xC0u, 0x5Eu, 0x8Bu,
        0xE5u, 0x5Du, 0xC3u,
    }};
inline constexpr std::array<uint8_t, 11>
    kLittleBustersProducerOneArgPrefix = {{
        0x55u, 0x8Bu, 0xECu, 0x51u, 0x56u, 0x8Bu, 0xD1u, 0x57u,
        0x8Bu, 0x7Du, 0x08u,
    }};
inline constexpr std::array<uint8_t, 13>
    kLittleBustersProducerThreeArgPrefix = {{
        0x55u, 0x8Bu, 0xECu, 0x83u, 0xECu, 0x08u, 0x53u, 0x56u,
        0x8Bu, 0xF1u, 0x57u, 0x8Bu, 0x7Du,
    }};
inline constexpr std::array<uint8_t, 23>
    kLittleBustersProducerOneArgPostFill = {{
        0x89u, 0x30u, 0x89u, 0x78u, 0x08u, 0x66u, 0x8Bu, 0x8Eu,
        0x2Cu, 0x04u, 0x00u, 0x00u, 0x66u, 0x89u, 0x48u, 0x0Cu,
        0xC7u, 0x40u, 0x10u, 0x00u, 0x00u, 0x00u, 0x00u,
    }};
inline constexpr std::array<uint8_t, 18>
    kLittleBustersProducerThreeArgPostFill = {{
        0x8Bu, 0x4Du, 0x08u, 0x89u, 0x08u, 0x8Bu, 0x4Du, 0x10u,
        0x89u, 0x78u, 0x08u, 0x66u, 0x89u, 0x58u, 0x0Cu, 0x89u,
        0x48u, 0x10u,
    }};

inline const LittleBustersProducerHookSpec*
FindLittleBustersProducerHookSpecByWrapper(uint32_t wrapper_rva) {
  for (const auto& spec : kLittleBustersProducerHookSpecs) {
    if (spec.wrapper_rva == wrapper_rva) return &spec;
  }
  return nullptr;
}

inline const LittleBustersProducerHookSpec*
FindLittleBustersProducerHookSpecByQueue(uint32_t queue_id) {
  for (const auto& spec : kLittleBustersProducerHookSpecs) {
    if (spec.queue_id == queue_id) return &spec;
  }
  return nullptr;
}

inline bool IsLittleBustersProducerWrapperRva(uint32_t wrapper_rva) {
  return FindLittleBustersProducerHookSpecByWrapper(wrapper_rva) != nullptr;
}

inline bool MatchesLittleBustersProducerBytes(const uint8_t* actual,
                                              size_t actual_bytes,
                                              const uint8_t* expected,
                                              size_t expected_bytes) {
  if (actual == nullptr || expected == nullptr || actual_bytes < expected_bytes) {
    return false;
  }
  for (size_t index = 0u; index < expected_bytes; ++index) {
    if (actual[index] != expected[index]) return false;
  }
  return true;
}

inline bool DecodeLittleBustersProducerRel32Call(
    const uint8_t* call_bytes, size_t call_bytes_count,
    uint32_t callsite_rva, uint32_t target_rva) {
  if (call_bytes == nullptr || call_bytes_count < 5u || call_bytes[0] != 0xE8u) {
    return false;
  }
  int32_t relative = 0;
  std::memcpy(&relative, call_bytes + 1u, sizeof(relative));
  const int64_t decoded = static_cast<int64_t>(callsite_rva) + 5ll + relative;
  return decoded >= 0ll && decoded <= static_cast<int64_t>(UINT32_MAX) &&
         static_cast<uint32_t>(decoded) == target_rva;
}

struct LittleBustersProducerSlotFields {
  uint32_t slot_0 = 0u;
  uint32_t slot_8 = 0u;
  uint32_t slot_0c = 0u;
  uint32_t slot_10 = 0u;
};

// 0x3F340 dispatches the audio worker to one of the four producer queues
// relevant to this profile.  State 5 selects another ring (D85160) that is
// intentionally not represented here; returning UINT32_MAX makes that path
// fail closed in the diagnostic recorder.
inline uint32_t LittleBustersConsumerQueueIdForState(uint32_t state) {
  switch (state) {
    case 2u:
      return 3u;
    case 3u:
      return 1u;
    case 4u:
      return 2u;
    case 5u:
      return UINT32_MAX;
    default:
      return 0u;
  }
}

struct LittleBustersProducerCorrelationFields {
  uint64_t enqueue_token = 0u;
  uint32_t queue_id = 0u;
  uint32_t slot_index = 0u;
  uint32_t slot_generation = 0u;
  bool slot_generation_valid = false;
  uint32_t request_index = 0u;
  uint32_t object_token = 0u;
};

inline bool IsLittleBustersProducerCorrelationMatch(
    const LittleBustersProducerCorrelationFields& producer,
    uint32_t queue_id, uint32_t slot_index, uint32_t request_index,
    uint32_t object_token) {
  // A nonzero process-local object token is required.  Without it, a reused
  // ring slot/request pair is not distinguishable and must remain unmatched.
  return producer.enqueue_token != 0u && producer.queue_id == queue_id &&
         producer.slot_index == slot_index &&
         producer.request_index == request_index && object_token != 0u &&
         producer.object_token == object_token;
}

struct LittleBustersConsumerCalibrationFields {
  uint64_t tick_ms = 0u;
  uint32_t thread_id = 0u;
  uint32_t consumer_rva = 0u;
  uint32_t consumer_callsite_rva = 0u;
  uint32_t consumer_state = 0u;
  uint32_t queue_id = UINT32_MAX;
  uint32_t queue_rva = 0u;
  uint32_t slot_index = 0u;
  uint32_t slot_generation = 0u;
  bool slot_generation_valid = false;
  uint32_t request_index = 0u;
  uint32_t slot_0_object_token = 0u;
  uint32_t slot_8_request_index = 0u;
  uint32_t slot_0c_state = 0u;
  uint32_t slot_10_mode = 0u;
  uint32_t object_vtable_rva = 0u;
  uint32_t object_field_valid_mask = 0u;
  uint32_t object_428 = 0u;
  uint32_t object_42c = 0u;
  uint32_t object_434 = 0u;
  uint32_t object_438 = 0u;
  uint32_t producer_match_count = 0u;
  uint64_t enqueue_token = 0u;
  bool enqueue_token_matched = false;
  uint64_t baseline_text_write_count = 0u;
  uint64_t baseline_seq = 0u;
  uint64_t selected_text_thread_id = 0u;
};

enum LittleBustersConsumerWorkerSnapshotField : uint32_t {
  kLittleBustersWorkerSnapshotThread = 1u << 0,
  kLittleBustersWorkerSnapshotConsumerState = 1u << 1,
  kLittleBustersWorkerSnapshotRequestIndex = 1u << 2,
  kLittleBustersWorkerSnapshotObject = 1u << 3,
  kLittleBustersWorkerSnapshotSlot0c = 1u << 4,
  kLittleBustersWorkerSnapshotSlot10 = 1u << 5,
};

inline constexpr uint32_t kLittleBustersWorkerSnapshotAllFields =
    kLittleBustersWorkerSnapshotThread |
    kLittleBustersWorkerSnapshotConsumerState |
    kLittleBustersWorkerSnapshotRequestIndex |
    kLittleBustersWorkerSnapshotObject |
    kLittleBustersWorkerSnapshotSlot0c |
    kLittleBustersWorkerSnapshotSlot10;

enum LittleBustersConsumerWorkerContextMismatch : uint32_t {
  kLittleBustersConsumerMismatchThread = 1u << 0,
  kLittleBustersConsumerMismatchState = 1u << 1,
  kLittleBustersConsumerMismatchRequest = 1u << 2,
  kLittleBustersConsumerMismatchObject = 1u << 3,
  kLittleBustersConsumerMismatchSlot0c = 1u << 4,
  kLittleBustersConsumerMismatchMode = 1u << 5,
};

inline uint32_t ClassifyLittleBustersConsumerWorkerContextMismatch(
    const LittleBustersConsumerCalibrationFields& candidate,
    uint32_t worker_thread_id, uint32_t worker_consumer_state,
    uint32_t worker_request_index, uint32_t worker_object_token,
    uint32_t worker_slot_0c_state, uint32_t worker_slot_10_mode) {
  uint32_t mismatch = 0u;
  if (candidate.thread_id != worker_thread_id) {
    mismatch |= kLittleBustersConsumerMismatchThread;
  }
  if (candidate.consumer_state != worker_consumer_state) {
    mismatch |= kLittleBustersConsumerMismatchState;
  }
  if (candidate.request_index != worker_request_index ||
      candidate.slot_8_request_index != worker_request_index) {
    mismatch |= kLittleBustersConsumerMismatchRequest;
  }
  if (candidate.slot_0_object_token == 0u ||
      candidate.slot_0_object_token != worker_object_token) {
    mismatch |= kLittleBustersConsumerMismatchObject;
  }
  if (static_cast<uint16_t>(candidate.slot_0c_state) !=
      static_cast<uint16_t>(worker_slot_0c_state)) {
    mismatch |= kLittleBustersConsumerMismatchSlot0c;
  }
  if (candidate.slot_10_mode != worker_slot_10_mode) {
    mismatch |= kLittleBustersConsumerMismatchMode;
  }
  return mismatch;
}

// Identity matching deliberately excludes slot_10_mode.  The pinned worker
// reuses that global after select, so it remains useful for diagnostics but is
// not a stable identity field at the VOICE ReadFile boundary.
inline constexpr uint32_t kLittleBustersConsumerWorkerIdentityMismatchMask =
    kLittleBustersConsumerMismatchThread |
    kLittleBustersConsumerMismatchState |
    kLittleBustersConsumerMismatchRequest |
    kLittleBustersConsumerMismatchObject |
    kLittleBustersConsumerMismatchSlot0c;

inline uint32_t ClassifyLittleBustersConsumerWorkerContextIdentityMismatch(
    const LittleBustersConsumerCalibrationFields& candidate,
    uint32_t worker_thread_id, uint32_t worker_consumer_state,
    uint32_t worker_request_index, uint32_t worker_object_token,
    uint32_t worker_slot_0c_state) {
  uint32_t mismatch = 0u;
  if (candidate.thread_id != worker_thread_id) {
    mismatch |= kLittleBustersConsumerMismatchThread;
  }
  if (candidate.consumer_state != worker_consumer_state) {
    mismatch |= kLittleBustersConsumerMismatchState;
  }
  if (candidate.request_index != worker_request_index ||
      candidate.slot_8_request_index != worker_request_index) {
    mismatch |= kLittleBustersConsumerMismatchRequest;
  }
  if (candidate.slot_0_object_token == 0u ||
      candidate.slot_0_object_token != worker_object_token) {
    mismatch |= kLittleBustersConsumerMismatchObject;
  }
  if (static_cast<uint16_t>(candidate.slot_0c_state) !=
      static_cast<uint16_t>(worker_slot_0c_state)) {
    mismatch |= kLittleBustersConsumerMismatchSlot0c;
  }
  return mismatch & kLittleBustersConsumerWorkerIdentityMismatchMask;
}

// This is an in-process diagnostic projection of a consumer context.  It is
// intentionally separate from the JSON consumer record so a voice_read can
// carry only a deterministic, unique side-table match.  A non-unique match is
// represented by match_count > 1 and no copied identity fields.
struct LittleBustersVoiceReadConsumerContextFields {
  uint32_t match_count = 0u;
  bool context_matched = false;
  uint64_t enqueue_token = 0u;
  bool enqueue_token_matched = false;
  uint32_t queue_id = UINT32_MAX;
  uint32_t queue_rva = 0u;
  uint32_t slot_index = UINT32_MAX;
  uint32_t slot_generation = 0u;
  bool slot_generation_valid = false;
  uint32_t request_index = 0u;
  uint32_t object_token = 0u;
  uint32_t consumer_state = 0u;
  uint32_t slot_0c_state = 0u;
  uint32_t slot_10_mode = 0u;
  bool worker_context_layout_valid = false;
  bool worker_snapshot_valid = false;
  uint32_t worker_snapshot_valid_mask = 0u;
  uint32_t worker_read_thread_id = 0u;
  uint32_t worker_consumer_state = 0u;
  uint32_t worker_request_index = 0u;
  uint32_t worker_object_token = 0u;
  uint32_t worker_slot_0c_state = 0u;
  uint32_t worker_slot_10_mode = 0u;
  uint32_t live_context_count = 0u;
  uint32_t same_thread_context_count = 0u;
  uint32_t same_thread_select_count = 0u;
  bool same_thread_candidate_available = false;
  uint32_t candidate_queue_id = UINT32_MAX;
  uint32_t candidate_queue_rva = 0u;
  uint32_t candidate_slot_index = UINT32_MAX;
  uint32_t candidate_slot_generation = 0u;
  bool candidate_slot_generation_valid = false;
  uint32_t candidate_request_index = 0u;
  uint32_t candidate_object_token = 0u;
  uint32_t candidate_consumer_state = 0u;
  uint32_t candidate_slot_0c_state = 0u;
  uint32_t candidate_slot_10_mode = 0u;
  uint64_t candidate_enqueue_token = 0u;
  bool candidate_enqueue_token_matched = false;
  bool candidate_mismatch_available = false;
  uint32_t candidate_mismatch_mask = 0u;
};

inline bool IsLittleBustersConsumerWorkerContextMatch(
    const LittleBustersConsumerCalibrationFields& candidate,
    uint32_t thread_id, uint32_t consumer_state, uint32_t request_index,
    uint32_t object_token, uint32_t slot_0c_state, uint32_t slot_10_mode) {
  (void)slot_10_mode;
  if (candidate.consumer_rva != kLittleBustersProducerConsumerSelectRva ||
      candidate.queue_id == UINT32_MAX ||
      candidate.slot_index == UINT32_MAX || candidate.request_index != request_index ||
      candidate.slot_8_request_index != request_index) {
    return false;
  }
  return ClassifyLittleBustersConsumerWorkerContextIdentityMismatch(
             candidate, thread_id, consumer_state, request_index, object_token,
             slot_0c_state) == 0u;
}

inline const char* LittleBustersConsumerBoundaryName(uint32_t consumer_rva) {
  if (consumer_rva == kLittleBustersProducerConsumerSelectRva) {
    return "select";
  }
  if (consumer_rva == kLittleBustersProducerConsumerAdvanceRva) {
    return "advance_dispatch";
  }
  if (consumer_rva == kLittleBustersProducerRingAdvanceRva) {
    return "advance_ring";
  }
  return "unknown";
}

inline bool FormatLittleBustersConsumerCalibrationJson(
    uint32_t record_index, const LittleBustersConsumerCalibrationFields& fields,
    char* output, size_t capacity, size_t* output_bytes) {
  if (output == nullptr || output_bytes == nullptr || capacity == 0u) {
    return false;
  }
  const int written = std::snprintf(
      output, capacity,
      "{\"schema\":\"fushi-lb-voice-caller-calibration-v1\","
      "\"record_index\":%u,\"kind\":\"consumer_dequeue\","
      "\"tick_ms\":%llu,\"thread_id\":%u,"
      "\"consumer_rva\":%u,\"consumer_callsite_rva\":%u,"
      "\"consumer_boundary\":\"%s\",\"consumer_state\":%u,"
      "\"queue_id\":%u,\"queue_rva\":%u,"
      "\"slot_index\":%u,\"slot_generation\":%u,"
      "\"slot_generation_valid\":%s,\"request_index\":%u,"
      "\"slot_0_object_token\":%u,\"slot_8_request_index\":%u,"
      "\"slot_0c_state\":%u,\"slot_10_mode\":%u,"
      "\"object_vtable_rva\":%u,\"object_field_valid_mask\":%u,"
      "\"object_428\":%u,\"object_42c\":%u,\"object_434\":%u,"
      "\"object_438\":%u,\"producer_match_count\":%u,"
      "\"enqueue_token\":%llu,\"enqueue_token_matched\":%s,"
      "\"baseline_text_write_count\":%llu,\"baseline_seq\":%llu,"
      "\"selected_text_thread_id\":%llu,"
      "\"member_identity_available\":false}\n",
      record_index, static_cast<unsigned long long>(fields.tick_ms),
      fields.thread_id, fields.consumer_rva, fields.consumer_callsite_rva,
      LittleBustersConsumerBoundaryName(fields.consumer_rva),
      fields.consumer_state, fields.queue_id, fields.queue_rva,
      fields.slot_index, fields.slot_generation,
      fields.slot_generation_valid ? "true" : "false", fields.request_index,
      fields.slot_0_object_token, fields.slot_8_request_index,
      fields.slot_0c_state, fields.slot_10_mode, fields.object_vtable_rva,
      fields.object_field_valid_mask, fields.object_428, fields.object_42c,
      fields.object_434, fields.object_438, fields.producer_match_count,
      static_cast<unsigned long long>(fields.enqueue_token),
      fields.enqueue_token_matched ? "true" : "false",
      static_cast<unsigned long long>(fields.baseline_text_write_count),
      static_cast<unsigned long long>(fields.baseline_seq),
      static_cast<unsigned long long>(fields.selected_text_thread_id));
  if (written < 0 || static_cast<size_t>(written) >= capacity) return false;
  *output_bytes = static_cast<size_t>(written);
  return true;
}

inline bool ParseLittleBustersProducerSlotFields(
    const uint32_t* words, size_t word_count,
    LittleBustersProducerSlotFields* output) {
  if (words == nullptr || output == nullptr || word_count < 5u) return false;
  output->slot_0 = words[0];
  output->slot_8 = words[2];
  output->slot_0c = words[3];
  output->slot_10 = words[4];
  return true;
}

struct LittleBustersProducerObjectTokenBook {
  uintptr_t objects[kLittleBustersProducerObjectTokenSlots] = {};
  uint32_t tokens[kLittleBustersProducerObjectTokenSlots] = {};
  size_t count = 0u;
  uint32_t next_token = 1u;

  uint32_t FindOrAssign(uintptr_t object) {
    if (object == 0u) return 0u;
    for (size_t index = 0u; index < count; ++index) {
      if (objects[index] == object) return tokens[index];
    }
    if (count >= kLittleBustersProducerObjectTokenSlots || next_token == 0u) {
      return 0u;
    }
    objects[count] = object;
    tokens[count] = next_token++;
    ++count;
    return tokens[count - 1u];
  }

  void Reset() {
    for (size_t index = 0u; index < count; ++index) {
      objects[index] = 0u;
      tokens[index] = 0u;
    }
    count = 0u;
    next_token = 1u;
  }
};

struct LittleBustersProducerCalibrationBudget {
  size_t records = 0u;
  size_t bytes = 0u;

  bool TryConsume(size_t line_bytes) {
    if (line_bytes == 0u || line_bytes > kLittleBustersProducerCalibrationMaxBytes ||
        records >= kLittleBustersProducerCalibrationMaxRecords ||
        bytes > kLittleBustersProducerCalibrationMaxBytes - line_bytes) {
      return false;
    }
    ++records;
    bytes += line_bytes;
    return true;
  }
};

// This view contains no raw object/queue pointers.  Keeping the formatter
// pure also lets the synthetic test prove that only bounded metadata reaches
// the JSONL sink.
struct LittleBustersProducerCalibrationFields {
  uint64_t tick_ms = 0u;
  uint32_t thread_id = 0u;
  uint64_t enqueue_token = 0u;
  uint32_t wrapper_rva = 0u;
  uint32_t callsite_rva = 0u;
  uint32_t ring_enqueue_rva = kLittleBustersProducerRingEnqueueRva;
  uint32_t ring_callsite_rva = 0u;
  uint32_t queue_id = 0u;
  uint32_t queue_rva = 0u;
  uint32_t slot_index = 0u;
  uint32_t slot_generation = 0u;
  bool slot_generation_valid = false;
  uint32_t request_index = 0u;
  uint32_t mode_arg = 0u;
  uint32_t extra_arg = 0u;
  uint32_t slot_0_object_token = 0u;
  uint32_t slot_8_request_index = 0u;
  uint32_t slot_0c_state = 0u;
  uint32_t slot_10_mode = 0u;
  uint32_t object_vtable_rva = 0u;
  uint32_t object_field_valid_mask = 0u;
  uint32_t object_428 = 0u;
  uint32_t object_42c = 0u;
  uint32_t object_434 = 0u;
  uint32_t object_438 = 0u;
  uint64_t baseline_text_write_count = 0u;
  uint64_t baseline_seq = 0u;
  uint64_t selected_text_thread_id = 0u;
};

inline bool FormatLittleBustersProducerCalibrationJson(
    uint32_t record_index, const LittleBustersProducerCalibrationFields& fields,
    char* output, size_t capacity, size_t* output_bytes) {
  if (output == nullptr || output_bytes == nullptr || capacity == 0u) return false;
  const int written = std::snprintf(
      output, capacity,
      "{\"schema\":\"fushi-lb-voice-caller-calibration-v1\","
      "\"record_index\":%u,\"kind\":\"producer_enqueue\","
      "\"tick_ms\":%llu,\"thread_id\":%u,\"enqueue_token\":%llu,"
      "\"producer_wrapper_rva\":%u,\"producer_callsite_rva\":%u,"
      "\"ring_enqueue_rva\":%u,\"ring_callsite_rva\":%u,"
      "\"queue_id\":%u,\"queue_rva\":%u,"
      "\"slot_index\":%u,\"slot_generation\":%u,"
      "\"slot_generation_valid\":%s,\"request_index\":%u,"
      "\"mode_arg\":%u,\"extra_arg\":%u,"
      "\"slot_0_object_token\":%u,\"slot_8_request_index\":%u,"
      "\"slot_0c_state\":%u,\"slot_10_mode\":%u,"
      "\"object_vtable_rva\":%u,\"object_field_valid_mask\":%u,"
      "\"object_428\":%u,\"object_42c\":%u,\"object_434\":%u,"
      "\"object_438\":%u,\"baseline_text_write_count\":%llu,"
      "\"baseline_seq\":%llu,\"selected_text_thread_id\":%llu,"
      "\"member_identity_available\":false}\n",
      record_index, static_cast<unsigned long long>(fields.tick_ms),
      fields.thread_id, static_cast<unsigned long long>(fields.enqueue_token),
      fields.wrapper_rva, fields.callsite_rva, fields.ring_enqueue_rva,
      fields.ring_callsite_rva, fields.queue_id, fields.queue_rva,
      fields.slot_index,
      fields.slot_generation, fields.slot_generation_valid ? "true" : "false",
      fields.request_index, fields.mode_arg, fields.extra_arg,
      fields.slot_0_object_token, fields.slot_8_request_index,
      fields.slot_0c_state, fields.slot_10_mode, fields.object_vtable_rva,
      fields.object_field_valid_mask, fields.object_428, fields.object_42c,
      fields.object_434, fields.object_438,
      static_cast<unsigned long long>(fields.baseline_text_write_count),
      static_cast<unsigned long long>(fields.baseline_seq),
      static_cast<unsigned long long>(fields.selected_text_thread_id));
  if (written < 0 || static_cast<size_t>(written) >= capacity) return false;
  *output_bytes = static_cast<size_t>(written);
  return true;
}

// The hook captures a few more frames than it publishes so that helper/DLL
// frames can be discarded while still retaining the game frame above the
// generic ReadFile wrapper.  Only the six module-relative RVAs below ever
// enter the calibration record or JSONL sink.
inline constexpr uint32_t kLittleBustersCalibrationCaptureStackFrames = 32u;

struct CalibrationStackTrace {
  uint32_t rvas[kLittleBustersCalibrationMaxStackRvas] = {};
  uint32_t count = 0u;
  uint32_t valid_mask = 0u;
};

inline CalibrationStackTrace FilterCalibrationStackRvas(
    const uintptr_t* return_addresses, size_t address_count,
    uintptr_t module_base, size_t module_image_bytes) {
  CalibrationStackTrace trace;
  if (return_addresses == nullptr || module_base == 0u ||
      module_image_bytes == 0u) {
    return trace;
  }
  for (size_t index = 0u;
       index < address_count && trace.count < kLittleBustersCalibrationMaxStackRvas;
       ++index) {
    const uintptr_t address = return_addresses[index];
    if (address == 0u || address < module_base) continue;
    const uintptr_t rva = address - module_base;
    if (rva >= module_image_bytes || rva > UINT32_MAX) continue;
    trace.rvas[trace.count] = static_cast<uint32_t>(rva);
    trace.valid_mask |= 1u << trace.count;
    ++trace.count;
  }
  return trace;
}

inline bool FormatCalibrationStackRvaJson(
    const uint32_t* rvas, uint32_t count, char* output, size_t capacity,
    size_t* output_bytes) {
  if (rvas == nullptr || output == nullptr || output_bytes == nullptr ||
      capacity == 0u || count > kLittleBustersCalibrationMaxStackRvas) {
    return false;
  }
  size_t used = 0u;
  int written = std::snprintf(output, capacity, "[");
  if (written < 0 || static_cast<size_t>(written) >= capacity) return false;
  used = static_cast<size_t>(written);
  for (uint32_t index = 0u; index < count; ++index) {
    written = std::snprintf(output + used, capacity - used, "%s%u",
                            index == 0u ? "" : ",", rvas[index]);
    if (written < 0 || static_cast<size_t>(written) >= capacity - used) {
      return false;
    }
    used += static_cast<size_t>(written);
  }
  written = std::snprintf(output + used, capacity - used, "]");
  if (written < 0 || static_cast<size_t>(written) >= capacity - used) {
    return false;
  }
  used += static_cast<size_t>(written);
  *output_bytes = used;
  return true;
}

struct CalibrationTraceBudget {
  size_t records = 0u;
  size_t bytes = 0u;

  bool TryConsume(size_t line_bytes) {
    if (line_bytes == 0u || line_bytes > kLittleBustersCalibrationMaxBytes ||
        records >= kLittleBustersCalibrationMaxRecords ||
        bytes > kLittleBustersCalibrationMaxBytes - line_bytes) {
      return false;
    }
    ++records;
    bytes += line_bytes;
    return true;
  }
};

// TextSlot snapshots are polled repeatedly.  Keep every seq seen during the
// bounded run so a wrapped/reordered snapshot cannot duplicate a text record.
struct CalibrationTraceTextDedup {
  uint64_t seqs[kLittleBustersCalibrationMaxRecords] = {};
  size_t count = 0u;

  bool SeenOrRemember(uint64_t seq) {
    if (seq == 0u) return true;
    for (size_t index = 0u; index < count; ++index) {
      if (seqs[index] == seq) return true;
    }
    if (count < kLittleBustersCalibrationMaxRecords) {
      seqs[count++] = seq;
    }
    return false;
  }

  void Reset() {
    for (size_t index = 0u; index < count; ++index) seqs[index] = 0u;
    count = 0u;
  }
};

}  // namespace fushi_voice_hook::little_busters
