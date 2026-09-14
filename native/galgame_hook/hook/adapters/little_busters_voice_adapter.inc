// Little Busters! English Edition 1.2.4.0 resource adapter.
//
// TextSlot::thread_context2 is the pinned MESSAGE.voiceId bridge.  Production
// output is therefore driven by the selected exact text event; the shared
// ReadFile observer remains diagnostic-only because Luca prefetches VOICE0.

constexpr size_t kLittleBustersVoicePathChars = 520u;
constexpr int kLittleBustersVoiceArchiveSlots = 2;
constexpr int kLittleBustersVoiceHandleSlots = 32;
constexpr int kLittleBustersVoiceTaskSlots = 32;
constexpr int kLittleBustersVoicePendingSlots = 16;
constexpr int kLittleBustersDirectVoiceEventSlots = 128;
constexpr DWORD kLittleBustersProfileRetryIntervalMs = 1000u;

struct LittleBustersFileIdentity {
  DWORD volume_serial = 0;
  DWORD file_index_high = 0;
  DWORD file_index_low = 0;
  uint64_t file_bytes = 0;
};

struct LittleBustersVoiceArchive {
  wchar_t path[kLittleBustersVoicePathChars] = {};
  LittleBustersFileIdentity identity;
  fushi_voice_hook::little_busters::VoicePakArchiveInfo info;
  fushi_voice_hook::little_busters::VoicePakEntry* entries = nullptr;
};

struct LittleBustersVoiceHandle {
  HANDLE handle = INVALID_HANDLE_VALUE;
  volatile LONG seq = 0;
  uint32_t archive_index = UINT32_MAX;
};

struct LittleBustersVoiceTask {
  volatile LONG state = 0;  // 0=empty, 1=producer, 2=queued, 3=worker
  uint64_t resource_tick_ms = 0;
  uint64_t baseline_text_seq = 0;
  uint64_t selected_thread_id = 0;
  uint64_t offset = 0;
  uint32_t read_bytes = 0;
  uint32_t archive_index = 0;
  uintptr_t caller_rva = 0;
  DWORD read_thread_id = 0;
  fushi_voice_hook::little_busters::VoiceResourceReadRole read_role =
      fushi_voice_hook::little_busters::VoiceResourceReadRole::kUnknown;
};

struct LittleBustersPendingVoice {
  bool used = false;
  fushi_voice_hook::little_busters::VoicePendingResource pairing;
  uint32_t archive_index = 0;
  uint32_t member_id = 0;
  uint64_t member_offset = 0;
  uint32_t member_length = 0;
  uint32_t sample_rate = 0;
  uint8_t* ogg = nullptr;
  uint32_t ogg_bytes = 0;
};

volatile LONG g_little_busters_profile_state = 0;  // 0=unknown, +1=match, -1=reject
volatile LONG g_little_busters_profile_last_tick = 0;
volatile LONG g_little_busters_enabled = 0;
LittleBustersVoiceArchive
    g_little_busters_archives[kLittleBustersVoiceArchiveSlots] = {};
volatile LONG g_little_busters_archive_count = 0;
LittleBustersVoiceHandle
    g_little_busters_handles[kLittleBustersVoiceHandleSlots] = {};
LittleBustersVoiceTask g_little_busters_tasks[kLittleBustersVoiceTaskSlots] = {};
LittleBustersPendingVoice
    g_little_busters_pending[kLittleBustersVoicePendingSlots] = {};

// Worker-only bounded de-duplication for the direct MESSAGE -> VOICE0 path.
// The native seq is the event identity; raw ctx2 is retained so malformed or
// conflicting snapshots are never silently retried as another voice.
struct LittleBustersDirectVoiceEvent {
  bool used = false;
  uint64_t text_seq = 0u;
  uint64_t raw_voice_id = 0u;
};

LittleBustersDirectVoiceEvent g_little_busters_direct_voice_events[
    kLittleBustersDirectVoiceEventSlots] = {};
volatile LONGLONG g_little_busters_direct_text_baseline_seq = 0;
volatile LONG g_little_busters_direct_text_baseline_valid = 0;

// Temporary caller calibration is diagnostic-only.  ReadFile detours reserve
// one fixed metadata slot and publish it without allocating or opening a file;
// the HookWorker poll below is the only writer of the JSONL sink.  This keeps
// the game I/O path lock-free and preserves the production role gate.
enum class LittleBustersCalibrationRecordKind : uint32_t {
  kVoiceRead = 1u,
  kTextEvent = 2u,
  kProducerEnqueue = 3u,
  kConsumerDequeue = 4u,
};

struct LittleBustersCalibrationRecord {
  volatile LONG state = 0;  // 0=free, 1=published, 2=flushed
  uint32_t kind = 0;
  uint32_t record_index = 0;
  uint64_t tick_ms = 0;
  uint64_t caller_rva = 0;
  uint32_t archive_index = 0;
  uint32_t read_bytes = 0;
  uint64_t read_offset = 0;
  uint32_t read_thread_id = 0;
  uint32_t member_mapped = 0;
  uint32_t member_id = 0;
  uint32_t member_index = 0;
  uint64_t member_offset = 0;
  uint32_t member_length = 0;
  uint32_t read_role = 0;
  uint64_t baseline_text_write_count = 0;
  uint64_t baseline_seq = 0;
  uint64_t selected_text_thread_id = 0;
  uint64_t text_seq = 0;
  uint64_t text_timestamp_ms = 0;
  uint64_t text_thread_id = 0;
  uint64_t text_thread_context2 = 0;
  uint32_t text_voice_id = 0;
  uint32_t text_voice_id_valid = 0;
  uint32_t source_kind = 0;
  uint32_t event_kind = 0;
  uint32_t text_byte_len = 0;
  uint32_t exact_hook_code = 0;
  uint32_t stack_rva_count = 0;
  uint32_t stack_rva_valid_mask = 0;
  uint32_t stack_rva[
      fushi_voice_hook::little_busters::kLittleBustersCalibrationMaxStackRvas] =
      {};
  fushi_voice_hook::little_busters::LittleBustersProducerCalibrationFields
      producer;
  fushi_voice_hook::little_busters::LittleBustersConsumerCalibrationFields
      consumer;
  fushi_voice_hook::little_busters::LittleBustersVoiceReadConsumerContextFields
      consumer_context;
};

LittleBustersCalibrationRecord
    g_little_busters_calibration_records[
        fushi_voice_hook::little_busters::
            kLittleBustersCalibrationMaxRecords] = {};
volatile LONG g_little_busters_calibration_next = 0;
volatile LONG g_little_busters_calibration_flushed = 0;
HANDLE g_little_busters_calibration_file = INVALID_HANDLE_VALUE;
bool g_little_busters_calibration_file_full = false;
bool g_little_busters_calibration_io_failed = false;
fushi_voice_hook::little_busters::CalibrationTraceBudget
    g_little_busters_calibration_budget;
fushi_voice_hook::little_busters::CalibrationTraceTextDedup
    g_little_busters_calibration_text_dedup;

// Producer records share the existing 512-record/128 KiB sink, with a
// separate smaller admission cap so a noisy internal queue cannot consume the
// whole caller/text calibration budget.
volatile LONG g_little_busters_producer_calibration_next = 0;
volatile LONG g_little_busters_producer_trace_enabled = 0;
volatile LONG g_little_busters_producer_hook_state =
    0;  // 0=retryable/not tried, +1=ready, -1=partial install terminal
volatile LONGLONG g_little_busters_enqueue_token = 0;
volatile LONG g_little_busters_consumer_calibration_next = 0;

constexpr size_t kLittleBustersProducerCorrelationSlots =
    fushi_voice_hook::little_busters::kLittleBustersProducerCorrelationSlots;

struct LittleBustersProducerCorrelationSlot {
  volatile LONG state = 0;  // 0=free, 1=writer, 2=published, 3=reader
  fushi_voice_hook::little_busters::LittleBustersProducerCorrelationFields
      fields;
};

LittleBustersProducerCorrelationSlot g_little_busters_correlations[
    kLittleBustersProducerCorrelationSlots] = {};

struct LittleBustersProducerObjectTokenSlot {
  volatile LONG state = 0;  // 0=free, 1=writer, 2=published
  void* object = nullptr;   // process-local only; never serialized
  uint32_t token = 0u;
};

LittleBustersProducerObjectTokenSlot g_little_busters_object_tokens[
    fushi_voice_hook::little_busters::kLittleBustersProducerObjectTokenSlots] =
    {};
volatile LONG g_little_busters_next_object_token = 0;
volatile LONG g_little_busters_slot_generations[4][
    fushi_voice_hook::little_busters::kLittleBustersProducerMaxRingSlots] = {};

#if defined(_M_IX86)
struct LittleBustersConsumerContextSlot {
  volatile LONG state = 0;  // 0=free, 1=writer, 2=live
  fushi_voice_hook::little_busters::LittleBustersConsumerCalibrationFields
      fields;
};

LittleBustersConsumerContextSlot g_little_busters_consumer_contexts[
    fushi_voice_hook::little_busters::kLittleBustersConsumerContextMaxRecords] =
    {};

// These addresses are decoded from the validated worker copy instructions,
// rather than guessed from an ASLR-sensitive absolute.  They are process-local
// state only and are never serialized.
fushi_voice_hook::little_busters::LittleBustersConsumerWorkerContextAddresses
    g_little_busters_consumer_worker_context_addresses;

struct LittleBustersProducerRingTlsCapture {
  void* ring = nullptr;
  void* slot = nullptr;
  uint32_t queue_id = UINT32_MAX;
  uint32_t slot_index = UINT32_MAX;
  uint32_t slot_generation = 0u;
  bool slot_generation_valid = false;
  bool valid = false;
};

__declspec(thread) LittleBustersProducerRingTlsCapture
    g_little_busters_producer_tls;

using LittleBustersProducerRingEnqueueFn = void*(__thiscall*)(void* ring);
using LittleBustersProducerOneArgFn = bool(__thiscall*)(void* self,
                                                         uint32_t request);
using LittleBustersProducerThreeArgFn = bool(__thiscall*)(
    void* self, uint32_t request, int32_t mode, uint32_t extra);
using LittleBustersConsumerSelectFn = void*(__fastcall*)(uint32_t skip,
                                                          void* edx);
using LittleBustersConsumerAdvanceFn = void(__cdecl*)();
using LittleBustersRingAdvanceFn = void(__thiscall*)(void* ring);

LittleBustersProducerRingEnqueueFn g_orig_little_busters_ring_enqueue = nullptr;
LittleBustersProducerOneArgFn g_orig_little_busters_producer_0 = nullptr;
LittleBustersProducerOneArgFn g_orig_little_busters_producer_1 = nullptr;
LittleBustersProducerOneArgFn g_orig_little_busters_producer_2 = nullptr;
LittleBustersProducerThreeArgFn g_orig_little_busters_producer_3 = nullptr;
LittleBustersConsumerSelectFn g_orig_little_busters_consumer_select = nullptr;
LittleBustersConsumerAdvanceFn g_orig_little_busters_consumer_advance = nullptr;
LittleBustersRingAdvanceFn g_orig_little_busters_ring_advance = nullptr;
uintptr_t g_little_busters_producer_module_base = 0u;
size_t g_little_busters_producer_module_bytes = 0u;
#endif

fushi_voice_hook::little_busters::LittleBustersVoiceReadConsumerContextFields
CaptureLittleBustersVoiceReadConsumerContext(DWORD read_thread_id);

int ReserveLittleBustersCalibrationRecord() {
  for (;;) {
    const LONG current = InterlockedCompareExchange(
        &g_little_busters_calibration_next, 0, 0);
    if (current < 0 ||
        current >= static_cast<LONG>(fushi_voice_hook::little_busters::
                                         kLittleBustersCalibrationMaxRecords)) {
      return -1;
    }
    if (InterlockedCompareExchange(&g_little_busters_calibration_next,
                                   current + 1, current) == current) {
      return static_cast<int>(current);
    }
  }
}

int ReserveLittleBustersProducerCalibrationRecord() {
  for (;;) {
    const LONG current = InterlockedCompareExchange(
        &g_little_busters_producer_calibration_next, 0, 0);
    if (current < 0 ||
        current >= static_cast<LONG>(fushi_voice_hook::little_busters::
                                         kLittleBustersProducerCalibrationMaxRecords)) {
      return -1;
    }
    if (InterlockedCompareExchange(&g_little_busters_producer_calibration_next,
                                   current + 1, current) == current) {
      return ReserveLittleBustersCalibrationRecord();
    }
  }
}

int ReserveLittleBustersConsumerCalibrationRecord() {
  for (;;) {
    const LONG current = InterlockedCompareExchange(
        &g_little_busters_consumer_calibration_next, 0, 0);
    if (current < 0 ||
        current >= static_cast<LONG>(fushi_voice_hook::little_busters::
                                         kLittleBustersConsumerCalibrationMaxRecords)) {
      return -1;
    }
    if (InterlockedCompareExchange(&g_little_busters_consumer_calibration_next,
                                   current + 1, current) == current) {
      return ReserveLittleBustersCalibrationRecord();
    }
  }
}

bool ReadLittleBustersProducerSlotGeneration(uint32_t queue_id,
                                             uint32_t slot_index,
                                             uint32_t* output_generation) {
  if (output_generation == nullptr ||
      queue_id >= _countof(g_little_busters_slot_generations) ||
      slot_index >= fushi_voice_hook::little_busters::
                         kLittleBustersProducerMaxRingSlots) {
    return false;
  }
  const LONG generation = InterlockedCompareExchange(
      &g_little_busters_slot_generations[queue_id][slot_index], 0, 0);
  if (generation <= 0) return false;
  *output_generation = static_cast<uint32_t>(generation);
  return true;
}

void WriteLittleBustersProducerCorrelationFields(
    LittleBustersProducerCorrelationSlot& slot,
    const fushi_voice_hook::little_busters::LittleBustersProducerCalibrationFields&
        fields) {
  slot.fields.enqueue_token = fields.enqueue_token;
  slot.fields.queue_id = fields.queue_id;
  slot.fields.slot_index = fields.slot_index;
  slot.fields.slot_generation = fields.slot_generation;
  slot.fields.slot_generation_valid = fields.slot_generation_valid;
  slot.fields.request_index = fields.slot_8_request_index;
  slot.fields.object_token = fields.slot_0_object_token;
}

bool PublishLittleBustersProducerCorrelation(
    const fushi_voice_hook::little_busters::LittleBustersProducerCalibrationFields&
        fields) {
  size_t correlation_index = 0u;
  if (fields.enqueue_token == 0u ||
      !fushi_voice_hook::little_busters::
          LittleBustersProducerCorrelationSlotIndex(
              fields.queue_id, fields.slot_index, &correlation_index) ||
      fields.slot_0_object_token == 0u) {
    return false;
  }

  uint32_t current_generation = 0u;
  const bool current_generation_valid =
      ReadLittleBustersProducerSlotGeneration(
          fields.queue_id, fields.slot_index, &current_generation);
  LittleBustersProducerCorrelationSlot& slot =
      g_little_busters_correlations[correlation_index];
  const LONG observed_state =
      InterlockedCompareExchange(&slot.state, 0, 0);
  fushi_voice_hook::little_busters::LittleBustersProducerCorrelationFields
      existing_fields;
  if (observed_state == static_cast<LONG>(
                             fushi_voice_hook::little_busters::
                                 LittleBustersProducerCorrelationState::
                                     kPublished)) {
    MemoryBarrier();
    existing_fields = slot.fields;
    MemoryBarrier();
    if (InterlockedCompareExchange(&slot.state, 0, 0) != observed_state) {
      return false;
    }
  }
  const auto decision = fushi_voice_hook::little_busters::
      DecideLittleBustersProducerCorrelationPublish(
          static_cast<fushi_voice_hook::little_busters::
                          LittleBustersProducerCorrelationState>(observed_state),
          fields.slot_generation_valid, fields.slot_generation,
          current_generation_valid, current_generation,
          existing_fields.slot_generation_valid,
          existing_fields.slot_generation);
  if (decision == fushi_voice_hook::little_busters::
                     LittleBustersProducerCorrelationPublishDecision::kReject) {
    return false;
  }

  const LONG expected_state =
      decision == fushi_voice_hook::little_busters::
                         LittleBustersProducerCorrelationPublishDecision::
                             kPublishIntoFree
          ? static_cast<LONG>(fushi_voice_hook::little_busters::
                                  LittleBustersProducerCorrelationState::kFree)
          : static_cast<LONG>(fushi_voice_hook::little_busters::
                                  LittleBustersProducerCorrelationState::
                                      kPublished);
  if (InterlockedCompareExchange(&slot.state, 1, expected_state) !=
      expected_state) {
    return false;
  }

  // The generation can advance while the producer is claiming the entry. Do
  // not publish a request whose metadata no longer names the current slot
  // generation; retain the old entry on a replacement failure.
  uint32_t verified_generation = 0u;
  if (!ReadLittleBustersProducerSlotGeneration(
          fields.queue_id, fields.slot_index, &verified_generation) ||
      verified_generation != fields.slot_generation) {
    InterlockedExchange(
        &slot.state,
        expected_state == static_cast<LONG>(
                              fushi_voice_hook::little_busters::
                                  LittleBustersProducerCorrelationState::kFree)
            ? static_cast<LONG>(fushi_voice_hook::little_busters::
                                    LittleBustersProducerCorrelationState::kFree)
            : static_cast<LONG>(fushi_voice_hook::little_busters::
                                    LittleBustersProducerCorrelationState::
                                        kPublished));
    return false;
  }
  WriteLittleBustersProducerCorrelationFields(slot, fields);
  MemoryBarrier();
  InterlockedExchange(
      &slot.state,
      static_cast<LONG>(fushi_voice_hook::little_busters::
                            LittleBustersProducerCorrelationState::kPublished));
  return true;
}

struct LittleBustersProducerCorrelationLookup {
  uint32_t match_count = 0u;
  fushi_voice_hook::little_busters::LittleBustersProducerCorrelationFields
      fields;
};

