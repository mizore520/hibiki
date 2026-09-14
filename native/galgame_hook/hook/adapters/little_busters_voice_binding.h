#pragma once

#include <cstddef>
#include <cstdint>
#include <cwchar>

#include "little_busters_voice_profile.h"

namespace fushi_voice_hook::little_busters {

inline constexpr uint64_t kLittleBustersForwardPairWindowMs = 1500u;

// The shared ReadFile seam exposes a return address, but the pinned runtime
// proved that caller identity is shared by cache and dialogue reads.  Keep
// caller-only classification permanently unclassified; production admission
// below is based on the complete consumer/resource evidence instead.
enum class VoiceResourceReadRole : uint8_t {
  kUnknown,
  kDialogueOnDemand,
};

inline VoiceResourceReadRole ClassifyLittleBustersVoiceReadRole(
    uintptr_t caller_rva) {
  (void)caller_rva;
  return VoiceResourceReadRole::kUnknown;
}

// Evidence required before a VOICE member can enter the production resource
// path.  This is deliberately a small value object so the adapter can pass
// the one immutable consumer snapshot captured at the ReadFile boundary to
// both diagnostics and admission without recapturing it.
struct LittleBustersVoiceReadAdmissionEvidence {
  bool member_mapped = false;
  uint32_t member_id = 0u;
  bool consumer_snapshot_valid = false;
  bool context_matched = false;
  uint32_t match_count = 0u;
  bool enqueue_token_matched = false;
  uint64_t enqueue_token = 0u;
  uint32_t request_index = 0u;
  uint32_t queue_id = UINT32_MAX;
  uint32_t slot_index = UINT32_MAX;
  uint32_t object_token = 0u;
  bool slot_generation_valid = false;
};

inline VoiceResourceReadRole ClassifyLittleBustersVoiceReadAdmission(
    const LittleBustersVoiceReadAdmissionEvidence& evidence) {
  if (!evidence.member_mapped || !evidence.consumer_snapshot_valid ||
      !evidence.context_matched || evidence.match_count != 1u ||
      !evidence.enqueue_token_matched || evidence.enqueue_token == 0u ||
      evidence.member_id != evidence.request_index ||
      evidence.queue_id == UINT32_MAX || evidence.slot_index == UINT32_MAX ||
      evidence.object_token == 0u || !evidence.slot_generation_valid) {
    return VoiceResourceReadRole::kUnknown;
  }
  return VoiceResourceReadRole::kDialogueOnDemand;
}

struct VoicePendingResource {
  uint64_t resource_tick_ms = 0u;
  uint64_t deadline_ms = 0u;
  uint64_t baseline_text_seq = 0u;
  uint64_t thread_id = 0u;
  VoiceResourceReadRole read_role = VoiceResourceReadRole::kUnknown;
};

struct VoiceTextCandidate {
  uint64_t seq = 0u;
  uint64_t timestamp_ms = 0u;
  uint64_t thread_id = 0u;
  uint32_t byte_len = 0u;
  uint32_t source_kind = 0u;
  uint32_t event_kind = 0u;
  bool exact_hook_code = false;
  uint64_t raw_context2 = 0u;
};

// The exact pinned MESSAGE hook carries its uint16 voice id in raw ctx2.  A
// zero id is a valid, explicit no-voice result; malformed/non-LB events are
// rejected instead of being turned into member 0 or a neighboring resource.
inline bool ResolveLittleBustersMessageVoiceId(
    const VoiceTextCandidate& candidate, uint32_t* voice_id) {
  if (voice_id == nullptr || candidate.seq == 0u ||
      candidate.timestamp_ms == 0u || candidate.byte_len == 0u ||
      candidate.source_kind != 2u || candidate.event_kind != 0u ||
      !candidate.exact_hook_code) {
    return false;
  }
  return DecodeLittleBustersVoiceId(candidate.raw_context2, voice_id);
}

enum class VoicePairState : uint8_t {
  kWait,
  kMatched,
  kUnselected,
  kExpired,
  kAmbiguous,
  kUnclassified,
};

struct VoicePairDecision {
  uint32_t pending_index = 0u;
  VoicePairState state = VoicePairState::kWait;
  uint64_t text_event_id = 0u;
};

inline bool IsLittleBustersExactHookCode(const wchar_t* hook_code) {
  if (hook_code == nullptr) return false;
  constexpr size_t kExpectedLength =
      sizeof(kLittleBustersTextHookCode) / sizeof(wchar_t) - 1u;
  size_t index = 0u;
  while (index < 127u && hook_code[index] != L'\0') {
    if (index >= kExpectedLength ||
        hook_code[index] != kLittleBustersTextHookCode[index]) {
      return false;
    }
    ++index;
  }
  if (index >= 127u) return false;
  return hook_code[index] == L'\0' && index == kExpectedLength;
}

inline bool IsLittleBustersEligibleText(const VoiceTextCandidate& candidate,
                                        const VoicePendingResource& pending) {
  return pending.read_role == VoiceResourceReadRole::kDialogueOnDemand &&
         candidate.seq > pending.baseline_text_seq &&
         candidate.timestamp_ms >= pending.resource_tick_ms &&
         candidate.timestamp_ms <= pending.deadline_ms &&
         candidate.thread_id != 0u && candidate.thread_id == pending.thread_id &&
         candidate.byte_len != 0u && candidate.source_kind == 2u &&
         candidate.event_kind == 0u && candidate.exact_hook_code;
}

inline size_t ResolveLittleBustersPendingResources(
    const VoicePendingResource* pending, size_t pending_count,
    const VoiceTextCandidate* candidates, size_t candidate_count,
    uint64_t now_ms, VoicePairDecision* decisions, size_t decision_capacity) {
  if (pending == nullptr || decisions == nullptr ||
      decision_capacity < pending_count) {
    return 0u;
  }
  size_t decision_count = 0u;
  for (size_t pending_index = 0u;
       pending_index < pending_count && decision_count < decision_capacity;
       ++pending_index) {
    VoicePairDecision decision;
    decision.pending_index = static_cast<uint32_t>(pending_index);
    const VoicePendingResource& resource = pending[pending_index];
    if (resource.read_role != VoiceResourceReadRole::kDialogueOnDemand) {
      // An archive/member identity alone is not semantic ownership.  In
      // particular, a single unclassified prefetch must not claim the next
      // narration line.
      decision.state = VoicePairState::kUnclassified;
    } else if (resource.thread_id == 0u) {
      decision.state = VoicePairState::kUnselected;
    } else {
      const VoiceTextCandidate* best = nullptr;
      for (size_t candidate_index = 0u; candidate_index < candidate_count;
           ++candidate_index) {
        const VoiceTextCandidate& candidate = candidates[candidate_index];
        if (!IsLittleBustersEligibleText(candidate, resource) ||
            (best != nullptr && candidate.seq >= best->seq)) {
          continue;
        }
        best = &candidate;
      }
      if (best != nullptr) {
        decision.state = VoicePairState::kMatched;
        decision.text_event_id = best->seq;
      } else if (now_ms >= resource.deadline_ms) {
        decision.state = VoicePairState::kExpired;
      } else {
        decision.state = VoicePairState::kWait;
      }
    }
    decisions[decision_count++] = decision;
  }

  // If two distinct resource reads can claim the same next line, there is no
  // semantic ownership proof. Reject both instead of making FIFO a guess.
  for (size_t left = 0u; left < decision_count; ++left) {
    if (decisions[left].state != VoicePairState::kMatched) continue;
    for (size_t right = left + 1u; right < decision_count; ++right) {
      if (decisions[right].state == VoicePairState::kMatched &&
          decisions[left].text_event_id == decisions[right].text_event_id) {
        decisions[left].state = VoicePairState::kAmbiguous;
        decisions[right].state = VoicePairState::kAmbiguous;
        decisions[left].text_event_id = 0u;
        decisions[right].text_event_id = 0u;
      }
    }
  }
  return decision_count;
}

}  // namespace fushi_voice_hook::little_busters