LittleBustersProducerCorrelationLookup FindLittleBustersProducerCorrelation(
    uint32_t queue_id, uint32_t slot_index, uint32_t request_index,
    uint32_t object_token, bool retire_unique_match) {
  LittleBustersProducerCorrelationLookup result;
  size_t correlation_index = 0u;
  if (!fushi_voice_hook::little_busters::
          LittleBustersProducerCorrelationSlotIndex(
              queue_id, slot_index, &correlation_index)) {
    return result;
  }

  LittleBustersProducerCorrelationSlot& slot =
      g_little_busters_correlations[correlation_index];
  // Claim the published entry while copying it. This prevents a concurrent
  // retire/republication of the same natural ring identity from being
  // mistaken for the entry being inspected.
  if (InterlockedCompareExchange(
          &slot.state,
          static_cast<LONG>(fushi_voice_hook::little_busters::
                                LittleBustersProducerCorrelationState::kReader),
          static_cast<LONG>(fushi_voice_hook::little_busters::
                                LittleBustersProducerCorrelationState::
                                    kPublished)) !=
      static_cast<LONG>(fushi_voice_hook::little_busters::
                            LittleBustersProducerCorrelationState::kPublished)) {
    return result;
  }
  MemoryBarrier();
  const auto fields = slot.fields;
  MemoryBarrier();
  uint32_t current_generation = 0u;
  const bool current_generation_valid =
      ReadLittleBustersProducerSlotGeneration(
          queue_id, slot_index, &current_generation);
  if (!fushi_voice_hook::little_busters::
          IsLittleBustersProducerCorrelationGenerationCurrent(
              fields.slot_generation_valid, fields.slot_generation,
              current_generation_valid, current_generation)) {
    // If the global generation has advanced, this entry is proven stale and
    // may be retired while the reader state is exclusively owned here. Other
    // uncertainty remains published but cannot be returned.
    if (fields.slot_generation_valid && fields.slot_generation != 0u &&
        current_generation_valid &&
        current_generation > fields.slot_generation) {
      InterlockedExchange(
          &slot.state,
          static_cast<LONG>(fushi_voice_hook::little_busters::
                                LittleBustersProducerCorrelationState::kFree));
    } else {
      InterlockedExchange(
          &slot.state,
          static_cast<LONG>(fushi_voice_hook::little_busters::
                                LittleBustersProducerCorrelationState::
                                    kPublished));
    }
    return result;
  }
  if (!fushi_voice_hook::little_busters::
          IsLittleBustersProducerCorrelationMatch(
              fields, queue_id, slot_index, request_index, object_token)) {
    InterlockedExchange(
        &slot.state,
        static_cast<LONG>(fushi_voice_hook::little_busters::
                              LittleBustersProducerCorrelationState::
                                  kPublished));
    return result;
  }

  if (retire_unique_match) {
    if (InterlockedCompareExchange(
            &slot.state,
            static_cast<LONG>(fushi_voice_hook::little_busters::
                                  LittleBustersProducerCorrelationState::kFree),
            static_cast<LONG>(fushi_voice_hook::little_busters::
                                  LittleBustersProducerCorrelationState::
                                      kReader)) !=
        static_cast<LONG>(fushi_voice_hook::little_busters::
                              LittleBustersProducerCorrelationState::kReader)) {
      return LittleBustersProducerCorrelationLookup{};
    }
  } else {
    InterlockedExchange(
        &slot.state,
        static_cast<LONG>(fushi_voice_hook::little_busters::
                              LittleBustersProducerCorrelationState::
                                  kPublished));
  }
  result.match_count = 1u;
  result.fields = fields;
  return result;
}

const char* LittleBustersCalibrationArchiveName(uint32_t archive_index) {
  return archive_index == fushi_voice_hook::little_busters::
                             kLittleBustersVoice0ArchiveIndex
             ? "VOICE0.PAK"
             : "VOICE2.PAK";
}

const char* LittleBustersCalibrationReadRoleName(uint32_t read_role) {
  return read_role == static_cast<uint32_t>(
                           fushi_voice_hook::little_busters::
                               VoiceResourceReadRole::kDialogueOnDemand)
             ? "dialogue_on_demand"
             : "unknown";
}

fushi_voice_hook::little_busters::CalibrationStackTrace
CaptureLittleBustersCalibrationStack(HMODULE module) {
  void* raw_frames[fushi_voice_hook::little_busters::
                      kLittleBustersCalibrationCaptureStackFrames] = {};
  const USHORT captured = ::RtlCaptureStackBackTrace(
      0u, static_cast<DWORD>(_countof(raw_frames)), raw_frames, nullptr);
  uintptr_t return_addresses[fushi_voice_hook::little_busters::
                                 kLittleBustersCalibrationCaptureStackFrames] =
      {};
  const size_t captured_count =
      captured < _countof(raw_frames) ? static_cast<size_t>(captured)
                                      : _countof(raw_frames);
  for (size_t index = 0u; index < captured_count; ++index) {
    return_addresses[index] = reinterpret_cast<uintptr_t>(raw_frames[index]);
  }

  size_t image_bytes = 0u;
  if (module != nullptr) {
    __try {
      const auto* base = reinterpret_cast<const uint8_t*>(module);
      const auto* dos = reinterpret_cast<const IMAGE_DOS_HEADER*>(base);
      if (dos->e_magic == IMAGE_DOS_SIGNATURE && dos->e_lfanew > 0 &&
          dos->e_lfanew < 1024 * 1024) {
        const auto* nt = reinterpret_cast<const IMAGE_NT_HEADERS*>(
            base + dos->e_lfanew);
        if (nt->Signature == IMAGE_NT_SIGNATURE) {
          image_bytes = nt->OptionalHeader.SizeOfImage;
        }
      }
    } __except (EXCEPTION_EXECUTE_HANDLER) {
      image_bytes = 0u;
    }
  }
  return fushi_voice_hook::little_busters::FilterCalibrationStackRvas(
      return_addresses, captured_count,
      reinterpret_cast<uintptr_t>(module), image_bytes);
}

void RecordLittleBustersCalibrationVoiceRead(
    uint64_t tick_ms, uintptr_t caller_rva, uint32_t archive_index,
    uint64_t read_offset, uint32_t read_bytes, DWORD read_thread_id,
    uint64_t baseline_text_write_count, uint64_t selected_text_thread_id,
    const fushi_voice_hook::little_busters::VoicePakEntry* member,
    uint32_t read_role,
    const fushi_voice_hook::little_busters::
        LittleBustersVoiceReadConsumerContextFields& consumer_context,
    const fushi_voice_hook::little_busters::CalibrationStackTrace& stack) {
  if (InterlockedCompareExchange(&g_little_busters_enabled, 0, 0) == 0) {
    return;
  }
  const int index = ReserveLittleBustersCalibrationRecord();
  if (index < 0) return;
  LittleBustersCalibrationRecord& record =
      g_little_busters_calibration_records[index];
  record.kind = static_cast<uint32_t>(LittleBustersCalibrationRecordKind::
                                          kVoiceRead);
  record.record_index = static_cast<uint32_t>(index);
  record.tick_ms = tick_ms;
  record.caller_rva = static_cast<uint64_t>(caller_rva);
  record.archive_index = archive_index;
  record.read_offset = read_offset;
  record.read_bytes = read_bytes;
  record.read_thread_id = static_cast<uint32_t>(read_thread_id);
  record.member_mapped = member == nullptr ? 0u : 1u;
  record.member_id = member == nullptr ? 0u : member->member_id;
  record.member_index = member == nullptr ? 0u : member->index;
  record.member_offset = member == nullptr ? 0u : member->offset;
  record.member_length = member == nullptr ? 0u : member->length;
  record.read_role = read_role;
  record.baseline_text_write_count = baseline_text_write_count;
  record.baseline_seq = baseline_text_write_count;
  record.selected_text_thread_id = selected_text_thread_id;
  record.stack_rva_count = stack.count;
  record.stack_rva_valid_mask = stack.valid_mask;
  for (uint32_t index = 0u;
       index < fushi_voice_hook::little_busters::
                   kLittleBustersCalibrationMaxStackRvas;
       ++index) {
    record.stack_rva[index] = stack.rvas[index];
  }
  record.consumer_context = consumer_context;
  MemoryBarrier();
  InterlockedExchange(&record.state, 1);
}

void RecordLittleBustersCalibrationText(
    const fushi_voice_hook::little_busters::VoiceTextCandidate& candidate,
    uint64_t selected_text_thread_id) {
  if (InterlockedCompareExchange(&g_little_busters_enabled, 0, 0) == 0 ||
      g_little_busters_calibration_text_dedup.SeenOrRemember(candidate.seq)) {
    return;
  }
  const int index = ReserveLittleBustersCalibrationRecord();
  if (index < 0) return;
  LittleBustersCalibrationRecord& record =
      g_little_busters_calibration_records[index];
  record.kind = static_cast<uint32_t>(LittleBustersCalibrationRecordKind::
                                          kTextEvent);
  record.record_index = static_cast<uint32_t>(index);
  record.tick_ms = GetTickCount64();
  record.baseline_text_write_count =
      g_header == nullptr
          ? 0u
          : fushi_voice_hook::AtomicLoadPreview64(&g_header->text_write_count);
  record.baseline_seq = record.baseline_text_write_count;
  record.selected_text_thread_id = selected_text_thread_id;
  record.text_seq = candidate.seq;
  record.text_timestamp_ms = candidate.timestamp_ms;
  record.text_thread_id = candidate.thread_id;
  record.text_thread_context2 = candidate.raw_context2;
  uint32_t voice_id = 0u;
  record.text_voice_id_valid =
      fushi_voice_hook::little_busters::DecodeLittleBustersVoiceId(
          candidate.raw_context2, &voice_id)
          ? 1u
          : 0u;
  record.text_voice_id = voice_id;
  record.source_kind = candidate.source_kind;
  record.event_kind = candidate.event_kind;
  record.text_byte_len = candidate.byte_len;
  record.exact_hook_code = candidate.exact_hook_code ? 1u : 0u;
  MemoryBarrier();
  InterlockedExchange(&record.state, 1);
}

void RecordLittleBustersCalibrationProducer(
    const fushi_voice_hook::little_busters::LittleBustersProducerCalibrationFields&
        fields) {
  if (InterlockedCompareExchange(&g_little_busters_enabled, 0, 0) == 0 ||
      InterlockedCompareExchange(&g_little_busters_producer_trace_enabled, 0,
                                 0) == 0) {
    return;
  }
  const int index = ReserveLittleBustersProducerCalibrationRecord();
  if (index < 0) return;
  LittleBustersCalibrationRecord& record =
      g_little_busters_calibration_records[index];
  record.kind = static_cast<uint32_t>(
      LittleBustersCalibrationRecordKind::kProducerEnqueue);
  record.record_index = static_cast<uint32_t>(index);
  record.producer = fields;
  MemoryBarrier();
  InterlockedExchange(&record.state, 1);
}

void RecordLittleBustersCalibrationConsumer(
    const fushi_voice_hook::little_busters::LittleBustersConsumerCalibrationFields&
        fields) {
  if (InterlockedCompareExchange(&g_little_busters_enabled, 0, 0) == 0 ||
      InterlockedCompareExchange(&g_little_busters_producer_trace_enabled, 0,
                                 0) == 0) {
    return;
  }
  const int index = ReserveLittleBustersConsumerCalibrationRecord();
  if (index < 0) return;
  LittleBustersCalibrationRecord& record =
      g_little_busters_calibration_records[index];
  record.kind = static_cast<uint32_t>(
      LittleBustersCalibrationRecordKind::kConsumerDequeue);
  record.record_index = static_cast<uint32_t>(index);
  record.consumer = fields;
  MemoryBarrier();
  InterlockedExchange(&record.state, 1);
}

bool BuildLittleBustersCalibrationPath(wchar_t* path, size_t capacity) {
  if (path == nullptr || capacity == 0u) return false;
  wchar_t temp_path[kLittleBustersVoicePathChars] = {};
  const DWORD chars = GetTempPathW(static_cast<DWORD>(_countof(temp_path)),
                                   temp_path);
  if (chars == 0u || chars >= _countof(temp_path)) return false;
  const bool has_separator = temp_path[chars - 1u] == L'\\' ||
                             temp_path[chars - 1u] == L'/';
  const int written = swprintf_s(
      path, capacity,
      has_separator
          ? L"%sfushi_lb_voice_caller_calibration_%lu.jsonl"
          : L"%s\\fushi_lb_voice_caller_calibration_%lu.jsonl",
      temp_path, static_cast<unsigned long>(GetCurrentProcessId()));
  return written > 0 && static_cast<size_t>(written) < capacity;
}

bool OpenLittleBustersCalibrationFile() {
  if (g_little_busters_calibration_file != INVALID_HANDLE_VALUE) return true;
  if (g_little_busters_calibration_file_full ||
      g_little_busters_calibration_io_failed || g_orig_CreateFileW == nullptr) {
    return false;
  }
  wchar_t path[kLittleBustersVoicePathChars] = {};
  if (!BuildLittleBustersCalibrationPath(path, _countof(path))) {
    g_little_busters_calibration_io_failed = true;
    return false;
  }
  HANDLE file = g_orig_CreateFileW(
      path, GENERIC_WRITE,
      FILE_SHARE_READ | FILE_SHARE_WRITE | FILE_SHARE_DELETE, nullptr,
      CREATE_ALWAYS, FILE_ATTRIBUTE_NORMAL, nullptr);
  if (file == INVALID_HANDLE_VALUE) {
    g_little_busters_calibration_io_failed = true;
    return false;
  }
  g_little_busters_calibration_file = file;
  return true;
}

void CloseLittleBustersCalibrationFile() {
  if (g_little_busters_calibration_file == INVALID_HANDLE_VALUE) return;
  if (g_orig_CloseHandle != nullptr) {
    g_orig_CloseHandle(g_little_busters_calibration_file);
  } else {
    ::CloseHandle(g_little_busters_calibration_file);
  }
  g_little_busters_calibration_file = INVALID_HANDLE_VALUE;
}

bool FormatLittleBustersCalibrationRecord(
    const LittleBustersCalibrationRecord& record, char* line, size_t capacity,
    size_t* line_bytes) {
  if (line == nullptr || line_bytes == nullptr || capacity == 0u) return false;
  if (record.kind == static_cast<uint32_t>(
                      LittleBustersCalibrationRecordKind::kProducerEnqueue)) {
    return fushi_voice_hook::little_busters::
        FormatLittleBustersProducerCalibrationJson(
            record.record_index, record.producer, line, capacity, line_bytes);
  }
  if (record.kind == static_cast<uint32_t>(
                      LittleBustersCalibrationRecordKind::kConsumerDequeue)) {
    return fushi_voice_hook::little_busters::
        FormatLittleBustersConsumerCalibrationJson(
            record.record_index, record.consumer, line, capacity, line_bytes);
  }
  char stack_rva_json[128] = {};
  size_t stack_rva_json_bytes = 0u;
  if (!fushi_voice_hook::little_busters::FormatCalibrationStackRvaJson(
          record.stack_rva, record.stack_rva_count, stack_rva_json,
          sizeof(stack_rva_json), &stack_rva_json_bytes)) {
    return false;
  }
  const unsigned long long tick_ms =
      static_cast<unsigned long long>(record.tick_ms);
  int written = -1;
  if (record.kind == static_cast<uint32_t>(LittleBustersCalibrationRecordKind::
                                               kVoiceRead)) {
    written = std::snprintf(
        line, capacity,
        "{\"schema\":\"fushi-lb-voice-caller-calibration-v1\","
        "\"record_index\":%u,\"kind\":\"voice_read\","
        "\"tick_ms\":%llu,\"caller_rva\":%llu,"
        "\"caller_rva_hex\":\"0x%llX\",\"archive\":\"%s\","
        "\"archive_index\":%u,\"read_offset\":%llu,"
        "\"read_bytes\":%u,\"read_thread_id\":%u,"
        "\"baseline_text_write_count\":%llu,\"baseline_seq\":%llu,"
        "\"selected_text_thread_id\":%llu,\"member_mapped\":%s,"
        "\"member_id\":%u,\"member_index\":%u,"
        "\"member_offset\":%llu,\"member_length\":%u,"
        "\"read_role\":\"%s\",\"stack_rva\":%s,"
        "\"stack_rva_count\":%u,\"stack_rva_valid_mask\":%u,"
        "\"consumer_context_match_count\":%u,\"consumer_context_matched\":%s,"
        "\"consumer_enqueue_token\":%llu,\"consumer_enqueue_token_matched\":%s,"
        "\"consumer_queue_id\":%u,\"consumer_queue_rva\":%u,"
        "\"consumer_slot_index\":%u,\"consumer_slot_generation\":%u,"
        "\"consumer_slot_generation_valid\":%s,\"consumer_request_index\":%u,"
        "\"consumer_object_token\":%u,\"consumer_state\":%u,"
        "\"consumer_slot_0c_state\":%u,\"consumer_slot_10_mode\":%u,"
        "\"consumer_worker_context_layout_valid\":%s,"
        "\"consumer_worker_snapshot_valid\":%s,"
        "\"consumer_worker_snapshot_valid_mask\":%u,"
        "\"consumer_worker_read_thread_id\":%u,"
        "\"consumer_worker_consumer_state\":%u,"
        "\"consumer_worker_request_index\":%u,"
        "\"consumer_worker_object_token\":%u,"
        "\"consumer_worker_slot_0c_state\":%u,"
        "\"consumer_worker_slot_10_mode\":%u,"
        "\"consumer_live_context_count\":%u,"
        "\"consumer_same_thread_context_count\":%u,"
        "\"consumer_same_thread_select_count\":%u,"
        "\"consumer_same_thread_candidate_available\":%s,"
        "\"consumer_candidate_queue_id\":%u,"
        "\"consumer_candidate_queue_rva\":%u,"
        "\"consumer_candidate_slot_index\":%u,"
        "\"consumer_candidate_slot_generation\":%u,"
        "\"consumer_candidate_slot_generation_valid\":%s,"
        "\"consumer_candidate_request_index\":%u,"
        "\"consumer_candidate_object_token\":%u,"
        "\"consumer_candidate_consumer_state\":%u,"
        "\"consumer_candidate_slot_0c_state\":%u,"
        "\"consumer_candidate_slot_10_mode\":%u,"
        "\"consumer_candidate_enqueue_token\":%llu,"
        "\"consumer_candidate_enqueue_token_matched\":%s,"
        "\"consumer_candidate_mismatch_available\":%s,"
        "\"consumer_candidate_mismatch_mask\":%u,"
        "\"consumer_candidate_mismatch_thread\":%s,"
        "\"consumer_candidate_mismatch_state\":%s,"
        "\"consumer_candidate_mismatch_request\":%s,"
        "\"consumer_candidate_mismatch_object\":%s,"
        "\"consumer_candidate_mismatch_slot_0c\":%s,"
        "\"consumer_candidate_mismatch_mode\":%s}\n",
        record.record_index, tick_ms,
        static_cast<unsigned long long>(record.caller_rva),
        static_cast<unsigned long long>(record.caller_rva),
        LittleBustersCalibrationArchiveName(record.archive_index),
        record.archive_index,
        static_cast<unsigned long long>(record.read_offset), record.read_bytes,
        record.read_thread_id,
        static_cast<unsigned long long>(record.baseline_text_write_count),
        static_cast<unsigned long long>(record.baseline_seq),
        static_cast<unsigned long long>(record.selected_text_thread_id),
        record.member_mapped == 0u ? "false" : "true", record.member_id,
        record.member_index, static_cast<unsigned long long>(record.member_offset),
        record.member_length, LittleBustersCalibrationReadRoleName(
                                  record.read_role),
        stack_rva_json, record.stack_rva_count,
        record.stack_rva_valid_mask, record.consumer_context.match_count,
        record.consumer_context.context_matched ? "true" : "false",
        static_cast<unsigned long long>(record.consumer_context.enqueue_token),
        record.consumer_context.enqueue_token_matched ? "true" : "false",
        record.consumer_context.queue_id, record.consumer_context.queue_rva,
        record.consumer_context.slot_index,
        record.consumer_context.slot_generation,
        record.consumer_context.slot_generation_valid ? "true" : "false",
        record.consumer_context.request_index,
        record.consumer_context.object_token,
        record.consumer_context.consumer_state,
        record.consumer_context.slot_0c_state,
        record.consumer_context.slot_10_mode,
        record.consumer_context.worker_context_layout_valid ? "true" : "false",
        record.consumer_context.worker_snapshot_valid ? "true" : "false",
        record.consumer_context.worker_snapshot_valid_mask,
        record.consumer_context.worker_read_thread_id,
        record.consumer_context.worker_consumer_state,
        record.consumer_context.worker_request_index,
        record.consumer_context.worker_object_token,
        record.consumer_context.worker_slot_0c_state,
        record.consumer_context.worker_slot_10_mode,
        record.consumer_context.live_context_count,
        record.consumer_context.same_thread_context_count,
        record.consumer_context.same_thread_select_count,
        record.consumer_context.same_thread_candidate_available ? "true"
                                                                 : "false",
        record.consumer_context.candidate_queue_id,
        record.consumer_context.candidate_queue_rva,
        record.consumer_context.candidate_slot_index,
        record.consumer_context.candidate_slot_generation,
        record.consumer_context.candidate_slot_generation_valid ? "true"
                                                                 : "false",
        record.consumer_context.candidate_request_index,
        record.consumer_context.candidate_object_token,
        record.consumer_context.candidate_consumer_state,
        record.consumer_context.candidate_slot_0c_state,
        record.consumer_context.candidate_slot_10_mode,
        static_cast<unsigned long long>(
            record.consumer_context.candidate_enqueue_token),
        record.consumer_context.candidate_enqueue_token_matched ? "true"
                                                                 : "false",
        record.consumer_context.candidate_mismatch_available ? "true"
                                                              : "false",
        record.consumer_context.candidate_mismatch_mask,
        (record.consumer_context.candidate_mismatch_mask &
                 fushi_voice_hook::little_busters::
                     kLittleBustersConsumerMismatchThread) != 0u
            ? "true"
            : "false",
        (record.consumer_context.candidate_mismatch_mask &
                 fushi_voice_hook::little_busters::
                     kLittleBustersConsumerMismatchState) != 0u
            ? "true"
            : "false",
        (record.consumer_context.candidate_mismatch_mask &
                 fushi_voice_hook::little_busters::
                     kLittleBustersConsumerMismatchRequest) != 0u
            ? "true"
            : "false",
        (record.consumer_context.candidate_mismatch_mask &
                 fushi_voice_hook::little_busters::
                     kLittleBustersConsumerMismatchObject) != 0u
            ? "true"
            : "false",
        (record.consumer_context.candidate_mismatch_mask &
                 fushi_voice_hook::little_busters::
                     kLittleBustersConsumerMismatchSlot0c) != 0u
            ? "true"
            : "false",
        (record.consumer_context.candidate_mismatch_mask &
                 fushi_voice_hook::little_busters::
                     kLittleBustersConsumerMismatchMode) != 0u
            ? "true"
            : "false");
  } else if (record.kind == static_cast<uint32_t>(
                                  LittleBustersCalibrationRecordKind::kTextEvent)) {
    written = std::snprintf(
        line, capacity,
        "{\"schema\":\"fushi-lb-voice-caller-calibration-v1\","
        "\"record_index\":%u,\"kind\":\"text_event\","
        "\"observed_tick_ms\":%llu,\"timestamp_ms\":%llu,"
        "\"seq\":%llu,\"text_event_id\":%llu,"
        "\"native_text_thread_id\":%llu,\"selected_text_thread_id\":%llu,"
        "\"source_kind\":%u,\"event_kind\":%u,\"byte_len\":%u,"
        "\"thread_context2\":%llu,\"voice_id_valid\":%s,"
        "\"voice_id\":%u,"
        "\"exact_hook_code\":%s,"
        "\"hook_code_tag\":\"HQFN1C:-18*-3244@8BA37:LITBUS_WIN32.exe\"}\n",
        record.record_index, tick_ms,
        static_cast<unsigned long long>(record.text_timestamp_ms),
        static_cast<unsigned long long>(record.text_seq),
        static_cast<unsigned long long>(record.text_seq),
        static_cast<unsigned long long>(record.text_thread_id),
        static_cast<unsigned long long>(record.selected_text_thread_id),
        record.source_kind, record.event_kind, record.text_byte_len,
        static_cast<unsigned long long>(record.text_thread_context2),
        record.text_voice_id_valid == 0u ? "false" : "true",
        record.text_voice_id,
        record.exact_hook_code == 0u ? "false" : "true");
  }
  if (written < 0 || static_cast<size_t>(written) >= capacity) return false;
  *line_bytes = static_cast<size_t>(written);
  return true;
}

void FlushLittleBustersCalibrationTrace() {
  if (g_little_busters_calibration_file_full ||
      g_little_busters_calibration_io_failed) {
    return;
  }
  const LONG next = InterlockedCompareExchange(
      &g_little_busters_calibration_next, 0, 0);
  LONG flushed = InterlockedCompareExchange(
      &g_little_busters_calibration_flushed, 0, 0);
  if (flushed >= next || !OpenLittleBustersCalibrationFile()) return;

  bool wrote = false;
  char line[4096] = {};
  while (flushed < next) {
    LittleBustersCalibrationRecord& record =
        g_little_busters_calibration_records[flushed];
    if (InterlockedCompareExchange(&record.state, 0, 0) != 1) break;
    size_t line_bytes = 0u;
    if (!FormatLittleBustersCalibrationRecord(record, line, sizeof(line),
                                               &line_bytes) ||
        !g_little_busters_calibration_budget.TryConsume(line_bytes)) {
      g_little_busters_calibration_file_full = true;
      break;
    }
    DWORD written = 0u;
    if (!::WriteFile(g_little_busters_calibration_file, line,
                     static_cast<DWORD>(line_bytes), &written, nullptr) ||
        written != static_cast<DWORD>(line_bytes)) {
      g_little_busters_calibration_io_failed = true;
      break;
    }
    MemoryBarrier();
    InterlockedExchange(&record.state, 2);
    ++flushed;
    InterlockedExchange(&g_little_busters_calibration_flushed, flushed);
    wrote = true;
  }
  if (wrote) FlushFileBuffers(g_little_busters_calibration_file);
}

void ResetLittleBustersCalibrationTrace() {
  CloseLittleBustersCalibrationFile();
  g_little_busters_calibration_file_full = false;
  g_little_busters_calibration_io_failed = false;
  g_little_busters_calibration_budget = {};
  g_little_busters_calibration_text_dedup.Reset();
  InterlockedExchange(&g_little_busters_producer_calibration_next, 0);
  InterlockedExchange(&g_little_busters_consumer_calibration_next, 0);
  InterlockedExchange(&g_little_busters_producer_trace_enabled, 0);
  InterlockedExchange64(&g_little_busters_enqueue_token, 0);
  for (LittleBustersProducerCorrelationSlot& slot :
       g_little_busters_correlations) {
    slot.fields = {};
    InterlockedExchange(&slot.state, 0);
  }
  InterlockedExchange(&g_little_busters_next_object_token, 0);
  for (LittleBustersProducerObjectTokenSlot& slot :
       g_little_busters_object_tokens) {
    slot.object = nullptr;
    slot.token = 0u;
    InterlockedExchange(&slot.state, 0);
  }
  for (size_t queue = 0u; queue < _countof(g_little_busters_slot_generations);
       ++queue) {
    for (size_t slot = 0u;
         slot < _countof(g_little_busters_slot_generations[queue]); ++slot) {
      InterlockedExchange(&g_little_busters_slot_generations[queue][slot], 0);
    }
  }
  for (LittleBustersDirectVoiceEvent& event :
       g_little_busters_direct_voice_events) {
    event = {};
  }
  InterlockedExchange64(&g_little_busters_direct_text_baseline_seq, 0);
  InterlockedExchange(&g_little_busters_direct_text_baseline_valid, 0);
#if defined(_M_IX86)
  g_little_busters_consumer_worker_context_addresses = {};
  for (LittleBustersConsumerContextSlot& slot :
       g_little_busters_consumer_contexts) {
    slot.fields = {};
    InterlockedExchange(&slot.state, 0);
  }
#endif
  InterlockedExchange(&g_little_busters_calibration_next, 0);
  InterlockedExchange(&g_little_busters_calibration_flushed, 0);
  for (LittleBustersCalibrationRecord& record :
       g_little_busters_calibration_records) {
    InterlockedExchange(&record.state, 0);
  }
}

void SetLittleBustersDiagnostic(uint32_t bits) {
  if (g_header == nullptr) return;
  InterlockedOr(
      reinterpret_cast<volatile LONG*>(&g_header->reserved_hook_diagnostics),
      static_cast<LONG>(bits));
}

#if defined(_M_IX86)

bool IsLittleBustersProducerExecutableProtection(DWORD protection) {
  const DWORD base = protection & 0xffu;
  return base == PAGE_EXECUTE || base == PAGE_EXECUTE_READ ||
         base == PAGE_EXECUTE_READWRITE ||
         base == PAGE_EXECUTE_WRITECOPY;
}

bool ReadLittleBustersProducerImageInfo(HMODULE module, uintptr_t* base,
                                        size_t* image_bytes,
                                        uint16_t* machine) {
  if (module == nullptr || base == nullptr || image_bytes == nullptr ||
      machine == nullptr) {
    return false;
  }
  __try {
    const auto* image = reinterpret_cast<const uint8_t*>(module);
    const auto* dos = reinterpret_cast<const IMAGE_DOS_HEADER*>(image);
    if (dos->e_magic != IMAGE_DOS_SIGNATURE || dos->e_lfanew <= 0 ||
        dos->e_lfanew >= 1024 * 1024) {
      return false;
    }
    const auto* nt = reinterpret_cast<const IMAGE_NT_HEADERS32*>(
        image + dos->e_lfanew);
    if (nt->Signature != IMAGE_NT_SIGNATURE ||
        nt->OptionalHeader.SizeOfImage == 0u) {
      return false;
    }
    *base = reinterpret_cast<uintptr_t>(module);
    *image_bytes = static_cast<size_t>(nt->OptionalHeader.SizeOfImage);
    *machine = nt->FileHeader.Machine;
    return true;
  } __except (EXCEPTION_EXECUTE_HANDLER) {
    return false;
  }
}

bool IsLittleBustersProducerExecutableRange(uintptr_t module_base,
                                            size_t image_bytes, uint32_t rva,
                                            size_t bytes) {
  if (module_base == 0u || image_bytes == 0u ||
      static_cast<size_t>(rva) > image_bytes ||
      bytes > image_bytes - static_cast<size_t>(rva) ||
      module_base > UINTPTR_MAX - static_cast<uintptr_t>(rva)) {
    return false;
  }
  const uintptr_t begin = module_base + static_cast<uintptr_t>(rva);
  if (begin > UINTPTR_MAX - bytes) return false;
  const uintptr_t end = begin + bytes;
  MEMORY_BASIC_INFORMATION memory = {};
  if (VirtualQuery(reinterpret_cast<const void*>(begin), &memory,
                   sizeof(memory)) != sizeof(memory) ||
      memory.State != MEM_COMMIT ||
      (memory.Protect & (PAGE_GUARD | PAGE_NOACCESS)) != 0u ||
      !IsLittleBustersProducerExecutableProtection(memory.Protect)) {
    return false;
  }
  const uintptr_t region_begin = reinterpret_cast<uintptr_t>(memory.BaseAddress);
  if (region_begin > UINTPTR_MAX - memory.RegionSize) return false;
  return begin >= region_begin && end <= region_begin + memory.RegionSize;
}

bool ReadLittleBustersProducerBytes(uintptr_t module_base, size_t image_bytes,
                                    uint32_t rva, uint8_t* output,
                                    size_t bytes) {
  if (output == nullptr || bytes == 0u || static_cast<size_t>(rva) > image_bytes ||
      bytes > image_bytes - static_cast<size_t>(rva) ||
      module_base > UINTPTR_MAX - static_cast<uintptr_t>(rva)) {
    return false;
  }
  __try {
    const auto* source = reinterpret_cast<const uint8_t*>(
        module_base + static_cast<uintptr_t>(rva));
    for (size_t index = 0u; index < bytes; ++index) {
      output[index] = source[index];
    }
    return true;
  } __except (EXCEPTION_EXECUTE_HANDLER) {
    return false;
  }
}

bool ReadLittleBustersProducerWord(const void* address, uint32_t* output) {
  if (address == nullptr || output == nullptr) return false;
  __try {
    *output = *reinterpret_cast<const uint32_t*>(address);
    return true;
  } __except (EXCEPTION_EXECUTE_HANDLER) {
    return false;
  }
}

bool ReadLittleBustersProducerPointer(const void* address, uintptr_t* output) {
  if (address == nullptr || output == nullptr) return false;
  __try {
    *output = static_cast<uintptr_t>(
        *reinterpret_cast<const uint32_t*>(address));
    return true;
  } __except (EXCEPTION_EXECUTE_HANDLER) {
    return false;
  }
}

uint32_t LittleBustersProducerRvaForAddress(uintptr_t address) {
  if (address == 0u || address < g_little_busters_producer_module_base) {
    return 0u;
  }
  const uintptr_t rva = address - g_little_busters_producer_module_base;
  if (rva >= g_little_busters_producer_module_bytes || rva > UINT32_MAX) {
    return 0u;
  }
  return static_cast<uint32_t>(rva);
}

const fushi_voice_hook::little_busters::LittleBustersProducerHookSpec*
LittleBustersProducerSpecForRing(void* ring) {
  if (ring == nullptr || g_little_busters_producer_module_base == 0u) {
    return nullptr;
  }
  const uintptr_t address = reinterpret_cast<uintptr_t>(ring);
  for (const auto& spec : fushi_voice_hook::little_busters::
                               kLittleBustersProducerHookSpecs) {
    if (g_little_busters_producer_module_base <= UINTPTR_MAX -
            static_cast<uintptr_t>(spec.queue_rva) &&
        address == g_little_busters_producer_module_base + spec.queue_rva) {
      return &spec;
    }
  }
  return nullptr;
}

const fushi_voice_hook::little_busters::LittleBustersProducerHookSpec*
LittleBustersProducerSpecForConsumerState(uint32_t state) {
  const uint32_t queue_id =
      fushi_voice_hook::little_busters::LittleBustersConsumerQueueIdForState(
          state);
  if (queue_id == UINT32_MAX) return nullptr;
  return fushi_voice_hook::little_busters::FindLittleBustersProducerHookSpecByQueue(
      queue_id);
}

bool ReadLittleBustersConsumerState(uint32_t* state) {
  if (state == nullptr ||
      g_little_busters_producer_module_base >
          UINTPTR_MAX - static_cast<uintptr_t>(
                            fushi_voice_hook::little_busters::
                                kLittleBustersProducerConsumerStateRva)) {
    return false;
  }
  return ReadLittleBustersProducerWord(
      reinterpret_cast<const void*>(
          g_little_busters_producer_module_base +
          fushi_voice_hook::little_busters::
              kLittleBustersProducerConsumerStateRva),
      state);
}

struct LittleBustersConsumerRingSnapshot {
  const fushi_voice_hook::little_busters::LittleBustersProducerHookSpec*
      spec = nullptr;
  void* ring = nullptr;
  void* slot = nullptr;
  uint32_t capacity = 0u;
  uint32_t producer_index = 0u;
  uint32_t consumer_index = 0u;
  uint32_t slot_index = UINT32_MAX;
  fushi_voice_hook::little_busters::LittleBustersProducerSlotFields fields;
};

bool ReadLittleBustersConsumerRingSnapshot(
    void* ring, void* requested_slot,
    LittleBustersConsumerRingSnapshot* output) {
  if (ring == nullptr || output == nullptr) return false;
  const auto* spec = LittleBustersProducerSpecForRing(ring);
  if (spec == nullptr) return false;
  uint32_t capacity = 0u;
  uint32_t producer_index = 0u;
  uint32_t consumer_index = 0u;
  uintptr_t entries = 0u;
  if (!ReadLittleBustersProducerWord(ring, &capacity) ||
      !ReadLittleBustersProducerPointer(
          reinterpret_cast<const uint8_t*>(ring) + sizeof(uint32_t),
          &entries) ||
      !ReadLittleBustersProducerWord(
          reinterpret_cast<const uint8_t*>(ring) + 2u * sizeof(uint32_t),
          &producer_index) ||
      !ReadLittleBustersProducerWord(
          reinterpret_cast<const uint8_t*>(ring) + 3u * sizeof(uint32_t),
          &consumer_index) ||
      capacity == 0u ||
      capacity > fushi_voice_hook::little_busters::
                     kLittleBustersProducerMaxRingSlots ||
      entries == 0u || producer_index >= capacity || consumer_index >= capacity ||
      producer_index == consumer_index) {
    return false;
  }

  uintptr_t slot_address = entries;
  uint32_t slot_index = consumer_index;
  if (requested_slot != nullptr) {
    const uintptr_t requested = reinterpret_cast<uintptr_t>(requested_slot);
    if (requested < entries || requested - entries > UINTPTR_MAX / 20u ||
        (requested - entries) % 20u != 0u) {
      return false;
    }
    const uintptr_t requested_index = (requested - entries) / 20u;
    if (requested_index >= capacity || requested_index > UINT32_MAX) {
      return false;
    }
    slot_index = static_cast<uint32_t>(requested_index);
    slot_address = requested;
  } else {
    if (consumer_index > UINTPTR_MAX / 20u ||
        entries > UINTPTR_MAX - static_cast<uintptr_t>(consumer_index) * 20u) {
      return false;
    }
    slot_address = entries + static_cast<uintptr_t>(consumer_index) * 20u;
  }

  uint32_t words[5] = {};
  for (size_t index = 0u; index < _countof(words); ++index) {
    if (slot_address > UINTPTR_MAX - index * sizeof(uint32_t) ||
        !ReadLittleBustersProducerWord(
            reinterpret_cast<const uint8_t*>(slot_address) +
                index * sizeof(uint32_t),
            &words[index])) {
      return false;
    }
  }
  fushi_voice_hook::little_busters::LittleBustersProducerSlotFields fields;
  if (!fushi_voice_hook::little_busters::ParseLittleBustersProducerSlotFields(
          words, _countof(words), &fields)) {
    return false;
  }
  output->spec = spec;
  output->ring = ring;
  output->slot = reinterpret_cast<void*>(slot_address);
  output->capacity = capacity;
  output->producer_index = producer_index;
  output->consumer_index = consumer_index;
  output->slot_index = slot_index;
  output->fields = fields;
  return true;
}

uint32_t LittleBustersConsumerCallsiteRva(uintptr_t return_address,
                                           uint32_t target_rva) {
  if (return_address >= g_little_busters_producer_module_base + 5u) {
    const uintptr_t call_address = return_address - 5u;
    const uint32_t callsite_rva = LittleBustersProducerRvaForAddress(call_address);
    uint8_t call_bytes[5] = {};
    if (callsite_rva != 0u &&
        ReadLittleBustersProducerBytes(g_little_busters_producer_module_base,
                                       g_little_busters_producer_module_bytes,
                                       callsite_rva, call_bytes,
                                       sizeof(call_bytes)) &&
        fushi_voice_hook::little_busters::DecodeLittleBustersProducerRel32Call(
            call_bytes, sizeof(call_bytes), callsite_rva, target_rva)) {
      return callsite_rva;
    }
  }
  return LittleBustersProducerRvaForAddress(return_address);
}

uint32_t NextLittleBustersProducerSlotGeneration(uint32_t queue_id,
                                                 uint32_t slot_index,
                                                 bool* valid) {
  if (valid != nullptr) *valid = false;
  if (queue_id >= _countof(g_little_busters_slot_generations) ||
      slot_index >= fushi_voice_hook::little_busters::
                         kLittleBustersProducerMaxRingSlots) {
    return 0u;
  }
  const LONG generation = InterlockedIncrement(
      &g_little_busters_slot_generations[queue_id][slot_index]);
  if (generation <= 0) return 0u;
  if (valid != nullptr) *valid = true;
  return static_cast<uint32_t>(generation);
}

uint32_t LittleBustersProducerObjectToken(void* object) {
  if (object == nullptr) return 0u;
  for (size_t index = 0u; index < _countof(g_little_busters_object_tokens);
       ++index) {
    LittleBustersProducerObjectTokenSlot& slot =
        g_little_busters_object_tokens[index];
    if (InterlockedCompareExchange(&slot.state, 0, 0) != 2) continue;
    MemoryBarrier();
    if (slot.object == object) return slot.token;
  }
  for (size_t index = 0u; index < _countof(g_little_busters_object_tokens);
       ++index) {
    LittleBustersProducerObjectTokenSlot& slot =
        g_little_busters_object_tokens[index];
    if (InterlockedCompareExchange(&slot.state, 1, 0) != 0) continue;
    slot.object = object;
    const LONG token = InterlockedIncrement(&g_little_busters_next_object_token);
    if (token <= 0 ||
        token > static_cast<LONG>(fushi_voice_hook::little_busters::
                                      kLittleBustersProducerObjectTokenSlots)) {
      slot.object = nullptr;
      slot.token = 0u;
      InterlockedExchange(&slot.state, 0);
      return 0u;
    }
    slot.token = static_cast<uint32_t>(token);
    MemoryBarrier();
    InterlockedExchange(&slot.state, 2);
    return slot.token;
  }
  return 0u;
}

void CaptureLittleBustersProducerObjectFields(
    uintptr_t object,
    fushi_voice_hook::little_busters::LittleBustersProducerCalibrationFields*
        fields) {
  if (object == 0u || fields == nullptr) return;
  fields->slot_0_object_token = LittleBustersProducerObjectToken(
      reinterpret_cast<void*>(object));
  uintptr_t vtable = 0u;
  if (ReadLittleBustersProducerPointer(reinterpret_cast<const void*>(object),
                                       &vtable)) {
    fields->object_vtable_rva = LittleBustersProducerRvaForAddress(vtable);
  }
  const struct {
    uint32_t offset;
    uint32_t* value;
    uint32_t bit;
  } probes[] = {
      {0x428u, &fields->object_428, 1u << 0},
      {0x42Cu, &fields->object_42c, 1u << 1},
      {0x434u, &fields->object_434, 1u << 2},
      {0x438u, &fields->object_438, 1u << 3},
  };
  for (const auto& probe : probes) {
    if (object > UINTPTR_MAX - probe.offset ||
        ReadLittleBustersProducerWord(
            reinterpret_cast<const void*>(object + probe.offset),
            probe.value)) {
      if (object <= UINTPTR_MAX - probe.offset) {
        fields->object_field_valid_mask |= probe.bit;
      }
    }
  }
}

#if defined(_M_IX86)

void PublishLittleBustersConsumerContext(
    const fushi_voice_hook::little_busters::LittleBustersConsumerCalibrationFields& fields) {
  if (fields.consumer_rva != fushi_voice_hook::little_busters::
                                 kLittleBustersProducerConsumerSelectRva ||
      fields.thread_id == 0u || fields.queue_id == UINT32_MAX ||
      fields.slot_index == UINT32_MAX || fields.slot_0_object_token == 0u) {
    return;
  }
  for (LittleBustersConsumerContextSlot& slot :
       g_little_busters_consumer_contexts) {
    if (InterlockedCompareExchange(&slot.state, 1, 0) != 0) continue;
    slot.fields = fields;
    MemoryBarrier();
    InterlockedExchange(&slot.state, 2);
    return;
  }
}

void RetireLittleBustersConsumerContext(
    const fushi_voice_hook::little_busters::LittleBustersConsumerCalibrationFields& fields) {
  if (fields.queue_id == UINT32_MAX || fields.slot_index == UINT32_MAX ||
      fields.slot_0_object_token == 0u) {
    return;
  }
  for (LittleBustersConsumerContextSlot& slot :
       g_little_busters_consumer_contexts) {
    if (InterlockedCompareExchange(&slot.state, 0, 0) != 2) continue;
    MemoryBarrier();
    const auto candidate = slot.fields;
    if (candidate.thread_id != fields.thread_id ||
        candidate.queue_id != fields.queue_id ||
        candidate.slot_index != fields.slot_index ||
        candidate.request_index != fields.request_index ||
        candidate.slot_0_object_token != fields.slot_0_object_token) {
      continue;
    }
    InterlockedExchange(&slot.state, 0);
  }
}

uint32_t FindLittleBustersProducerObjectTokenReadOnly(uintptr_t object) {
  if (object == 0u) return 0u;
  for (const LittleBustersProducerObjectTokenSlot& slot :
       g_little_busters_object_tokens) {
    if (InterlockedCompareExchange(const_cast<volatile LONG*>(&slot.state), 0,
                                   0) != 2) {
      continue;
    }
    MemoryBarrier();
    if (reinterpret_cast<uintptr_t>(slot.object) == object) return slot.token;
  }
  return 0u;
}

fushi_voice_hook::little_busters::LittleBustersVoiceReadConsumerContextFields
CaptureLittleBustersVoiceReadConsumerContext(DWORD read_thread_id) {
  fushi_voice_hook::little_busters::LittleBustersVoiceReadConsumerContextFields
      result;
  result.worker_context_layout_valid =
      g_little_busters_consumer_worker_context_addresses.valid;
  result.worker_read_thread_id = static_cast<uint32_t>(read_thread_id);
  if (read_thread_id != 0u) {
    result.worker_snapshot_valid_mask |= fushi_voice_hook::little_busters::
        kLittleBustersWorkerSnapshotThread;
  }
  uintptr_t object = 0u;
  uint32_t request_index = 0u;
  uint32_t slot_0c_state = 0u;
  uint32_t slot_10_mode = 0u;
  uint32_t consumer_state = 0u;
  if (read_thread_id != 0u && result.worker_context_layout_valid) {
    if (ReadLittleBustersProducerPointer(
            reinterpret_cast<const void*>(g_little_busters_consumer_worker_context_addresses
                                               .current_object),
            &object)) {
      result.worker_snapshot_valid_mask |= fushi_voice_hook::little_busters::
          kLittleBustersWorkerSnapshotObject;
    }
    if (ReadLittleBustersProducerWord(
            reinterpret_cast<const void*>(g_little_busters_consumer_worker_context_addresses
                                               .request_index),
            &request_index)) {
      result.worker_snapshot_valid_mask |= fushi_voice_hook::little_busters::
          kLittleBustersWorkerSnapshotRequestIndex;
    }
    if (ReadLittleBustersProducerWord(
            reinterpret_cast<const void*>(g_little_busters_consumer_worker_context_addresses
                                               .slot_0c_state),
            &slot_0c_state)) {
      result.worker_snapshot_valid_mask |= fushi_voice_hook::little_busters::
          kLittleBustersWorkerSnapshotSlot0c;
    }
    if (ReadLittleBustersProducerWord(
            reinterpret_cast<const void*>(g_little_busters_consumer_worker_context_addresses
                                               .slot_10_mode),
            &slot_10_mode)) {
      result.worker_snapshot_valid_mask |= fushi_voice_hook::little_busters::
          kLittleBustersWorkerSnapshotSlot10;
    }
    if (ReadLittleBustersConsumerState(&consumer_state)) {
      result.worker_snapshot_valid_mask |= fushi_voice_hook::little_busters::
          kLittleBustersWorkerSnapshotConsumerState;
    }
  }
  result.worker_snapshot_valid =
      result.worker_snapshot_valid_mask == fushi_voice_hook::little_busters::
          kLittleBustersWorkerSnapshotAllFields;
  result.worker_consumer_state = consumer_state;
  result.worker_request_index = request_index;
  result.worker_slot_0c_state = slot_0c_state;
  result.worker_slot_10_mode = slot_10_mode;
  const uint32_t object_token = object == 0u
                                    ? 0u
                                    : FindLittleBustersProducerObjectTokenReadOnly(
                                          object);
  result.worker_object_token = object_token;

  fushi_voice_hook::little_busters::LittleBustersConsumerCalibrationFields
      unique_same_thread_candidate;
  bool have_unique_same_thread_candidate = false;
  auto copy_candidate_metadata =
      [&](const fushi_voice_hook::little_busters::
              LittleBustersConsumerCalibrationFields& candidate) {
        result.candidate_queue_id = candidate.queue_id;
        result.candidate_queue_rva = candidate.queue_rva;
        result.candidate_slot_index = candidate.slot_index;
        result.candidate_slot_generation = candidate.slot_generation;
        result.candidate_slot_generation_valid = candidate.slot_generation_valid;
        result.candidate_request_index = candidate.request_index;
        result.candidate_object_token = candidate.slot_0_object_token;
        result.candidate_consumer_state = candidate.consumer_state;
        result.candidate_slot_0c_state = candidate.slot_0c_state;
        result.candidate_slot_10_mode = candidate.slot_10_mode;
        result.candidate_enqueue_token = candidate.enqueue_token;
        result.candidate_enqueue_token_matched = candidate.enqueue_token_matched;
      };

  for (const LittleBustersConsumerContextSlot& slot :
       g_little_busters_consumer_contexts) {
    if (InterlockedCompareExchange(const_cast<volatile LONG*>(&slot.state), 0,
                                   0) != 2) {
      continue;
    }
    MemoryBarrier();
    const auto candidate = slot.fields;
    ++result.live_context_count;
    if (read_thread_id != 0u &&
        candidate.thread_id == static_cast<uint32_t>(read_thread_id)) {
      ++result.same_thread_context_count;
      if (candidate.consumer_rva == fushi_voice_hook::little_busters::
                                        kLittleBustersProducerConsumerSelectRva) {
        ++result.same_thread_select_count;
        if (result.same_thread_select_count == 1u) {
          unique_same_thread_candidate = candidate;
          have_unique_same_thread_candidate = true;
          copy_candidate_metadata(candidate);
        }
      }
    }
    if (!result.worker_snapshot_valid || object_token == 0u) continue;
    if (!fushi_voice_hook::little_busters::
            IsLittleBustersConsumerWorkerContextMatch(
                candidate, read_thread_id, consumer_state, request_index,
                object_token, slot_0c_state, slot_10_mode)) {
      continue;
    }
    ++result.match_count;
    if (result.match_count == 1u) {
      result.context_matched = true;
      result.enqueue_token = candidate.enqueue_token;
      result.enqueue_token_matched = candidate.enqueue_token_matched;
      result.queue_id = candidate.queue_id;
      result.queue_rva = candidate.queue_rva;
      result.slot_index = candidate.slot_index;
      result.slot_generation = candidate.slot_generation;
      result.slot_generation_valid = candidate.slot_generation_valid;
      result.request_index = candidate.request_index;
      result.object_token = candidate.slot_0_object_token;
      result.consumer_state = candidate.consumer_state;
      result.slot_0c_state = candidate.slot_0c_state;
      result.slot_10_mode = candidate.slot_10_mode;
    }
  }
  if (result.same_thread_select_count == 1u &&
      have_unique_same_thread_candidate) {
    result.same_thread_candidate_available = true;
    result.candidate_mismatch_available = result.worker_snapshot_valid;
    if (result.candidate_mismatch_available) {
      result.candidate_mismatch_mask =
          fushi_voice_hook::little_busters::
              ClassifyLittleBustersConsumerWorkerContextMismatch(
                  unique_same_thread_candidate,
                  result.worker_read_thread_id, result.worker_consumer_state,
                  result.worker_request_index, result.worker_object_token,
                  result.worker_slot_0c_state, result.worker_slot_10_mode);
    }
  } else {
    result.same_thread_candidate_available = false;
    result.candidate_mismatch_available = false;
    result.candidate_mismatch_mask = 0u;
    result.candidate_queue_id = UINT32_MAX;
    result.candidate_queue_rva = 0u;
    result.candidate_slot_index = UINT32_MAX;
    result.candidate_slot_generation = 0u;
    result.candidate_slot_generation_valid = false;
    result.candidate_request_index = 0u;
    result.candidate_object_token = 0u;
    result.candidate_consumer_state = 0u;
    result.candidate_slot_0c_state = 0u;
    result.candidate_slot_10_mode = 0u;
    result.candidate_enqueue_token = 0u;
    result.candidate_enqueue_token_matched = false;
  }
  if (result.match_count != 1u) {
    result.context_matched = false;
    result.enqueue_token = 0u;
    result.enqueue_token_matched = false;
    result.queue_id = UINT32_MAX;
    result.queue_rva = 0u;
    result.slot_index = UINT32_MAX;
    result.slot_generation = 0u;
    result.slot_generation_valid = false;
    result.request_index = 0u;
    result.object_token = 0u;
    result.consumer_state = 0u;
    result.slot_0c_state = 0u;
    result.slot_10_mode = 0u;
  }
  return result;
}

#else

void PublishLittleBustersConsumerContext(
    const fushi_voice_hook::little_busters::LittleBustersConsumerCalibrationFields&) {}

void RetireLittleBustersConsumerContext(
    const fushi_voice_hook::little_busters::LittleBustersConsumerCalibrationFields&) {}

fushi_voice_hook::little_busters::LittleBustersVoiceReadConsumerContextFields
CaptureLittleBustersVoiceReadConsumerContext(DWORD /*read_thread_id*/) {
  return {};
}

#endif

void CaptureLittleBustersConsumerSubmission(
    const LittleBustersConsumerRingSnapshot& snapshot, uint32_t consumer_rva,
    uint32_t consumer_state, uint32_t callsite_rva, bool retire_match) {
  if (snapshot.spec == nullptr || snapshot.ring == nullptr ||
      snapshot.slot == nullptr || snapshot.slot_index == UINT32_MAX ||
      InterlockedCompareExchange(&g_little_busters_producer_trace_enabled, 0,
                                 0) == 0) {
    return;
  }
  fushi_voice_hook::little_busters::LittleBustersConsumerCalibrationFields
      fields;
  fields.tick_ms = GetTickCount64();
  fields.thread_id = GetCurrentThreadId();
  fields.consumer_rva = consumer_rva;
  fields.consumer_callsite_rva = callsite_rva;
  fields.consumer_state = consumer_state;
  fields.queue_id = snapshot.spec->queue_id;
  fields.queue_rva = snapshot.spec->queue_rva;
  fields.slot_index = snapshot.slot_index;
  fields.request_index = snapshot.fields.slot_8;
  fields.slot_0_object_token = 0u;
  fields.slot_8_request_index = snapshot.fields.slot_8;
  fields.slot_0c_state = snapshot.fields.slot_0c;
  fields.slot_10_mode = snapshot.fields.slot_10;

  fushi_voice_hook::little_busters::LittleBustersProducerCalibrationFields
      object_fields;
  CaptureLittleBustersProducerObjectFields(
      static_cast<uintptr_t>(snapshot.fields.slot_0), &object_fields);
  fields.slot_0_object_token = object_fields.slot_0_object_token;
  fields.object_vtable_rva = object_fields.object_vtable_rva;
  fields.object_field_valid_mask = object_fields.object_field_valid_mask;
  fields.object_428 = object_fields.object_428;
  fields.object_42c = object_fields.object_42c;
  fields.object_434 = object_fields.object_434;
  fields.object_438 = object_fields.object_438;

  const LittleBustersProducerCorrelationLookup match =
      FindLittleBustersProducerCorrelation(
          fields.queue_id, fields.slot_index, fields.request_index,
          fields.slot_0_object_token, retire_match);
  fields.producer_match_count = match.match_count;
  if (match.match_count == 1u) {
    fields.enqueue_token = match.fields.enqueue_token;
    fields.slot_generation = match.fields.slot_generation;
    fields.slot_generation_valid = match.fields.slot_generation_valid;
    fields.enqueue_token_matched = true;
  }
  fields.baseline_text_write_count =
      g_header == nullptr
          ? 0u
          : fushi_voice_hook::AtomicLoadPreview64(&g_header->text_write_count);
  fields.baseline_seq = fields.baseline_text_write_count;
  fields.selected_text_thread_id =
      g_header == nullptr ? 0u : fushi_voice_hook::SelectedTextThreadId(g_header);
  if (retire_match) {
    RetireLittleBustersConsumerContext(fields);
  } else {
    PublishLittleBustersConsumerContext(fields);
  }
  RecordLittleBustersCalibrationConsumer(fields);
}

bool ValidateLittleBustersConsumerWorkerContextLayout(
    uintptr_t module_base, size_t image_bytes,
    fushi_voice_hook::little_busters::LittleBustersConsumerWorkerContextAddresses*
        output) {
  if (output == nullptr) return false;
  *output = {};
  constexpr uint32_t kWorkerSelectRva = fushi_voice_hook::little_busters::
      kLittleBustersConsumerWorkerSelectRva;
  constexpr size_t kWorkerSelectCopyBytes = 0x43u;
  uint8_t bytes[kWorkerSelectCopyBytes] = {};
  if (!IsLittleBustersProducerExecutableRange(
          module_base, image_bytes, kWorkerSelectRva,
          sizeof(bytes)) ||
      !ReadLittleBustersProducerBytes(module_base, image_bytes, kWorkerSelectRva,
                                      bytes, sizeof(bytes))) {
    return false;
  }
  const uint8_t fixed_prefix[] = {
      0x8Bu, 0xC8u, 0x85u, 0xC9u, 0x0Fu, 0x84u, 0x43u, 0x14u, 0x00u, 0x00u,
      0x8Bu, 0x01u, 0x85u, 0xC0u, 0x74u, 0x0Eu, 0x8Bu, 0xB0u, 0x24u, 0x04u,
      0x00u, 0x00u,
  };
  if (std::memcmp(bytes, fixed_prefix, sizeof(fixed_prefix)) != 0 ||
      bytes[0x16u] != 0x89u || bytes[0x17u] != 0x35u ||
      bytes[0x1Cu] != 0xEBu || bytes[0x1Du] != 0x06u ||
      bytes[0x1Eu] != 0x8Bu || bytes[0x1Fu] != 0x35u ||
      bytes[0x24u] != 0x8Bu || bytes[0x25u] != 0x79u ||
      bytes[0x26u] != 0x08u || bytes[0x27u] != 0xA3u ||
      bytes[0x2Cu] != 0x0Fu || bytes[0x2Du] != 0xBFu ||
      bytes[0x2Eu] != 0x41u || bytes[0x2Fu] != 0x0Cu ||
      bytes[0x30u] != 0xA3u || bytes[0x35u] != 0x8Bu ||
      bytes[0x36u] != 0x41u || bytes[0x37u] != 0x10u ||
      bytes[0x38u] != 0x89u || bytes[0x39u] != 0x3Du ||
      bytes[0x3Eu] != 0xA3u) {
    return false;
  }
  auto read_absolute = [&](size_t offset, uintptr_t* address) {
    if (address == nullptr || offset > sizeof(bytes) - sizeof(uint32_t)) {
      return false;
    }
    uint32_t value = 0u;
    std::memcpy(&value, bytes + offset, sizeof(value));
    if (value == 0u) return false;
    *address = static_cast<uintptr_t>(value);
    return true;
  };
  uintptr_t current_object = 0u;
  uintptr_t request_index = 0u;
  uintptr_t slot_0c_state = 0u;
  uintptr_t slot_10_mode = 0u;
  const bool current_object_decoded =
      read_absolute(0x28u, &current_object);
  const bool slot_0c_state_decoded =
      read_absolute(0x31u, &slot_0c_state);
  const bool request_index_decoded =
      read_absolute(0x3Au, &request_index);
  const bool slot_10_mode_decoded =
      read_absolute(0x3Fu, &slot_10_mode);
  return fushi_voice_hook::little_busters::
      FinalizeLittleBustersConsumerWorkerContextAddresses(
          current_object, current_object_decoded, request_index,
          request_index_decoded, slot_0c_state, slot_0c_state_decoded,
          slot_10_mode, slot_10_mode_decoded, output);
}

bool ValidateLittleBustersConsumerWorkerVoiceReadCallsite(
    uintptr_t module_base, size_t image_bytes) {
  constexpr uint32_t kCallsite = fushi_voice_hook::little_busters::
      kLittleBustersConsumerWorkerVoiceReadCallsiteRva;
  constexpr uint32_t kStart = kCallsite - 0x0Cu;
  uint8_t bytes[0x11u] = {};
  if (!IsLittleBustersProducerExecutableRange(module_base, image_bytes, kStart,
                                               sizeof(bytes)) ||
      !ReadLittleBustersProducerBytes(module_base, image_bytes, kStart, bytes,
                                      sizeof(bytes)) ||
      bytes[0] != 0x56u || bytes[1] != 0xFFu || bytes[2] != 0x35u ||
      bytes[7] != 0xB9u || bytes[12] != 0xE8u) {
    return false;
  }
  uint32_t ignored_read_state_address = 0u;
  uint32_t ignored_file_object_address = 0u;
  std::memcpy(&ignored_read_state_address, bytes + 3u,
              sizeof(ignored_read_state_address));
  std::memcpy(&ignored_file_object_address, bytes + 8u,
              sizeof(ignored_file_object_address));
  return ignored_read_state_address != 0u && ignored_file_object_address != 0u &&
         fushi_voice_hook::little_busters::DecodeLittleBustersProducerRel32Call(
             bytes + 12u, 5u, kCallsite,
             fushi_voice_hook::little_busters::
                 kLittleBustersConsumerWorkerVoiceReadWrapperRva);
}

bool ValidateLittleBustersProducerHookLayout(HMODULE module,
                                             uintptr_t module_base,
                                             size_t image_bytes,
                                             fushi_voice_hook::little_busters::
                                                 LittleBustersConsumerWorkerContextAddresses*
                                                     worker_context_addresses) {
  if (worker_context_addresses == nullptr ||
      !ValidateLittleBustersConsumerWorkerContextLayout(
          module_base, image_bytes, worker_context_addresses) ||
      !ValidateLittleBustersConsumerWorkerVoiceReadCallsite(module_base,
                                                             image_bytes)) {
    return false;
  }
  uint8_t actual[32] = {};
  if (!IsLittleBustersProducerExecutableRange(
          module_base, image_bytes,
          fushi_voice_hook::little_busters::kLittleBustersProducerRingEnqueueRva,
          fushi_voice_hook::little_busters::kLittleBustersProducerRingPrefix.size()) ||
      !ReadLittleBustersProducerBytes(
          module_base, image_bytes,
          fushi_voice_hook::little_busters::kLittleBustersProducerRingEnqueueRva,
          actual, fushi_voice_hook::little_busters::
                      kLittleBustersProducerRingPrefix.size()) ||
      !fushi_voice_hook::little_busters::MatchesLittleBustersProducerBytes(
          actual, fushi_voice_hook::little_busters::
                      kLittleBustersProducerRingPrefix.size(),
          fushi_voice_hook::little_busters::kLittleBustersProducerRingPrefix.data(),
          fushi_voice_hook::little_busters::kLittleBustersProducerRingPrefix.size())) {
    return false;
  }

  auto read_u32 = [&](const uint8_t* bytes, size_t offset,
                      uint32_t* value) {
    if (bytes == nullptr || value == nullptr) return false;
    std::memcpy(value, bytes + offset, sizeof(*value));
    return true;
  };
  auto check_absolute = [&](const uint8_t* bytes, size_t offset,
                            uint8_t opcode, uint32_t expected_rva) {
    uint32_t address = 0u;
    return bytes[offset] == opcode && read_u32(bytes, offset + 1u, &address) &&
           module_base <= UINTPTR_MAX - static_cast<uintptr_t>(expected_rva) &&
           address == static_cast<uint32_t>(module_base + expected_rva);
  };
  auto check_rel32 = [&](const uint8_t* bytes, uint32_t function_rva,
                         size_t offset, uint32_t target_rva) {
    return fushi_voice_hook::little_busters::DecodeLittleBustersProducerRel32Call(
        bytes + offset, 5u, function_rva + static_cast<uint32_t>(offset),
        target_rva);
  };

  // 0x3F340 is the main worker's queue selector.  The complete dispatch
  // skeleton is checked, including the four supported queue globals, the
  // explicitly unsupported D85160 branch, and every call to the proven
  // 0x41230 slot accessor.
  constexpr uint32_t kConsumerSelectRva =
      fushi_voice_hook::little_busters::kLittleBustersProducerConsumerSelectRva;
  const uint8_t select_state_2[] = {0x83u, 0xF8u, 0x02u, 0x75u, 0x0Bu};
  const uint8_t select_state_3[] = {0x83u, 0xF8u, 0x03u, 0x75u, 0x0Bu};
  const uint8_t select_state_4[] = {0x83u, 0xF8u, 0x04u, 0x75u, 0x0Bu};
  const uint8_t select_state_5[] = {0x83u, 0xF8u, 0x05u, 0x74u, 0x05u};
  uint8_t select_bytes[75] = {};
  if (!IsLittleBustersProducerExecutableRange(module_base, image_bytes,
                                               kConsumerSelectRva,
                                               sizeof(select_bytes)) ||
      !ReadLittleBustersProducerBytes(module_base, image_bytes,
                                      kConsumerSelectRva, select_bytes,
                                      sizeof(select_bytes)) ||
      !check_absolute(
          select_bytes, 0u, 0xA1u,
          fushi_voice_hook::little_busters::
              kLittleBustersProducerConsumerStateRva) ||
      select_bytes[5] != 0x51u ||
      std::memcmp(select_bytes + 6u, select_state_2,
                  sizeof(select_state_2)) != 0 ||
      !check_absolute(
          select_bytes, 11u, 0xB9u,
          fushi_voice_hook::little_busters::kLittleBustersProducerHookSpecs[3]
              .queue_rva) ||
      !check_rel32(select_bytes, kConsumerSelectRva, 16u,
                   fushi_voice_hook::little_busters::kLittleBustersProducerRingPeekRva) ||
      std::memcmp(select_bytes + 22u, select_state_3,
                  sizeof(select_state_3)) != 0 ||
      !check_absolute(
          select_bytes, 27u, 0xB9u,
          fushi_voice_hook::little_busters::kLittleBustersProducerHookSpecs[1]
              .queue_rva) ||
      !check_rel32(select_bytes, kConsumerSelectRva, 32u,
                   fushi_voice_hook::little_busters::kLittleBustersProducerRingPeekRva) ||
      std::memcmp(select_bytes + 38u, select_state_4,
                  sizeof(select_state_4)) != 0 ||
      !check_absolute(
          select_bytes, 43u, 0xB9u,
          fushi_voice_hook::little_busters::kLittleBustersProducerHookSpecs[2]
              .queue_rva) ||
      !check_rel32(select_bytes, kConsumerSelectRva, 48u,
                   fushi_voice_hook::little_busters::kLittleBustersProducerRingPeekRva) ||
      !check_absolute(select_bytes, 54u, 0xB9u, 0x6D5160u) ||
      std::memcmp(select_bytes + 59u, select_state_5,
                  sizeof(select_state_5)) != 0 ||
      !check_absolute(
          select_bytes, 64u, 0xB9u,
          fushi_voice_hook::little_busters::kLittleBustersProducerHookSpecs[0]
              .queue_rva) ||
      !check_rel32(select_bytes, kConsumerSelectRva, 69u,
                   fushi_voice_hook::little_busters::kLittleBustersProducerRingPeekRva) ||
      select_bytes[21] != 0xC3u || select_bytes[37] != 0xC3u ||
      select_bytes[53] != 0xC3u || select_bytes[74] != 0xC3u) {
    return false;
  }

  auto check_two_byte_opcode = [&](const uint8_t* bytes, size_t offset,
                                   uint8_t first, uint8_t second) {
    return bytes[offset] == first && bytes[offset + 1u] == second;
  };
  auto check_memory_operand = [&](const uint8_t* bytes, size_t offset,
                                  uint8_t first, uint8_t second,
                                  size_t operand_offset, uint32_t expected_rva) {
    uint32_t address = 0u;
    return check_two_byte_opcode(bytes, offset, first, second) &&
           read_u32(bytes, offset + operand_offset, &address) &&
           module_base <= UINTPTR_MAX - static_cast<uintptr_t>(expected_rva) &&
           address == static_cast<uint32_t>(module_base + expected_rva);
  };

  // 0x3F390 is the main worker's matching consumer advance.  It has one
  // state-dispatch branch per ring and updates that ring's consumer index
  // directly.  Validate the branch skeleton and all queue operands before
  // installing the detour, including the non-profile D85160 branch which is
  // deliberately ignored by the recorder.
  constexpr uint32_t kConsumerAdvanceRva =
      fushi_voice_hook::little_busters::kLittleBustersProducerConsumerAdvanceRva;
  constexpr size_t kConsumerAdvanceBytes = 0x119u;
  uint8_t consumer_advance[kConsumerAdvanceBytes] = {};
  const auto& producer_specs =
      fushi_voice_hook::little_busters::kLittleBustersProducerHookSpecs;
  if (!IsLittleBustersProducerExecutableRange(module_base, image_bytes,
                                               kConsumerAdvanceRva,
                                               sizeof(consumer_advance)) ||
      !ReadLittleBustersProducerBytes(module_base, image_bytes,
                                      kConsumerAdvanceRva, consumer_advance,
                                      sizeof(consumer_advance)) ||
      !check_absolute(
          consumer_advance, 0u, 0xA1u,
          fushi_voice_hook::little_busters::
              kLittleBustersProducerConsumerStateRva) ||
      std::memcmp(consumer_advance + 5u,
                  (const uint8_t*)"\x83\xF8\x02\x75\x3B", 5u) != 0 ||
      !check_memory_operand(
          consumer_advance, 0x0Au, 0x83u, 0x3Du, 2u,
          producer_specs[3].queue_rva + 4u) ||
      !check_absolute(consumer_advance, 0x17u, 0xA1u,
                      producer_specs[3].queue_rva + 0x0Cu) ||
      !check_memory_operand(consumer_advance, 0x1Cu, 0x39u, 0x05u, 2u,
                            producer_specs[3].queue_rva + 8u) ||
      !check_absolute(consumer_advance, 0x29u, 0xA3u,
                      producer_specs[3].queue_rva + 0x0Cu) ||
      !check_memory_operand(consumer_advance, 0x2Eu, 0x3Bu, 0x05u, 2u,
                            producer_specs[3].queue_rva) ||
      !check_memory_operand(consumer_advance, 0x3Au, 0xC7u, 0x05u, 2u,
                            producer_specs[3].queue_rva + 0x0Cu) ||
      consumer_advance[0x44u] != 0xC3u ||
      std::memcmp(consumer_advance + 0x45u,
                  (const uint8_t*)"\x83\xF8\x03\x75\x3B", 5u) != 0 ||
      !check_memory_operand(consumer_advance, 0x4Au, 0x83u, 0x3Du, 2u,
                            producer_specs[1].queue_rva + 4u) ||
      !check_absolute(consumer_advance, 0x57u, 0xA1u,
                      producer_specs[1].queue_rva + 0x0Cu) ||
      !check_memory_operand(consumer_advance, 0x5Cu, 0x39u, 0x05u, 2u,
                            producer_specs[1].queue_rva + 8u) ||
      !check_absolute(consumer_advance, 0x69u, 0xA3u,
                      producer_specs[1].queue_rva + 0x0Cu) ||
      !check_memory_operand(consumer_advance, 0x6Eu, 0x3Bu, 0x05u, 2u,
                            producer_specs[1].queue_rva) ||
      !check_memory_operand(consumer_advance, 0x7Au, 0xC7u, 0x05u, 2u,
                            producer_specs[1].queue_rva + 0x0Cu) ||
      consumer_advance[0x84u] != 0xC3u ||
      std::memcmp(consumer_advance + 0x85u,
                  (const uint8_t*)"\x83\xF8\x04\x75\x33", 5u) != 0 ||
      !check_memory_operand(consumer_advance, 0x8Au, 0x83u, 0x3Du, 2u,
                            producer_specs[2].queue_rva + 4u) ||
      !check_absolute(consumer_advance, 0x97u, 0xA1u,
                      producer_specs[2].queue_rva + 0x0Cu) ||
      !check_memory_operand(consumer_advance, 0x9Cu, 0x39u, 0x05u, 2u,
                            producer_specs[2].queue_rva + 8u) ||
      !check_absolute(consumer_advance, 0xA5u, 0xA3u,
                      producer_specs[2].queue_rva + 0x0Cu) ||
      !check_memory_operand(consumer_advance, 0xAAu, 0x3Bu, 0x05u, 2u,
                            producer_specs[2].queue_rva) ||
      !check_memory_operand(consumer_advance, 0xB2u, 0xC7u, 0x05u, 2u,
                            producer_specs[2].queue_rva + 0x0Cu) ||
      consumer_advance[0xBCu] != 0xC3u ||
      std::memcmp(consumer_advance + 0xBDu,
                  (const uint8_t*)"\x83\xF8\x05\x75\x2F", 5u) != 0 ||
      !check_memory_operand(consumer_advance, 0xC2u, 0x83u, 0x3Du, 2u,
                            0x6D5160u + 4u) ||
      !check_absolute(consumer_advance, 0xCBu, 0xA1u,
                      0x6D5160u + 0x0Cu) ||
      !check_memory_operand(consumer_advance, 0xD0u, 0x39u, 0x05u, 2u,
                            0x6D5160u + 8u) ||
      !check_absolute(consumer_advance, 0xD9u, 0xA3u,
                      0x6D5160u + 0x0Cu) ||
      !check_memory_operand(consumer_advance, 0xDEu, 0x3Bu, 0x05u, 2u,
                            0x6D5160u) ||
      !check_memory_operand(consumer_advance, 0xE6u, 0xC7u, 0x05u, 2u,
                            0x6D5160u + 0x0Cu) ||
      consumer_advance[0xF0u] != 0xC3u ||
      !check_memory_operand(consumer_advance, 0xF1u, 0x83u, 0x3Du, 2u,
                            producer_specs[0].queue_rva + 4u) ||
      !check_absolute(consumer_advance, 0xFAu, 0xA1u,
                      producer_specs[0].queue_rva + 0x0Cu) ||
      !check_memory_operand(consumer_advance, 0xFFu, 0x39u, 0x05u, 2u,
                            producer_specs[0].queue_rva + 8u) ||
      !check_memory_operand(consumer_advance, 0x10Au, 0x3Bu, 0x05u, 2u,
                            producer_specs[0].queue_rva) ||
      !check_absolute(consumer_advance, 0x113u, 0xA3u,
                      producer_specs[0].queue_rva + 0x0Cu) ||
      consumer_advance[0x118u] != 0xC3u) {
    return false;
  }

  const uint8_t ring_advance_expected[] = {
      0x83u, 0x79u, 0x04u, 0x00u, 0x74u, 0x13u, 0x8Bu, 0x41u, 0x0Cu,
      0x39u, 0x41u, 0x08u, 0x74u, 0x0Bu, 0x40u, 0x33u, 0xD2u, 0x3Bu,
      0x01u, 0x0Fu, 0x44u, 0xC2u, 0x89u, 0x41u, 0x0Cu, 0xC3u,
  };
  uint8_t ring_advance[sizeof(ring_advance_expected)] = {};
  if (!IsLittleBustersProducerExecutableRange(
          module_base, image_bytes,
          fushi_voice_hook::little_busters::
              kLittleBustersProducerRingAdvanceRva,
          sizeof(ring_advance)) ||
      !ReadLittleBustersProducerBytes(
          module_base, image_bytes,
          fushi_voice_hook::little_busters::kLittleBustersProducerRingAdvanceRva,
          ring_advance, sizeof(ring_advance)) ||
      std::memcmp(ring_advance, ring_advance_expected,
                  sizeof(ring_advance_expected)) != 0) {
    return false;
  }

  const uint32_t consumer_advance_calls[] = {
      0x3F969u, 0x3F9ACu, 0x3FA76u, 0x3FAB6u,
      0x3FAF5u, 0x40392u, 0x40974u,
  };
  uint8_t call_bytes[5] = {};
  for (const uint32_t callsite : consumer_advance_calls) {
    if (!ReadLittleBustersProducerBytes(module_base, image_bytes, callsite,
                                         call_bytes, sizeof(call_bytes)) ||
        !check_rel32(call_bytes, callsite, 0u,
                     fushi_voice_hook::little_busters::
                         kLittleBustersProducerConsumerAdvanceRva)) {
      return false;
    }
  }
  const uint32_t ring_advance_calls[] = {0x3F815u, 0x40841u, 0x4087Cu};
  for (const uint32_t callsite : ring_advance_calls) {
    if (!ReadLittleBustersProducerBytes(module_base, image_bytes, callsite,
                                         call_bytes, sizeof(call_bytes)) ||
        !check_rel32(call_bytes, callsite, 0u,
                     fushi_voice_hook::little_busters::
                         kLittleBustersProducerRingAdvanceRva)) {
      return false;
    }
  }

  for (const auto& spec : fushi_voice_hook::little_busters::
                               kLittleBustersProducerHookSpecs) {
    const bool one_arg = spec.argument_count == 1u;
    const uint8_t* prefix = one_arg
                                ? fushi_voice_hook::little_busters::
                                      kLittleBustersProducerOneArgPrefix.data()
                                : fushi_voice_hook::little_busters::
                                      kLittleBustersProducerThreeArgPrefix.data();
    const size_t prefix_bytes =
        one_arg ? fushi_voice_hook::little_busters::
                      kLittleBustersProducerOneArgPrefix.size()
                : fushi_voice_hook::little_busters::
                      kLittleBustersProducerThreeArgPrefix.size();
    const uint8_t* post_fill = one_arg
                                   ? fushi_voice_hook::little_busters::
                                         kLittleBustersProducerOneArgPostFill.data()
                                   : fushi_voice_hook::little_busters::
                                         kLittleBustersProducerThreeArgPostFill.data();
    const size_t post_fill_bytes =
        one_arg ? fushi_voice_hook::little_busters::
                      kLittleBustersProducerOneArgPostFill.size()
                : fushi_voice_hook::little_busters::
                      kLittleBustersProducerThreeArgPostFill.size();
    if (!IsLittleBustersProducerExecutableRange(module_base, image_bytes,
                                                spec.wrapper_rva,
                                                prefix_bytes) ||
        !ReadLittleBustersProducerBytes(module_base, image_bytes,
                                        spec.wrapper_rva, actual,
                                        prefix_bytes) ||
        !fushi_voice_hook::little_busters::MatchesLittleBustersProducerBytes(
            actual, prefix_bytes, prefix, prefix_bytes) ||
        spec.ring_callsite_rva <= spec.wrapper_rva ||
        spec.ring_callsite_rva - spec.wrapper_rva > 0x1000u ||
        !IsLittleBustersProducerExecutableRange(module_base, image_bytes,
                                                spec.ring_callsite_rva,
                                                5u + post_fill_bytes) ||
        !ReadLittleBustersProducerBytes(module_base, image_bytes,
                                        spec.ring_callsite_rva, actual, 5u) ||
        !fushi_voice_hook::little_busters::DecodeLittleBustersProducerRel32Call(
            actual, 5u, spec.ring_callsite_rva,
            fushi_voice_hook::little_busters::kLittleBustersProducerRingEnqueueRva) ||
        !ReadLittleBustersProducerBytes(module_base, image_bytes,
                                        spec.ring_callsite_rva + 5u, actual,
                                        post_fill_bytes) ||
        !fushi_voice_hook::little_busters::MatchesLittleBustersProducerBytes(
            actual, post_fill_bytes, post_fill, post_fill_bytes)) {
      return false;
    }

    if (spec.ring_callsite_rva < 5u ||
        !ReadLittleBustersProducerBytes(module_base, image_bytes,
                                        spec.ring_callsite_rva - 5u, actual, 5u) ||
        actual[0] != 0xB9u) {
      return false;
    }
    uint32_t queue_absolute = 0u;
    std::memcpy(&queue_absolute, actual + 1u, sizeof(queue_absolute));
    if (module_base > UINT32_MAX - spec.queue_rva ||
        queue_absolute != static_cast<uint32_t>(module_base + spec.queue_rva)) {
      return false;
    }
  }
  (void)module;
  return true;
}

bool ReadLittleBustersProducerRingSlotContext(
    void* ring, void* slot,
    LittleBustersProducerRingTlsCapture* output) {
  if (ring == nullptr || slot == nullptr || output == nullptr) return false;
  const auto* spec = LittleBustersProducerSpecForRing(ring);
  if (spec == nullptr) return false;
  uint32_t capacity = 0u;
  uintptr_t entries = 0u;
  if (!ReadLittleBustersProducerWord(ring, &capacity) ||
      !ReadLittleBustersProducerPointer(
          reinterpret_cast<const uint8_t*>(ring) + sizeof(uint32_t), &entries) ||
      capacity == 0u || capacity > 0x100000u || entries == 0u) {
    return false;
  }
  const uintptr_t returned = reinterpret_cast<uintptr_t>(slot);
  if (returned < entries ||
      returned - entries > UINTPTR_MAX / sizeof(uint32_t) ||
      (returned - entries) % (5u * sizeof(uint32_t)) != 0u) {
    return false;
  }
  const uintptr_t slot_index =
      (returned - entries) / (5u * sizeof(uint32_t));
  if (slot_index >= capacity || slot_index > UINT32_MAX) return false;
  output->ring = ring;
  output->slot = slot;
  output->queue_id = spec->queue_id;
  output->slot_index = static_cast<uint32_t>(slot_index);
  output->slot_generation = NextLittleBustersProducerSlotGeneration(
      spec->queue_id, output->slot_index, &output->slot_generation_valid);
  output->valid = true;
  return true;
}

LittleBustersProducerRingTlsCapture TakeLittleBustersProducerRingContext() {
  LittleBustersProducerRingTlsCapture capture = g_little_busters_producer_tls;
  g_little_busters_producer_tls = {};
  return capture;
}

void CaptureLittleBustersProducerSubmission(
    const fushi_voice_hook::little_busters::LittleBustersProducerHookSpec& spec,
    const LittleBustersProducerRingTlsCapture& context, uint32_t request,
    int32_t mode, uint32_t extra, uintptr_t caller_address) {
  if (!context.valid || context.ring == nullptr || context.slot == nullptr ||
      context.queue_id != spec.queue_id ||
      context.slot_index == UINT32_MAX ||
      InterlockedCompareExchange(&g_little_busters_producer_trace_enabled, 0,
                                 0) == 0) {
    return;
  }
  if (g_little_busters_producer_module_base > UINTPTR_MAX -
          static_cast<uintptr_t>(spec.queue_rva) ||
      reinterpret_cast<uintptr_t>(context.ring) !=
          g_little_busters_producer_module_base + spec.queue_rva) {
    return;
  }

  uint32_t words[5] = {};
  for (size_t index = 0u; index < _countof(words); ++index) {
    if (reinterpret_cast<uintptr_t>(context.slot) >
            UINTPTR_MAX - index * sizeof(uint32_t) ||
        !ReadLittleBustersProducerWord(
            reinterpret_cast<const uint8_t*>(context.slot) +
                index * sizeof(uint32_t),
            &words[index])) {
      return;
    }
  }
  fushi_voice_hook::little_busters::LittleBustersProducerSlotFields slot_fields;
  if (!fushi_voice_hook::little_busters::ParseLittleBustersProducerSlotFields(
          words, _countof(words), &slot_fields)) {
    return;
  }

  fushi_voice_hook::little_busters::LittleBustersProducerCalibrationFields fields;
  fields.tick_ms = GetTickCount64();
  fields.thread_id = GetCurrentThreadId();
  fields.enqueue_token = static_cast<uint64_t>(InterlockedIncrement64(
      &g_little_busters_enqueue_token));
  fields.wrapper_rva = spec.wrapper_rva;
  fields.callsite_rva = LittleBustersProducerRvaForAddress(caller_address);
  fields.ring_enqueue_rva = fushi_voice_hook::little_busters::
      kLittleBustersProducerRingEnqueueRva;
  fields.ring_callsite_rva = spec.ring_callsite_rva;
  fields.queue_id = spec.queue_id;
  fields.queue_rva = spec.queue_rva;
  fields.slot_index = context.slot_index;
  fields.slot_generation = context.slot_generation;
  fields.slot_generation_valid = context.slot_generation_valid;
  fields.request_index = request;
  fields.mode_arg = static_cast<uint32_t>(mode);
  fields.extra_arg = extra;
  fields.slot_0_object_token = 0u;
  fields.slot_8_request_index = slot_fields.slot_8;
  fields.slot_0c_state = slot_fields.slot_0c;
  fields.slot_10_mode = slot_fields.slot_10;
  CaptureLittleBustersProducerObjectFields(
      static_cast<uintptr_t>(slot_fields.slot_0), &fields);
  fields.baseline_text_write_count =
      g_header == nullptr
          ? 0u
          : fushi_voice_hook::AtomicLoadPreview64(&g_header->text_write_count);
  fields.baseline_seq = fields.baseline_text_write_count;
  fields.selected_text_thread_id =
      g_header == nullptr ? 0u : fushi_voice_hook::SelectedTextThreadId(g_header);
  // Publish the side-table provenance before returning to the game.  The
  // consumer may run on another thread as soon as the ring slot is visible;
  // it uses queue/slot/request/object identity to recover this token without
  // changing the game's 20-byte payload.
  PublishLittleBustersProducerCorrelation(fields);
  RecordLittleBustersCalibrationProducer(fields);
}

void* __fastcall DetourLittleBustersRingEnqueue(void* ring, void* /*edx*/) {
  g_little_busters_producer_tls = {};
  void* slot = g_orig_little_busters_ring_enqueue == nullptr
                   ? nullptr
                   : g_orig_little_busters_ring_enqueue(ring);
  if (InterlockedCompareExchange(&g_little_busters_producer_trace_enabled, 0,
                                 0) != 0 &&
      slot != nullptr) {
    ReadLittleBustersProducerRingSlotContext(
        ring, slot, &g_little_busters_producer_tls);
  }
  return slot;
}

bool __fastcall DetourLittleBustersProducer0(void* self, void* /*edx*/,
                                             uint32_t request) {
  const uintptr_t caller_address = reinterpret_cast<uintptr_t>(_ReturnAddress());
  const bool result = g_orig_little_busters_producer_0 != nullptr &&
                      g_orig_little_busters_producer_0(self, request);
  const LittleBustersProducerRingTlsCapture context =
      TakeLittleBustersProducerRingContext();
  if (result) {
    const auto* spec = fushi_voice_hook::little_busters::
        FindLittleBustersProducerHookSpecByWrapper(0x3E8A0u);
    if (spec != nullptr) {
      CaptureLittleBustersProducerSubmission(*spec, context, request, 0, 0,
                                             caller_address);
    }
  }
  return result;
}

bool __fastcall DetourLittleBustersProducer1(void* self, void* /*edx*/,
                                             uint32_t request) {
  const uintptr_t caller_address = reinterpret_cast<uintptr_t>(_ReturnAddress());
  const bool result = g_orig_little_busters_producer_1 != nullptr &&
                      g_orig_little_busters_producer_1(self, request);
  const LittleBustersProducerRingTlsCapture context =
      TakeLittleBustersProducerRingContext();
  if (result) {
    const auto* spec = fushi_voice_hook::little_busters::
        FindLittleBustersProducerHookSpecByWrapper(0x3EC10u);
    if (spec != nullptr) {
      CaptureLittleBustersProducerSubmission(*spec, context, request, 0, 0,
                                             caller_address);
    }
  }
  return result;
}

bool __fastcall DetourLittleBustersProducer2(void* self, void* /*edx*/,
                                             uint32_t request) {
  const uintptr_t caller_address = reinterpret_cast<uintptr_t>(_ReturnAddress());
  const bool result = g_orig_little_busters_producer_2 != nullptr &&
                      g_orig_little_busters_producer_2(self, request);
  const LittleBustersProducerRingTlsCapture context =
      TakeLittleBustersProducerRingContext();
  if (result) {
    const auto* spec = fushi_voice_hook::little_busters::
        FindLittleBustersProducerHookSpecByWrapper(0x3ECC0u);
    if (spec != nullptr) {
      CaptureLittleBustersProducerSubmission(*spec, context, request, 0, 0,
                                             caller_address);
    }
  }
  return result;
}

bool __fastcall DetourLittleBustersProducer3(void* self, void* /*edx*/,
                                             uint32_t request, int32_t mode,
                                             uint32_t extra) {
  const uintptr_t caller_address = reinterpret_cast<uintptr_t>(_ReturnAddress());
  const bool result = g_orig_little_busters_producer_3 != nullptr &&
                      g_orig_little_busters_producer_3(self, request, mode,
                                                       extra);
  const LittleBustersProducerRingTlsCapture context =
      TakeLittleBustersProducerRingContext();
  if (result) {
    const auto* spec = fushi_voice_hook::little_busters::
        FindLittleBustersProducerHookSpecByWrapper(0x3EE00u);
    if (spec != nullptr) {
      CaptureLittleBustersProducerSubmission(*spec, context, request, mode,
                                             extra, caller_address);
    }
  }
  return result;
}

void* __fastcall DetourLittleBustersConsumerSelect(uint32_t skip,
                                                    void* edx) {
  const uintptr_t return_address = reinterpret_cast<uintptr_t>(_ReturnAddress());
  uint32_t consumer_state = 0u;
  const auto* spec = ReadLittleBustersConsumerState(&consumer_state)
                         ? LittleBustersProducerSpecForConsumerState(
                               consumer_state)
                         : nullptr;
  void* ring = nullptr;
  if (spec != nullptr &&
      g_little_busters_producer_module_base <=
          UINTPTR_MAX - static_cast<uintptr_t>(spec->queue_rva)) {
    ring = reinterpret_cast<void*>(g_little_busters_producer_module_base +
                                   static_cast<uintptr_t>(spec->queue_rva));
  }
  void* slot = g_orig_little_busters_consumer_select == nullptr
                   ? nullptr
                   : g_orig_little_busters_consumer_select(skip, edx);
  if (slot != nullptr && ring != nullptr && spec != nullptr &&
      InterlockedCompareExchange(&g_little_busters_producer_trace_enabled, 0,
                                 0) != 0) {
    LittleBustersConsumerRingSnapshot snapshot;
    if (ReadLittleBustersConsumerRingSnapshot(ring, slot, &snapshot)) {
      CaptureLittleBustersConsumerSubmission(
          snapshot,
          fushi_voice_hook::little_busters::
              kLittleBustersProducerConsumerSelectRva,
          consumer_state,
          LittleBustersConsumerCallsiteRva(
              return_address,
              fushi_voice_hook::little_busters::
                  kLittleBustersProducerConsumerSelectRva),
          false);
    }
  }
  return slot;
}

void __cdecl DetourLittleBustersConsumerAdvance() {
  const uintptr_t return_address = reinterpret_cast<uintptr_t>(_ReturnAddress());
  uint32_t consumer_state = 0u;
  const auto* spec = ReadLittleBustersConsumerState(&consumer_state)
                         ? LittleBustersProducerSpecForConsumerState(
                               consumer_state)
                         : nullptr;
  if (spec != nullptr &&
      g_little_busters_producer_module_base <=
          UINTPTR_MAX - static_cast<uintptr_t>(spec->queue_rva) &&
      InterlockedCompareExchange(&g_little_busters_producer_trace_enabled, 0,
                                 0) != 0) {
    void* ring = reinterpret_cast<void*>(g_little_busters_producer_module_base +
                                         static_cast<uintptr_t>(spec->queue_rva));
    LittleBustersConsumerRingSnapshot snapshot;
    if (ReadLittleBustersConsumerRingSnapshot(ring, nullptr, &snapshot)) {
      CaptureLittleBustersConsumerSubmission(
          snapshot,
          fushi_voice_hook::little_busters::
              kLittleBustersProducerConsumerAdvanceRva,
          consumer_state,
          LittleBustersConsumerCallsiteRva(
              return_address,
              fushi_voice_hook::little_busters::
                  kLittleBustersProducerConsumerAdvanceRva),
          true);
    }
  }
  if (g_orig_little_busters_consumer_advance != nullptr) {
    g_orig_little_busters_consumer_advance();
  }
}

void __fastcall DetourLittleBustersRingAdvance(void* ring, void* /*edx*/) {
  const uintptr_t return_address = reinterpret_cast<uintptr_t>(_ReturnAddress());
  uint32_t consumer_state = 0u;
  ReadLittleBustersConsumerState(&consumer_state);
  if (InterlockedCompareExchange(&g_little_busters_producer_trace_enabled, 0,
                                 0) != 0) {
    LittleBustersConsumerRingSnapshot snapshot;
    if (ReadLittleBustersConsumerRingSnapshot(ring, nullptr, &snapshot)) {
      CaptureLittleBustersConsumerSubmission(
          snapshot,
          fushi_voice_hook::little_busters::kLittleBustersProducerRingAdvanceRva,
          consumer_state,
          LittleBustersConsumerCallsiteRva(
              return_address,
              fushi_voice_hook::little_busters::
                  kLittleBustersProducerRingAdvanceRva),
          true);
    }
  }
  if (g_orig_little_busters_ring_advance != nullptr) {
    g_orig_little_busters_ring_advance(ring);
  }
}

bool InstallLittleBustersProducerCalibrationHooks() {
  if (InterlockedCompareExchange(&g_little_busters_producer_hook_state, 0, 0) <
      0) {
    return false;
  }
  if (InterlockedCompareExchange(&g_little_busters_producer_hook_state, 0, 0) >
      0) {
    return true;
  }
  const HMODULE module = GetModuleHandleW(nullptr);
  uintptr_t module_base = 0u;
  size_t image_bytes = 0u;
  uint16_t machine = 0u;
  fushi_voice_hook::little_busters::LittleBustersConsumerWorkerContextAddresses
      worker_context_addresses;
  const bool preflight_validated =
      ReadLittleBustersProducerImageInfo(module, &module_base, &image_bytes,
                                         &machine) &&
      machine == fushi_voice_hook::little_busters::kLittleBustersPeMachineI386 &&
      ValidateLittleBustersProducerHookLayout(module, module_base, image_bytes,
                                               &worker_context_addresses);
  if (fushi_voice_hook::little_busters::DecideLittleBustersProducerHookInstall(
          preflight_validated, false, false) !=
      fushi_voice_hook::little_busters::LittleBustersProducerHookInstallDecision::
          kHookAttemptAllowed) {
    // The host may still be unpacking.  No HookFn has run, so leave this
    // retryable; only the post-attempt failure below becomes terminal.
    InterlockedExchange(&g_little_busters_producer_hook_state, 0);
    return false;
  }

  g_little_busters_producer_module_base = module_base;
  g_little_busters_producer_module_bytes = image_bytes;
  g_little_busters_consumer_worker_context_addresses = worker_context_addresses;
  const auto hook = [](uint32_t rva, void* detour, void** original) {
    return HookFn(reinterpret_cast<void*>(
                      g_little_busters_producer_module_base + rva),
                  detour, original);
  };
  const bool ring = hook(
      fushi_voice_hook::little_busters::kLittleBustersProducerRingEnqueueRva,
      reinterpret_cast<void*>(&DetourLittleBustersRingEnqueue),
      reinterpret_cast<void**>(&g_orig_little_busters_ring_enqueue));
  const bool producer_0 = hook(
      0x3E8A0u, reinterpret_cast<void*>(&DetourLittleBustersProducer0),
      reinterpret_cast<void**>(&g_orig_little_busters_producer_0));
  const bool producer_1 = hook(
      0x3EC10u, reinterpret_cast<void*>(&DetourLittleBustersProducer1),
      reinterpret_cast<void**>(&g_orig_little_busters_producer_1));
  const bool producer_2 = hook(
      0x3ECC0u, reinterpret_cast<void*>(&DetourLittleBustersProducer2),
      reinterpret_cast<void**>(&g_orig_little_busters_producer_2));
  const bool producer_3 = hook(
      0x3EE00u, reinterpret_cast<void*>(&DetourLittleBustersProducer3),
      reinterpret_cast<void**>(&g_orig_little_busters_producer_3));
  // These three internal boundaries are diagnostic-only.  The selector and
  // advance hooks observe the same ring slot before/while the worker consumes
  // it; the generic ring advance hook covers the two direct helper call sites
  // that bypass the state dispatcher.  All bytes/call sites were validated
  // above before any hook was installed.
  const bool consumer_select = hook(
      fushi_voice_hook::little_busters::kLittleBustersProducerConsumerSelectRva,
      reinterpret_cast<void*>(&DetourLittleBustersConsumerSelect),
      reinterpret_cast<void**>(&g_orig_little_busters_consumer_select));
  const bool consumer_advance = hook(
      fushi_voice_hook::little_busters::kLittleBustersProducerConsumerAdvanceRva,
      reinterpret_cast<void*>(&DetourLittleBustersConsumerAdvance),
      reinterpret_cast<void**>(&g_orig_little_busters_consumer_advance));
  const bool ring_advance = hook(
      fushi_voice_hook::little_busters::kLittleBustersProducerRingAdvanceRva,
      reinterpret_cast<void*>(&DetourLittleBustersRingAdvance),
      reinterpret_cast<void**>(&g_orig_little_busters_ring_advance));
  const bool hook_set_complete =
      ring && producer_0 && producer_1 && producer_2 && producer_3 &&
      consumer_select && consumer_advance && ring_advance &&
      g_orig_little_busters_ring_enqueue != nullptr &&
      g_orig_little_busters_producer_0 != nullptr &&
      g_orig_little_busters_producer_1 != nullptr &&
      g_orig_little_busters_producer_2 != nullptr &&
      g_orig_little_busters_producer_3 != nullptr &&
      g_orig_little_busters_consumer_select != nullptr &&
      g_orig_little_busters_consumer_advance != nullptr &&
      g_orig_little_busters_ring_advance != nullptr;
  if (fushi_voice_hook::little_busters::DecideLittleBustersProducerHookInstall(
          true, true, hook_set_complete) !=
      fushi_voice_hook::little_busters::LittleBustersProducerHookInstallDecision::
          kReady) {
    InterlockedExchange(&g_little_busters_producer_hook_state, -1);
    return false;
  }
  InterlockedExchange(&g_little_busters_producer_hook_state, 1);
  return true;
}

#else

fushi_voice_hook::little_busters::LittleBustersVoiceReadConsumerContextFields
CaptureLittleBustersVoiceReadConsumerContext(DWORD /*read_thread_id*/) {
  return {};
}

bool InstallLittleBustersProducerCalibrationHooks() { return false; }

#endif

bool ReadLittleBustersFileIdentity(HANDLE file,
                                   LittleBustersFileIdentity* out) {
  if (file == nullptr || file == INVALID_HANDLE_VALUE || out == nullptr) {
    return false;
  }
  BY_HANDLE_FILE_INFORMATION info = {};
  if (!GetFileInformationByHandle(file, &info) ||
      (info.nFileIndexHigh == 0u && info.nFileIndexLow == 0u)) {
    return false;
  }
  out->volume_serial = info.dwVolumeSerialNumber;
  out->file_index_high = info.nFileIndexHigh;
  out->file_index_low = info.nFileIndexLow;
  out->file_bytes = (static_cast<uint64_t>(info.nFileSizeHigh) << 32) |
                    static_cast<uint64_t>(info.nFileSizeLow);
  return out->file_bytes != 0u;
}

bool SameLittleBustersFileIdentity(const LittleBustersFileIdentity& left,
                                   const LittleBustersFileIdentity& right) {
  return left.volume_serial == right.volume_serial &&
         left.file_index_high == right.file_index_high &&
         left.file_index_low == right.file_index_low &&
         left.file_bytes == right.file_bytes;
}

int LittleBustersArchiveIndexFromPath(const wchar_t* path) {
  if (path == nullptr) return -1;
  const wchar_t* slash = wcsrchr(path, L'\\');
  const wchar_t* forward = wcsrchr(path, L'/');
  if (forward != nullptr && (slash == nullptr || forward > slash)) {
    slash = forward;
  }
  const wchar_t* base = slash == nullptr ? path : slash + 1;
  if (_wcsicmp(base, L"VOICE0.PAK") == 0) return 0;
  if (_wcsicmp(base, L"VOICE2.PAK") == 0) return 1;
  return -1;
}

bool LoadLittleBustersVoiceArchive(const wchar_t* path,
                                   uint32_t expected_id_start,
                                   LittleBustersVoiceArchive* out) {
  if (path == nullptr || out == nullptr || g_orig_CreateFileW == nullptr ||
      g_orig_CloseHandle == nullptr || g_orig_ReadFile == nullptr) {
    return false;
  }
  HANDLE file = g_orig_CreateFileW(
      path, GENERIC_READ,
      FILE_SHARE_READ | FILE_SHARE_WRITE | FILE_SHARE_DELETE, nullptr,
      OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL, nullptr);
  if (file == INVALID_HANDLE_VALUE) return false;

  LittleBustersVoiceArchive loaded;
  LittleBustersFileIdentity identity;
  LARGE_INTEGER file_size = {};
  uint8_t header[fushi_voice_hook::little_busters::
                    kLittleBustersPakHeaderBytes] = {};
  bool valid = GetFileSizeEx(file, &file_size) && file_size.QuadPart > 0 &&
               ReadLittleBustersFileIdentity(file, &identity) &&
               identity.file_bytes == static_cast<uint64_t>(file_size.QuadPart) &&
               ReadExact(file, header, sizeof(header));
  if (valid) {
    valid = fushi_voice_hook::little_busters::ReadLittleBustersPakHeader(
        header, sizeof(header), static_cast<uint64_t>(file_size.QuadPart),
        expected_id_start, &loaded.info);
  }
  uint8_t* index = nullptr;
  if (valid) {
    index = static_cast<uint8_t*>(malloc(loaded.info.index_bytes));
    valid = index != nullptr;
    if (valid) {
      std::memcpy(index, header, sizeof(header));
      valid = ReadExact(file, index + sizeof(header),
                        loaded.info.index_bytes - sizeof(header));
    }
  }
  if (valid) {
    const size_t entry_bytes = static_cast<size_t>(loaded.info.count) *
                                sizeof(fushi_voice_hook::little_busters::
                                           VoicePakEntry);
    loaded.entries = static_cast<fushi_voice_hook::little_busters::
                                     VoicePakEntry*>(malloc(entry_bytes));
    valid = loaded.entries != nullptr &&
            fushi_voice_hook::little_busters::ParseLittleBustersPakIndex(
                index, loaded.info.index_bytes,
                static_cast<uint64_t>(file_size.QuadPart), expected_id_start,
                &loaded.info, loaded.entries, loaded.info.count);
  }
  if (valid) {
    wcsncpy_s(loaded.path, path, _TRUNCATE);
    loaded.identity = identity;
    *out = loaded;
    loaded.entries = nullptr;
  }
  free(loaded.entries);
  free(index);
  g_orig_CloseHandle(file);
  return valid;
}

bool IsLittleBustersProfileMatched() {
  const LONG cached = InterlockedCompareExchange(
      &g_little_busters_profile_state, 0, 0);
  if (cached != 0) return cached > 0;

  const DWORD now = GetTickCount();
  const DWORD last = static_cast<DWORD>(InterlockedCompareExchange(
      &g_little_busters_profile_last_tick, 0, 0));
  if (last != 0u && now - last < kLittleBustersProfileRetryIntervalMs) {
    return false;
  }
  InterlockedExchange(&g_little_busters_profile_last_tick,
                      static_cast<LONG>(now | 1u));

  wchar_t executable[32768] = {};
  const DWORD chars = GetModuleFileNameW(nullptr, executable,
                                         static_cast<DWORD>(_countof(executable)));
  const wchar_t* slash = chars == 0u ? nullptr : wcsrchr(executable, L'\\');
  const bool name_matches = slash != nullptr &&
                            _wcsicmp(slash + 1,
                                     fushi_voice_hook::little_busters::
                                         kLittleBustersExecutableName) == 0;
  HMODULE module = GetModuleHandleW(nullptr);
  uint16_t machine = 0u;
  if (module != nullptr) {
    __try {
      const auto* dos = reinterpret_cast<const IMAGE_DOS_HEADER*>(module);
      if (dos->e_magic == IMAGE_DOS_SIGNATURE && dos->e_lfanew > 0) {
        const auto* nt = reinterpret_cast<const IMAGE_NT_HEADERS*>(
            reinterpret_cast<const uint8_t*>(module) + dos->e_lfanew);
        if (nt->Signature == IMAGE_NT_SIGNATURE) {
          machine = nt->FileHeader.Machine;
        }
      }
    } __except (EXCEPTION_EXECUTE_HANDLER) {
      machine = 0u;
    }
  }
  std::array<uint8_t, 32> digest = {};
  const bool readable = name_matches && chars != 0u &&
                        chars < _countof(executable) &&
                        Sha256FileForLeafAquaplus(executable, &digest);
  if (!readable) return false;
  fushi_voice_hook::PublishHostExecutableSha256(digest.data(), digest.size());
  const bool matched =
      fushi_voice_hook::little_busters::MatchesLittleBustersProfile(
          digest.data(), digest.size(), machine);
  InterlockedExchange(&g_little_busters_profile_state,
                      matched ? 1 : -1);
  return matched;
}

int FindLittleBustersArchive(const LittleBustersFileIdentity& identity) {
  const LONG count = InterlockedCompareExchange(
      &g_little_busters_archive_count, 0, 0);
  for (LONG index = 0; index < count; ++index) {
    if (SameLittleBustersFileIdentity(
            g_little_busters_archives[index].identity, identity)) {
      return static_cast<int>(index);
    }
  }
  return -1;
}

void RememberLittleBustersVoicePak(HANDLE handle, const wchar_t* path) {
  if (InterlockedCompareExchange(&g_little_busters_enabled, 0, 0) == 0 ||
      handle == nullptr || handle == INVALID_HANDLE_VALUE) {
    return;
  }
  const int path_index = LittleBustersArchiveIndexFromPath(path);
  if (path_index < 0) return;
  LittleBustersFileIdentity identity;
  if (!ReadLittleBustersFileIdentity(handle, &identity)) return;
  const int archive_index = FindLittleBustersArchive(identity);
  if (archive_index < 0 || archive_index != path_index) return;
  fushi_voice_hook::RememberTrackedHandle(
      g_little_busters_handles, handle,
      [archive_index](LittleBustersVoiceHandle& slot) {
        slot.archive_index = static_cast<uint32_t>(archive_index);
      });
}

bool CopyLittleBustersArchiveIndex(HANDLE handle, uint32_t* archive_index) {
  if (archive_index == nullptr) return false;
  return fushi_voice_hook::ReadTrackedHandle(
      g_little_busters_handles, handle,
      [archive_index](const LittleBustersVoiceHandle& slot) {
        *archive_index = slot.archive_index;
      });
}

void ForgetLittleBustersVoicePak(HANDLE handle) {
  fushi_voice_hook::ForgetTrackedHandle(g_little_busters_handles, handle);
}

bool QueueLittleBustersVoice(uint32_t archive_index, uint64_t offset,
                             uint32_t read_bytes, uint64_t tick_ms,
                             uint64_t baseline_text_seq,
                             uint64_t selected_thread_id,
                             uintptr_t caller_rva,
                             const fushi_voice_hook::little_busters::
                                 VoicePakEntry* member,
                             const fushi_voice_hook::little_busters::
                                 LittleBustersVoiceReadConsumerContextFields&
                                     consumer_context) {
  (void)archive_index;
  (void)offset;
  (void)read_bytes;
  (void)tick_ms;
  (void)baseline_text_seq;
  (void)selected_thread_id;
  (void)caller_rva;
  (void)member;
  (void)consumer_context;
  // VOICE reads are prefetch-prone and are retained only as diagnostics.  All
  // production ownership now comes from MESSAGE.voiceId on the text path.
  return false;
}

void ObserveLittleBustersVoicePakRead(HANDLE file, const void* buffer,
                                      DWORD done, LPOVERLAPPED overlapped,
                                      const void* caller) {
  if (InterlockedCompareExchange(&g_little_busters_enabled, 0, 0) == 0 ||
      buffer == nullptr || done < 4u || overlapped != nullptr) {
    return;
  }
  uint32_t archive_index = 0u;
  if (!CopyLittleBustersArchiveIndex(file, &archive_index)) {
    wchar_t path[kLittleBustersVoicePathChars] = {};
    const DWORD chars = GetFinalPathNameByHandleW(
        file, path, static_cast<DWORD>(_countof(path)), FILE_NAME_NORMALIZED);
    if (chars == 0u || chars >= _countof(path) ||
        LittleBustersArchiveIndexFromPath(path) < 0) {
      return;
    }
    RememberLittleBustersVoicePak(file, path);
    if (!CopyLittleBustersArchiveIndex(file, &archive_index)) return;
  }
  const LONG archive_count = InterlockedCompareExchange(
      &g_little_busters_archive_count, 0, 0);
  if (archive_index >= static_cast<uint32_t>(archive_count)) return;
  if (!fushi_voice_hook::little_busters::IsLittleBustersLineVoiceArchive(
          archive_index)) {
    // VOICE2 is the high-ID CacheSystemVoice range.  At the shared file seam
    // there is no proven caller-role field, so it must not claim dialogue.
    return;
  }

  bool wrapper = false;
  __try {
    wrapper = std::memcmp(buffer, "OGGP", 4u) == 0;
  } __except (EXCEPTION_EXECUTE_HANDLER) {
    return;
  }
  if (!wrapper) return;

  LARGE_INTEGER zero = {};
  LARGE_INTEGER current = {};
  if (!SetFilePointerEx(file, zero, &current, FILE_CURRENT) ||
      current.QuadPart < done) {
    return;
  }
  const uint64_t offset = static_cast<uint64_t>(current.QuadPart) - done;
  const uintptr_t caller_address = reinterpret_cast<uintptr_t>(caller);
  const HMODULE module_handle = GetModuleHandleW(nullptr);
  const uintptr_t module = reinterpret_cast<uintptr_t>(module_handle);
  const uintptr_t caller_rva =
      module != 0u && caller_address >= module ? caller_address - module : 0u;
  const uint64_t tick_ms = GetTickCount64();
  const uint64_t baseline_text_write_count =
      g_header == nullptr
          ? 0u
          : fushi_voice_hook::AtomicLoadPreview64(&g_header->text_write_count);
  const uint64_t selected_text_thread_id =
      g_header == nullptr
          ? 0u
          : fushi_voice_hook::SelectedTextThreadId(g_header);
  fushi_voice_hook::little_busters::VoicePakEntry member = {};
  const bool member_mapped =
      fushi_voice_hook::little_busters::FindLittleBustersPakEntryAtOffset(
          g_little_busters_archives[archive_index].entries,
          g_little_busters_archives[archive_index].info.count, offset, &member);
  const auto consumer_context =
      CaptureLittleBustersVoiceReadConsumerContext(GetCurrentThreadId());
  fushi_voice_hook::little_busters::LittleBustersVoiceReadAdmissionEvidence
      admission;
  admission.member_mapped = member_mapped;
  admission.member_id = member_mapped ? member.member_id : 0u;
  admission.consumer_snapshot_valid =
      consumer_context.worker_context_layout_valid &&
      consumer_context.worker_snapshot_valid;
  admission.context_matched = consumer_context.context_matched;
  admission.match_count = consumer_context.match_count;
  admission.enqueue_token_matched = consumer_context.enqueue_token_matched;
  admission.enqueue_token = consumer_context.enqueue_token;
  admission.request_index = consumer_context.request_index;
  admission.queue_id = consumer_context.queue_id;
  admission.slot_index = consumer_context.slot_index;
  admission.object_token = consumer_context.object_token;
  admission.slot_generation_valid = consumer_context.slot_generation_valid;
  const auto read_role = fushi_voice_hook::little_busters::
      ClassifyLittleBustersVoiceReadAdmission(admission);
  const auto stack = CaptureLittleBustersCalibrationStack(module_handle);
  RecordLittleBustersCalibrationVoiceRead(
      tick_ms, caller_rva, archive_index, offset, done, GetCurrentThreadId(),
      baseline_text_write_count, selected_text_thread_id,
      member_mapped ? &member : nullptr, static_cast<uint32_t>(read_role),
      consumer_context,
      stack);
  const bool queued = QueueLittleBustersVoice(
      archive_index, offset, done, tick_ms, baseline_text_write_count,
      selected_text_thread_id, caller_rva, member_mapped ? &member : nullptr,
      consumer_context);
  if (queued) SetLittleBustersDiagnostic(
      fushi_voice_hook::kDiagLittleBustersVoicePakMemberObserved);
}

void ReleaseLittleBustersPending(LittleBustersPendingVoice* pending) {
  if (pending == nullptr) return;
  free(pending->ogg);
  *pending = {};
}

void ProcessLittleBustersVoiceTask(LittleBustersVoiceTask* task) {
  (void)task;
  // The old ReadFile task could only recover a prefetch and is intentionally
  // dead in production.  Keep its type for calibration ABI compatibility, but
  // never turn it into a pending/forward text match.
}

bool ReadLittleBustersVoiceOggVariant(
    uint32_t archive_index,
    const fushi_voice_hook::little_busters::VoicePakEntry& entry,
    uint32_t preferred_rate, uint8_t** output_ogg, uint32_t* output_bytes,
    uint32_t* output_rate) {
  if (output_ogg == nullptr || output_bytes == nullptr ||
      output_rate == nullptr || g_orig_CreateFileW == nullptr ||
      g_orig_CloseHandle == nullptr || g_orig_ReadFile == nullptr ||
      archive_index >= static_cast<uint32_t>(kLittleBustersVoiceArchiveSlots) ||
      !fushi_voice_hook::little_busters::IsLittleBustersLineVoiceArchive(
          archive_index) ||
      entry.length == 0u || entry.length >
          fushi_voice_hook::little_busters::kLittleBustersMaxMemberBytes) {
    return false;
  }
  *output_ogg = nullptr;
  *output_bytes = 0u;
  *output_rate = 0u;
  const LittleBustersVoiceArchive& archive =
      g_little_busters_archives[archive_index];
  HANDLE file = g_orig_CreateFileW(
      archive.path, GENERIC_READ,
      FILE_SHARE_READ | FILE_SHARE_WRITE | FILE_SHARE_DELETE, nullptr,
      OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL, nullptr);
  if (file == INVALID_HANDLE_VALUE) return false;

  LittleBustersFileIdentity identity;
  uint8_t* member = static_cast<uint8_t*>(malloc(entry.length));
  bool valid = ReadLittleBustersFileIdentity(file, &identity) &&
               SameLittleBustersFileIdentity(identity, archive.identity) &&
               member != nullptr;
  if (valid) {
    LARGE_INTEGER at = {};
    at.QuadPart = static_cast<LONGLONG>(entry.offset);
    valid = SetFilePointerEx(file, at, nullptr, FILE_BEGIN) != FALSE &&
            ReadExact(file, member, entry.length);
  }
  fushi_voice_hook::little_busters::VoicePakMember parsed;
  if (valid) {
    valid = fushi_voice_hook::little_busters::ParseLittleBustersVoiceMember(
        entry, member, entry.length, &parsed);
  }
  const auto* variant = valid
                            ? fushi_voice_hook::little_busters::
                                  SelectLittleBustersVoiceVariant(parsed,
                                                                  preferred_rate)
                            : nullptr;
  uint8_t* ogg = nullptr;
  if (valid && variant != nullptr) {
    ogg = static_cast<uint8_t*>(malloc(variant->length));
    valid = ogg != nullptr;
    if (valid) std::memcpy(ogg, member + variant->offset, variant->length);
  } else {
    valid = false;
  }
  free(member);
  g_orig_CloseHandle(file);
  if (!valid || ogg == nullptr || variant == nullptr) {
    free(ogg);
    return false;
  }
  *output_ogg = ogg;
  *output_bytes = variant->length;
  *output_rate = variant->sample_rate;
  return true;
}

bool ReserveLittleBustersDirectVoiceEvent(uint64_t text_seq,
                                          uint64_t raw_voice_id) {
  if (text_seq == 0u) return false;
  for (const LittleBustersDirectVoiceEvent& event :
       g_little_busters_direct_voice_events) {
    if (event.used && event.text_seq == text_seq &&
        event.raw_voice_id == raw_voice_id) {
      return false;
    }
  }
  for (LittleBustersDirectVoiceEvent& event :
       g_little_busters_direct_voice_events) {
    if (event.used) continue;
    event.used = true;
    event.text_seq = text_seq;
    event.raw_voice_id = raw_voice_id;
    return true;
  }
  return false;
}

bool IsLittleBustersSelectedTextCandidate(
    const fushi_voice_hook::little_busters::VoiceTextCandidate& candidate,
    uint64_t selected_text_thread_id) {
  return selected_text_thread_id != 0u &&
         candidate.thread_id == selected_text_thread_id &&
         candidate.byte_len != 0u &&
         candidate.source_kind == fushi_voice_hook::kTextSourceLuna &&
         candidate.event_kind == fushi_voice_hook::kTextEventLine &&
         candidate.exact_hook_code;
}

void SnapshotLittleBustersTextCandidates(
    fushi_voice_hook::little_busters::VoiceTextCandidate* candidates,
    size_t capacity, uint32_t* count);

void ProcessLittleBustersTextVoiceEvents() {
  if (!fushi_voice_hook::little_busters::
          kLittleBustersDirectMessageVoiceBindingEnabled ||
      g_header == nullptr ||
      InterlockedCompareExchange(&g_little_busters_enabled, 0, 0) == 0 ||
      InterlockedCompareExchange(&g_little_busters_direct_text_baseline_valid,
                                 0, 0) == 0) {
    return;
  }
  const uint64_t selected_text_thread_id =
      fushi_voice_hook::SelectedTextThreadId(g_header);
  if (selected_text_thread_id == 0u) return;
  const uint64_t baseline_seq = static_cast<uint64_t>(InterlockedCompareExchange64(
      &g_little_busters_direct_text_baseline_seq, 0, 0));
  fushi_voice_hook::little_busters::VoiceTextCandidate candidates[kTextSlotCount] =
      {};
  uint32_t candidate_count = 0u;
  SnapshotLittleBustersTextCandidates(candidates, _countof(candidates),
                                      &candidate_count);
  for (uint32_t index = 0u; index < candidate_count; ++index) {
    const auto& candidate = candidates[index];
    if (candidate.seq <= baseline_seq ||
        !IsLittleBustersSelectedTextCandidate(candidate,
                                              selected_text_thread_id) ||
        !ReserveLittleBustersDirectVoiceEvent(candidate.seq,
                                              candidate.raw_context2)) {
      continue;
    }
    uint32_t voice_id = 0u;
    if (!fushi_voice_hook::little_busters::ResolveLittleBustersMessageVoiceId(
            candidate, &voice_id) ||
        voice_id == 0u) {
      // voiceId==0 is the explicit no-voice sentinel.  Invalid ctx2 is also
      // terminal for this event; neither path may become member 0.
      continue;
    }
    const LONG archive_count = InterlockedCompareExchange(
        &g_little_busters_archive_count, 0, 0);
    if (archive_count <=
            static_cast<LONG>(fushi_voice_hook::little_busters::
                                  kLittleBustersVoice0ArchiveIndex) ||
        !fushi_voice_hook::little_busters::IsLittleBustersLineVoiceArchive(
            fushi_voice_hook::little_busters::kLittleBustersVoice0ArchiveIndex)) {
      continue;
    }
    const LittleBustersVoiceArchive& archive =
        g_little_busters_archives[
            fushi_voice_hook::little_busters::kLittleBustersVoice0ArchiveIndex];
    fushi_voice_hook::little_busters::VoicePakEntry entry;
    if (!fushi_voice_hook::little_busters::FindLittleBustersPakEntryByMemberId(
            archive.info, archive.entries, voice_id, &entry)) {
      continue;
    }
    uint8_t* ogg = nullptr;
    uint32_t ogg_bytes = 0u;
    uint32_t sample_rate = 0u;
    const uint32_t preferred_rate = g_header->sample_rate;
    if (!ReadLittleBustersVoiceOggVariant(
            fushi_voice_hook::little_busters::kLittleBustersVoice0ArchiveIndex,
            entry, preferred_rate, &ogg, &ogg_bytes, &sample_rate)) {
      continue;
    }
    wchar_t storage[128] = {};
    swprintf_s(storage, _countof(storage), L"lb-voice0-member-%u-r%u.ogg",
               voice_id, sample_rate);
    const bool written = WriteVoiceOggAt(ogg, ogg_bytes, storage,
                                         candidate.timestamp_ms,
                                         candidate.seq);
    free(ogg);
    if (written) {
      SetLittleBustersDiagnostic(
          fushi_voice_hook::kDiagLittleBustersVoicePakMemberObserved);
    }
  }
}

void SnapshotLittleBustersTextCandidates(
    fushi_voice_hook::little_busters::VoiceTextCandidate* candidates,
    size_t capacity, uint32_t* count) {
  if (candidates == nullptr || count == nullptr || capacity == 0u) return;
  *count = 0u;
  if (g_header == nullptr) return;
  const TextSlot* slots[kTextSlotCount] = {};
  const uint32_t found = fushi_voice_hook::CollectTextSlotsBySeq(
      g_header, slots, kTextSlotCount, 0u);
  for (uint32_t index = 0u; index < found && *count < capacity; ++index) {
    const TextSlot* slot = slots[index];
    if (slot == nullptr) continue;
    fushi_voice_hook::little_busters::VoiceTextCandidate candidate;
    bool stable = false;
    __try {
      const uint64_t first_seq = fushi_voice_hook::AtomicLoadPreview64(&slot->seq);
      candidate.seq = first_seq;
      candidate.timestamp_ms = slot->timestamp_ms;
      candidate.thread_id = slot->thread_id;
      candidate.byte_len = slot->byte_len;
      candidate.source_kind = slot->source_kind;
      candidate.event_kind = slot->event_kind;
      candidate.raw_context2 = slot->thread_context2;
      candidate.exact_hook_code =
          fushi_voice_hook::little_busters::IsLittleBustersExactHookCode(
              slot->hook_code);
      stable = first_seq != 0u &&
               first_seq == fushi_voice_hook::AtomicLoadPreview64(&slot->seq);
    } __except (EXCEPTION_EXECUTE_HANDLER) {
      stable = false;
    }
    if (stable) candidates[(*count)++] = candidate;
  }
}

void TraceLittleBustersTextEvents() {
  if (g_header == nullptr ||
      InterlockedCompareExchange(&g_little_busters_enabled, 0, 0) == 0) {
    return;
  }
  const uint64_t selected_text_thread_id =
      fushi_voice_hook::SelectedTextThreadId(g_header);
  if (selected_text_thread_id == 0u) return;
  fushi_voice_hook::little_busters::VoiceTextCandidate candidates[kTextSlotCount] =
      {};
  uint32_t candidate_count = 0u;
  SnapshotLittleBustersTextCandidates(candidates, _countof(candidates),
                                      &candidate_count);
  for (uint32_t index = 0u; index < candidate_count; ++index) {
    const auto& candidate = candidates[index];
    if (!IsLittleBustersSelectedTextCandidate(candidate,
                                              selected_text_thread_id)) continue;
    RecordLittleBustersCalibrationText(candidate, selected_text_thread_id);
  }
}

void ProcessLittleBustersVoiceTasks() {
  TraceLittleBustersTextEvents();
  ProcessLittleBustersTextVoiceEvents();
  for (int index = 0; index < kLittleBustersVoiceTaskSlots; ++index) {
    if (InterlockedCompareExchange(&g_little_busters_tasks[index].state, 3,
                                   2) == 2) {
      ProcessLittleBustersVoiceTask(&g_little_busters_tasks[index]);
      InterlockedExchange(&g_little_busters_tasks[index].state, 0);
    }
  }
  // The old ReadFile -> forward-text publisher is intentionally not called.
  // Discard any impossible/stale task state rather than exposing a guessed
  // resource under a text sequence.
  for (LittleBustersPendingVoice& pending : g_little_busters_pending) {
    ReleaseLittleBustersPending(&pending);
  }
  FlushLittleBustersCalibrationTrace();
}

bool LoadLittleBustersVoiceArchives() {
  if (InterlockedCompareExchange(&g_little_busters_archive_count, 0, 0) ==
      kLittleBustersVoiceArchiveSlots) {
    return true;
  }
  wchar_t executable[32768] = {};
  const DWORD chars = GetModuleFileNameW(nullptr, executable,
                                         static_cast<DWORD>(_countof(executable)));
  if (chars == 0u || chars >= _countof(executable)) return false;
  wchar_t* slash = wcsrchr(executable, L'\\');
  if (slash == nullptr) return false;
  *slash = L'\0';
  const wchar_t* names[] = {L"VOICE0.PAK", L"VOICE2.PAK"};
  const uint32_t ids[] = {
      fushi_voice_hook::little_busters::kLittleBustersVoice0IdStart,
      fushi_voice_hook::little_busters::kLittleBustersVoice2IdStart};
  LittleBustersVoiceArchive loaded[kLittleBustersVoiceArchiveSlots] = {};
  int count = 0;
  for (int index = 0; index < kLittleBustersVoiceArchiveSlots; ++index) {
    wchar_t path[kLittleBustersVoicePathChars] = {};
    swprintf_s(path, _countof(path), L"%s\\files\\%s", executable, names[index]);
    if (!LoadLittleBustersVoiceArchive(path, ids[index], &loaded[index])) {
      for (int cleanup = 0; cleanup < count; ++cleanup) {
        free(loaded[cleanup].entries);
        loaded[cleanup].entries = nullptr;
      }
      return false;
    }
    ++count;
  }
  for (int index = 0; index < kLittleBustersVoiceArchiveSlots; ++index) {
    g_little_busters_archives[index] = loaded[index];
    loaded[index].entries = nullptr;
  }
  MemoryBarrier();
  InterlockedExchange(&g_little_busters_archive_count, count);
  return count == kLittleBustersVoiceArchiveSlots;
}

bool TryHookLittleBustersVoicePak() {
  if (!IsLittleBustersProfileMatched()) return false;
  if (InterlockedCompareExchange(&g_little_busters_enabled, 0, 0) != 0) {
    return true;
  }
  if (InterlockedCompareExchange(&g_little_busters_producer_hook_state, 0, 0) <
      0) {
    // Only a partially installed internal hook is terminal.  Pre-hook layout
    // failures leave state at zero so a later unpacked image can be retried.
    return false;
  }
  if (g_orig_CreateFileW == nullptr || g_orig_ReadFile == nullptr ||
      g_orig_CloseHandle == nullptr || !LoadLittleBustersVoiceArchives()) {
    return false;
  }
  ResetLittleBustersCalibrationTrace();
  if (!InstallLittleBustersProducerCalibrationHooks()) {
    // The resource observer and production role gate remain disabled when the
    // pinned unpacked image does not match every verified producer boundary.
    return false;
  }
  if (g_header != nullptr) {
    InterlockedExchange64(
        &g_little_busters_direct_text_baseline_seq,
        static_cast<LONGLONG>(fushi_voice_hook::AtomicLoadPreview64(
            &g_header->text_write_count)));
    InterlockedExchange(&g_little_busters_direct_text_baseline_valid, 1);
  }
  InterlockedExchange(&g_little_busters_enabled, 1);
  InterlockedExchange(&g_little_busters_producer_trace_enabled, 1);
  SetLittleBustersDiagnostic(
      fushi_voice_hook::kDiagLittleBustersVoicePakHooksReady);
  return true;
}

void StopLittleBustersVoicePak() {
  InterlockedExchange(&g_little_busters_enabled, 0);
  InterlockedExchange(&g_little_busters_producer_trace_enabled, 0);
  FlushLittleBustersCalibrationTrace();
  fushi_voice_hook::ClearTrackedHandles(g_little_busters_handles);
  for (int index = 0; index < kLittleBustersVoiceTaskSlots; ++index) {
    InterlockedExchange(&g_little_busters_tasks[index].state, 0);
  }
  for (LittleBustersPendingVoice& pending : g_little_busters_pending) {
    ReleaseLittleBustersPending(&pending);
  }
  InterlockedExchange(&g_little_busters_archive_count, 0);
  for (LittleBustersVoiceArchive& archive : g_little_busters_archives) {
    free(archive.entries);
    archive = {};
  }
  ResetLittleBustersCalibrationTrace();
}
