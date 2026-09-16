// Little Busters/Luca production lookup adapter plus bounded diagnostics.
//
// The production path is deliberately small and follows the mature exact
// providers: the parser/TextSlot bridge supplies the authoritative occurrence,
// the active cText item/record layout supplies engine-owned glyph geometry,
// the shared GeometryProviderRegistry publishes LookupHit, and the game's
// sampled input poller/WndProc supplies the down/up transaction.  The
// diagnostic observations are kept beside it for post-mortem evidence only;
// no production decision reads the diagnostic ring.

using fushi_voice_hook::LookupDiagnosticEvent;

namespace {

constexpr uint32_t kLbDiagnosticMaxTextUnits = 1024u;
constexpr uint32_t kLbDiagnosticMaxMethodArgs = 8u;
constexpr uint32_t kLbDiagnosticMaxRecordSamples = 16u;
constexpr uint32_t kLbDiagnosticMaxRecordSnapshots = 4u;
constexpr uint32_t kLbDiagnosticMaxHitItems = 64u;
constexpr uint32_t kLbDiagnosticMaxRenderCommandSamples = 2u;
constexpr uint32_t kLbDiagnosticRenderCommandRawPairs = 6u;
constexpr uint32_t kLbDiagnosticMethodEmitLimit = 4u;
constexpr ULONGLONG kLbDiagnosticMethodEmitIntervalMs = 750u;
constexpr ULONGLONG kLbDiagnosticNoCallDelayMs = 1500u;
constexpr ULONGLONG kLbDiagnosticWindowRefreshMs = 250u;
constexpr ULONGLONG kLbDiagnosticSemanticClassifyDelayMs = 250u;
constexpr ULONGLONG kLbDiagnosticInputPollEmitIntervalMs = 500u;

using fushi_voice_hook::little_busters::kLbConcreteGeneric;
using fushi_voice_hook::little_busters::kLbConcreteHitTest;
using fushi_voice_hook::little_busters::kLbConcreteLayoutDraw;
using fushi_voice_hook::little_busters::kLbConcreteObservationOnly;
using fushi_voice_hook::little_busters::kLbConcreteParserHandoff;
using fushi_voice_hook::little_busters::kLbConcreteScriptRequest;
using fushi_voice_hook::little_busters::kLbConcreteSelector;

std::atomic<int> g_lb_lookup_diagnostic_identity{0};
std::atomic<int> g_lb_lookup_diagnostic_install{0};
std::atomic<HWND> g_lb_lookup_diagnostic_window{nullptr};
std::atomic<WNDPROC> g_lb_lookup_diagnostic_original_wndproc{nullptr};
std::atomic<LONG> g_lb_lookup_diagnostic_client_w{0};
std::atomic<LONG> g_lb_lookup_diagnostic_client_h{0};
std::atomic<ULONGLONG> g_lb_lookup_diagnostic_last_window_refresh{0};
std::atomic<ULONGLONG> g_lb_lookup_diagnostic_last_user32_poll_emit{0};
std::atomic<uint32_t> g_lb_lookup_diagnostic_last_user32_x{0};
std::atomic<uint32_t> g_lb_lookup_diagnostic_last_user32_y{0};

// A fixed throttle table is deliberately local to the exact LB adapter.  It
// suppresses repeated method/layout/transform/hit observations without
// changing the shared ABI or affecting other games.  Dynamic pointers and
// raw per-frame values are not part of the steady-state signature.
constexpr size_t kLbDiagnosticThrottleSlotCount = 64u;
std::atomic<ULONGLONG> g_lb_lookup_diagnostic_throttle_last_emit[
    kLbDiagnosticThrottleSlotCount] = {};
std::atomic<uint64_t> g_lb_lookup_diagnostic_throttle_signature[
    kLbDiagnosticThrottleSlotCount] = {};
std::atomic<uint32_t> g_lb_lookup_diagnostic_click_trace_emitted{0u};
std::atomic<ULONGLONG> g_lb_lookup_diagnostic_steady_window{0u};
std::atomic<uint32_t> g_lb_lookup_diagnostic_steady_emitted{0u};
std::atomic<uint64_t> g_lb_lookup_diagnostic_rate_limited{0u};

// Text occurrence identity.  Geometry is deliberately not folded into this
// state: a new F25630 layout epoch may belong to the same seq/thread pair.
std::atomic<uint64_t> g_lb_lookup_diagnostic_occ_seq{0};
std::atomic<uint64_t> g_lb_lookup_diagnostic_occ_thread{0};
std::atomic<uint64_t> g_lb_lookup_diagnostic_occ_hash{0};
std::atomic<uint32_t> g_lb_lookup_diagnostic_occ_length{0};
std::atomic<uint64_t> g_lb_lookup_diagnostic_previous_seq{0};
std::atomic<uint64_t> g_lb_lookup_diagnostic_previous_hash{0};
std::atomic<uint32_t> g_lb_lookup_diagnostic_previous_length{0};
std::atomic<bool> g_lb_lookup_diagnostic_occurrence_ambiguous{false};

// Layout epoch state.  geometry_generation is advanced by an observed native
// layout change, never by string equality or by a replacement TextSlot alone.
std::atomic<uint64_t> g_lb_lookup_diagnostic_geometry_generation{0};
// F2D580 is the live cText layout update seam.  Keep its identity separate
// from the geometry generation itself: a new TextSlot occurrence may reuse
// the same cText/item/record addresses, and a repaint may change the record
// addresses without changing the occurrence.  The complete tuple below is
// only a rebuild fingerprint; TextSlot.seq + thread remain the occurrence
// identity used by every publish/submit gate.
std::atomic<uintptr_t> g_lb_lookup_active_layout_ctext{0};
std::atomic<uintptr_t> g_lb_lookup_active_layout_item{0};
std::atomic<uintptr_t> g_lb_lookup_active_layout_records{0};
std::atomic<uint32_t> g_lb_lookup_active_layout_record_count{0};
std::atomic<uint64_t> g_lb_lookup_active_layout_seq{0};
std::atomic<uint64_t> g_lb_lookup_active_layout_thread{0};
std::atomic<uint64_t> g_lb_lookup_diagnostic_layout_occ_seq{0};
std::atomic<uint64_t> g_lb_lookup_diagnostic_layout_occ_thread{0};
std::atomic<bool> g_lb_lookup_diagnostic_layout_handoff{false};
std::atomic<bool> g_lb_lookup_diagnostic_layout_record_seen{false};
std::atomic<bool> g_lb_lookup_diagnostic_layout_draw_seen{false};
std::atomic<bool> g_lb_lookup_diagnostic_layout_sealed{false};
std::atomic<bool> g_lb_lookup_diagnostic_layout_not_sealed_reported{false};
std::atomic<ULONGLONG> g_lb_lookup_diagnostic_layout_begin_tick{0};
std::atomic<uintptr_t> g_lb_lookup_diagnostic_layout_ctext{0};
std::atomic<uintptr_t> g_lb_lookup_diagnostic_layout_item{0};
std::atomic<uintptr_t> g_lb_lookup_diagnostic_layout_record{0};
std::atomic<uint32_t> g_lb_lookup_diagnostic_layout_record_count{0};
std::atomic<uint64_t> g_lb_lookup_diagnostic_record_snapshot_generation{0};
std::atomic<uintptr_t> g_lb_lookup_diagnostic_record_snapshot_item{0};
std::atomic<uintptr_t> g_lb_lookup_diagnostic_record_snapshot_records{0};
std::atomic<uint32_t> g_lb_lookup_diagnostic_record_snapshot_record_count{0};
std::atomic<uint32_t> g_lb_lookup_diagnostic_record_snapshot_count{0};
// F25630 and F2F360 are observed at both sides of their proven ret-8
// boundaries.  These fields are a bounded before/after snapshot; they never
// become occurrence identity and are only compared within the current
// geometry epoch.
std::atomic<uintptr_t> g_lb_lookup_diagnostic_layout_pre_item{0};
std::atomic<uintptr_t> g_lb_lookup_diagnostic_layout_pre_records{0};
std::atomic<uint32_t> g_lb_lookup_diagnostic_layout_pre_record_count{0};
std::atomic<uint32_t> g_lb_lookup_diagnostic_layout_pre_line_count{0};
std::atomic<uintptr_t> g_lb_lookup_diagnostic_record_call_pre_item{0};
std::atomic<uintptr_t> g_lb_lookup_diagnostic_record_call_pre_records{0};
std::atomic<uint32_t> g_lb_lookup_diagnostic_record_call_pre_count{0};
std::atomic<uint32_t> g_lb_lookup_diagnostic_render_call_pre_count{0};
std::atomic<uintptr_t> g_lb_lookup_diagnostic_render_call_pre_buffer{0};
std::atomic<uint32_t> g_lb_lookup_diagnostic_layout_pre_command_count{0};
std::atomic<uintptr_t> g_lb_lookup_diagnostic_layout_pre_command_buffer{0};
std::atomic<uint64_t> g_lb_lookup_diagnostic_render_snapshot_generation{0};
std::atomic<uint32_t> g_lb_lookup_diagnostic_render_snapshot_start{0};
std::atomic<uint32_t> g_lb_lookup_diagnostic_render_snapshot_end{0};
std::atomic<uintptr_t> g_lb_lookup_diagnostic_render_snapshot_buffer{0};
std::atomic<uint32_t> g_lb_lookup_diagnostic_render_snapshot_count{0};
std::atomic<uint32_t> g_lb_lookup_diagnostic_last_render_candidate{0};
std::atomic<uint32_t> g_lb_lookup_diagnostic_last_render_callsite{0};
std::atomic<uint64_t> g_lb_lookup_diagnostic_transform_event_generation{0};
std::atomic<uint32_t> g_lb_lookup_diagnostic_transform_event_candidate{0};
std::atomic<uint64_t> g_lb_lookup_diagnostic_draw_event_generation{0};
std::atomic<uint32_t> g_lb_lookup_diagnostic_draw_event_candidate{0};
std::atomic<bool> g_lb_lookup_diagnostic_draw_failure_reported{false};
std::atomic<bool> g_lb_lookup_diagnostic_draw_only_reported{false};

// Parser -> F25630 is an in-thread, immediate call-chain bridge.  The
// occurrence fields here are copied from the selected TextSlot snapshot and
// are only accepted at F25630 when the return address is inside F24D30 and
// the cText this-pointer is identical.  No FIFO, latest-string, or time-only
// association is used.
struct LittleBustersParserPending {
  bool valid = false;
  DWORD thread_id = 0;
  uintptr_t ctext = 0;
  uintptr_t source = 0;
  uint64_t seq = 0;
  uint64_t text_thread = 0;
  uint64_t hash = 0;
  uint32_t length = 0;
  // The selected TextSlot hash/length remain authoritative occurrence
  // context.  These two fields describe the parser argument separately and
  // are only a bridge check; they must never become occurrence identity.
  uint64_t source_hash = 0;
  uint32_t source_length = 0;
  bool source_matches_occurrence = false;
};
LittleBustersParserPending g_lb_lookup_diagnostic_parser_pending;

// ── Production exact-layout model ──────────────────────────────────────────
//
// The cText record array supplied at the F25630 post-call boundary contains
// the engine's layout-local glyph runs.  The parent cText rectangle supplies
// the logical origin, and the fixed game design domain is projected into the
// live HWND client rectangle before publication.  This is a runtime-domain
// transform, not a screenshot-derived scale or offset.  The F2F360 render
// observer is deliberately not a source of this model: its receiver is never
// cast as a cText record array.
constexpr uint32_t kLbLookupMaxGlyphs = 256u;

struct LittleBustersLookupGlyph {
  uint32_t char_index = 0u;
  uint32_t source_length = 0u;
  int32_t x = 0;
  int32_t y = 0;
  int32_t w = 0;
  int32_t h = 0;
};

struct LittleBustersLookupModel {
  bool valid = false;
  uint64_t text_seq = 0u;
  uint64_t text_thread = 0u;
  uint64_t geometry_generation = 0u;
  uintptr_t hwnd = 0u;
  int32_t view_w = 0;
  int32_t view_h = 0;
  uint32_t char_count = 0u;
  uint32_t glyph_count = 0u;
  wchar_t line[kLbDiagnosticMaxTextUnits] = {};
  LittleBustersLookupGlyph glyphs[kLbLookupMaxGlyphs] = {};
};

// F25630 runs on the game thread; WndProc normally runs on that same thread,
// but a seqlock keeps a transient model copy safe if Luca changes its window
// dispatch thread in a later build.
LittleBustersLookupModel g_lb_lookup_model = {};
std::atomic<uint64_t> g_lb_lookup_model_version{0u};

struct LittleBustersLookupSubmit {
  bool valid = false;
  uint64_t text_seq = 0u;
  uint64_t text_thread = 0u;
  uint64_t geometry_generation = 0u;
  uintptr_t hwnd = 0u;
  int32_t view_w = 0;
  int32_t view_h = 0;
  uint32_t char_index = 0u;
  uint32_t source_length = 0u;
  uint32_t char_count = 0u;
  int32_t glyph_x = 0;
  int32_t glyph_y = 0u;
  int32_t glyph_w = 0u;
  int32_t glyph_h = 0u;
  wchar_t line[kLbDiagnosticMaxTextUnits] = {};
};

LittleBustersLookupSubmit g_lb_lookup_submit = {};
std::atomic<uint64_t> g_lb_lookup_submit_version{0u};
uint64_t g_lb_lookup_submit_consumed_version = 0u;

struct LittleBustersLookupGesture {
  fushi_voice_hook::little_busters::LittleBustersLookupDownOwner owner =
      fushi_voice_hook::little_busters::kLbDownOwnerPass;
  LittleBustersLookupSubmit pending = {};
};
LittleBustersLookupGesture g_lb_lookup_gesture = {};

// Shift is sampled on the helper pump, like the mature Siglus/Anemoi adapter.
// The low bit preserves a short press that falls between two pump ticks.
bool g_lb_lookup_last_shift_down = false;

// LB's story loop samples USER32 directly from its private poller.  The
// generic export detour is shared with the mature Leaf/HUNEX sampled-input
// adapters, but this latch is owned by LB's exact callsite so a word click is
// consumed before Luca sees the same sampled edge.  It is intentionally
// independent from the host request latches: the shared registry admission
// still decides whether the gesture may start, while this latch owns the
// matching release and neutral tail.
fushi_voice_hook::LeftButtonShieldLatch g_lb_lookup_async_latch = {};
bool g_lb_lookup_async_sample_initialized = false;
bool g_lb_lookup_async_last_down = false;

// Input/semantic correlation is diagnostic-only.  It is never consulted by
// a filter and is reset at a physical down edge, not at a repaint.
std::atomic<uint64_t> g_lb_lookup_diagnostic_last_input_tick{0};
std::atomic<uint64_t> g_lb_lookup_diagnostic_last_physical_edge_tick{0};
std::atomic<uint64_t> g_lb_lookup_diagnostic_down_occ_seq{0};
std::atomic<uint64_t> g_lb_lookup_diagnostic_down_occ_thread{0};
std::atomic<bool> g_lb_lookup_diagnostic_physical_left_edge{false};
std::atomic<bool> g_lb_lookup_diagnostic_physical_down{false};
std::atomic<bool> g_lb_lookup_diagnostic_semantic_callsite_seen{false};
std::atomic<bool> g_lb_lookup_diagnostic_selector7_queried{false};
std::atomic<bool> g_lb_lookup_diagnostic_selector7_result{false};
std::atomic<bool> g_lb_lookup_diagnostic_f70a50_called{false};
std::atomic<bool> g_lb_lookup_diagnostic_script_state_changed{false};
std::atomic<bool> g_lb_lookup_diagnostic_semantic_reported{false};
std::atomic<bool> g_lb_lookup_diagnostic_script_no_occ_reported{false};
std::atomic<uint32_t> g_lb_lookup_diagnostic_input_state_mask{0u};

// Keep the first production-model rejection as a numeric breadcrumb.  The
// model builder runs on a hot layout path, so this is state-only; the bounded
// diagnostic ring is populated later by ReportLittleBustersProviderDiagnostics.
// Codes are local to this file: 1=precondition, 2=window, 3=client, 4=text
// identity, 5=source map, 6=generation, 7=origin, 8=record read,
// 9=record binding/size, 10=UTF-16 span, 11=record bounds.
std::atomic<uint32_t> g_lb_lookup_diagnostic_model_failure{0u};
std::atomic<uint64_t> g_lb_lookup_diagnostic_model_failure_detail{0u};
std::atomic<uint32_t> g_lb_lookup_diagnostic_model_failure_reported{0u};

// Each failure gate has its own bit so one missing observation cannot hide
// another missing observation in the bounded ring.
std::atomic<uint32_t> g_lb_lookup_diagnostic_transform_reported{0u};
std::atomic<bool> g_lb_lookup_diagnostic_provider_reported{false};
std::atomic<bool> g_lb_lookup_diagnostic_d3d_fallback_reported{false};
std::atomic<bool> g_lb_lookup_diagnostic_texture_unobserved_reported{false};
// 0 = no observation, 1 = target HWND is available but FB6950 was not the
// active WndProc, 2 = hydrated target was observed, 3 = subclass failed,
// 4 = subclass is active.  This is diagnostic state only.
std::atomic<uint32_t> g_lb_lookup_diagnostic_wndproc_state{0u};

uintptr_t g_lb_lookup_diagnostic_module_base = 0u;
size_t g_lb_lookup_diagnostic_image_bytes = 0u;
uint16_t g_lb_lookup_diagnostic_machine = 0u;
ULONGLONG g_lb_lookup_diagnostic_install_tick = 0u;
HWND g_lb_lookup_diagnostic_subclassed_window = nullptr;

std::atomic<LONG> g_lb_lookup_diagnostic_concrete_calls[
    fushi_voice_hook::little_busters::kLittleBustersConcreteProbeCount] = {};
std::atomic<ULONGLONG> g_lb_lookup_diagnostic_concrete_last_emit[
    fushi_voice_hook::little_busters::kLittleBustersConcreteProbeCount] = {};
bool g_lb_lookup_diagnostic_concrete_hooked[
    fushi_voice_hook::little_busters::kLittleBustersConcreteProbeCount] = {};
bool g_lb_lookup_diagnostic_concrete_no_call_reported[
    fushi_voice_hook::little_busters::kLittleBustersConcreteProbeCount] = {};

bool IsLittleBustersLookupDiagnosticReadable(const void* address,
                                              size_t bytes) {
  if (address == nullptr || bytes == 0u) return false;
  MEMORY_BASIC_INFORMATION memory = {};
  if (VirtualQuery(address, &memory, sizeof(memory)) != sizeof(memory) ||
      memory.State != MEM_COMMIT || (memory.Protect & PAGE_GUARD) != 0u ||
      (memory.Protect & 0xffu) == PAGE_NOACCESS) {
    return false;
  }
  const uintptr_t begin = reinterpret_cast<uintptr_t>(address);
  const uintptr_t end = begin + bytes;
  const uintptr_t region_end = reinterpret_cast<uintptr_t>(memory.BaseAddress) +
                               memory.RegionSize;
  return end >= begin && end <= region_end;
}

bool ReadLittleBustersLookupBytes(uintptr_t address, void* output,
                                  size_t bytes) {
  if (output == nullptr || !IsLittleBustersLookupDiagnosticReadable(
                               reinterpret_cast<const void*>(address), bytes)) {
    return false;
  }
  __try {
    memcpy(output, reinterpret_cast<const void*>(address), bytes);
    return true;
  } __except (EXCEPTION_EXECUTE_HANDLER) {
    return false;
  }
}

bool ReadLittleBustersLookupU32(uintptr_t address, uint32_t* value) {
  return value != nullptr && ReadLittleBustersLookupBytes(address, value,
                                                           sizeof(*value));
}

bool ReadLittleBustersLookupU16(uintptr_t address, uint16_t* value) {
  return value != nullptr && ReadLittleBustersLookupBytes(address, value,
                                                           sizeof(*value));
}

bool ReadLittleBustersLookupU64(uintptr_t address, uint64_t* value) {
  return value != nullptr && ReadLittleBustersLookupBytes(address, value,
                                                           sizeof(*value));
}

bool ReadLittleBustersLookupI16(uintptr_t address, int16_t* value) {
  return value != nullptr && ReadLittleBustersLookupBytes(address, value,
                                                           sizeof(*value));
}

bool ReadLittleBustersLookupF32(uintptr_t address, float* value) {
  return value != nullptr && ReadLittleBustersLookupBytes(address, value,
                                                           sizeof(*value));
}

struct LittleBustersLookupViewSize {
  int32_t width = 0;
  int32_t height = 0;
  bool configured_fallback = false;
};

bool ReadLittleBustersLookupViewSize(HWND window,
                                     LittleBustersLookupViewSize* out) {
  if (out == nullptr) return false;
  *out = {};
  if (window == nullptr || !IsWindow(window)) return false;

  RECT client = {};
  if (GetClientRect(window, &client) != FALSE && client.left == 0 &&
      client.top == 0 && client.right > 0 && client.bottom > 0) {
    out->width = client.right - client.left;
    out->height = client.bottom - client.top;
    return true;
  }

  // The lookup model is already gated by the exact production profile and
  // the hydrated cText layout.  Keep the same fixed design domain used by
  // that profile instead of dropping an otherwise valid glyph model because
  // USER32 returned an empty client rect during injected-process startup.
  out->width = fushi_voice_hook::little_busters::
      kLittleBustersConfiguredClientWidth;
  out->height = fushi_voice_hook::little_busters::
      kLittleBustersConfiguredClientHeight;
  out->configured_fallback = true;
  return true;
}

struct LittleBustersLookupDesignSize {
  uint32_t width = 0u;
  uint32_t height = 0u;
  bool configured_fallback = false;
};

bool ReadLittleBustersLookupDesignSize(LittleBustersLookupDesignSize* out) {
  if (out == nullptr) return false;
  *out = {};
  const uintptr_t base = g_lb_lookup_diagnostic_module_base;
  uint32_t raw_height = 0u;
  uint32_t raw_width = 0u;
  const bool runtime_readable =
      base != 0u &&
      ReadLittleBustersLookupU32(
          base + fushi_voice_hook::little_busters::
              kLittleBustersEngineDesignHeightGlobalRva,
          &raw_height) &&
      ReadLittleBustersLookupU32(
          base + fushi_voice_hook::little_busters::
              kLittleBustersEngineDesignWidthGlobalRva,
          &raw_width);
  // These globals are fixed logical dimensions in this exact profile.  Keep
  // a broad sanity range for startup/build variants, but never accept zero or
  // an implausibly huge value as a transform.
  if (runtime_readable && raw_width >= 320u && raw_width <= 8192u &&
      raw_height >= 240u && raw_height <= 8192u) {
    out->width = raw_width;
    out->height = raw_height;
    return true;
  }
  out->width = static_cast<uint32_t>(fushi_voice_hook::little_busters::
                                         kLittleBustersConfiguredClientWidth);
  out->height = static_cast<uint32_t>(fushi_voice_hook::little_busters::
                                          kLittleBustersConfiguredClientHeight);
  out->configured_fallback = true;
  return true;
}

struct LittleBustersCTextLayoutRect {
  float origin_x = 0.0f;
  float origin_y = 0.0f;
  float width = 0.0f;
  float height = 0.0f;
};

bool ReadLittleBustersCTextLayoutRect(
    uintptr_t ctext, LittleBustersCTextLayoutRect* out) {
  if (out == nullptr || ctext == 0u) return false;
  *out = {};
  const bool readable =
      ReadLittleBustersLookupF32(
          ctext + fushi_voice_hook::little_busters::
              kLittleBustersCTextLayoutOriginXOffset,
          &out->origin_x) &&
      ReadLittleBustersLookupF32(
          ctext + fushi_voice_hook::little_busters::
              kLittleBustersCTextLayoutOriginYOffset,
          &out->origin_y) &&
      ReadLittleBustersLookupF32(
          ctext + fushi_voice_hook::little_busters::
              kLittleBustersCTextLayoutWidthOffset,
          &out->width) &&
      ReadLittleBustersLookupF32(
          ctext + fushi_voice_hook::little_busters::
              kLittleBustersCTextLayoutHeightOffset,
          &out->height);
  if (!readable || !std::isfinite(out->origin_x) ||
      !std::isfinite(out->origin_y) || !std::isfinite(out->width) ||
      !std::isfinite(out->height) || out->origin_x < -1048576.0f ||
      out->origin_x > 1048576.0f || out->origin_y < -1048576.0f ||
      out->origin_y > 1048576.0f || out->width <= 0.0f ||
      out->height <= 0.0f || out->width > 1048576.0f ||
      out->height > 1048576.0f) {
    return false;
  }
  return true;
}

void RememberLittleBustersLookupModelFailure(uint32_t code,
                                              uint64_t detail = 0u) {
  uint32_t expected = 0u;
  if (g_lb_lookup_diagnostic_model_failure.compare_exchange_strong(
          expected, code, std::memory_order_relaxed,
          std::memory_order_relaxed)) {
    g_lb_lookup_diagnostic_model_failure_detail.store(
        detail, std::memory_order_relaxed);
  }
}

bool ReadLittleBustersLookupPointer(uintptr_t address, uintptr_t* value) {
  return value != nullptr && ReadLittleBustersLookupBytes(address, value,
                                                           sizeof(*value));
}

uint32_t LittleBustersLookupDiagnosticModuleRva(uintptr_t address) {
  if (address == 0u || g_lb_lookup_diagnostic_module_base == 0u ||
      address < g_lb_lookup_diagnostic_module_base ||
      address - g_lb_lookup_diagnostic_module_base > UINT32_MAX) {
    return 0u;
  }
  return static_cast<uint32_t>(address - g_lb_lookup_diagnostic_module_base);
}

bool IsLittleBustersLookupDiagnosticHighFrequencyEvent(
    const LookupDiagnosticEvent& event) {
  switch (event.event_kind) {
    case fushi_voice_hook::kLookupDiagnosticEventMethod:
    case fushi_voice_hook::kLookupDiagnosticEventLayout:
    case fushi_voice_hook::kLookupDiagnosticEventTransform:
    case fushi_voice_hook::kLookupDiagnosticEventSemantic:
      return true;
    case fushi_voice_hook::kLookupDiagnosticEventInput:
      // F2D050 is called from the cursor/semantic loop, not only once per
      // physical click.  WndProc/private edge events carry Edge and bypass
      // this path, while the native hit-test observations are throttled.
      return event.candidate_rva == 0x0007D050u ||
             event.reason_id == fushi_voice_hook::kLbHitTestCalled;
    default:
      return false;
  }
}

uint64_t LittleBustersLookupDiagnosticSignature(
    const LookupDiagnosticEvent& event) {
  uint64_t signature = 1469598103934665603ull;
  const auto mix = [&signature](uint64_t value) {
    signature ^= value;
    signature *= 1099511628211ull;
  };
  mix(event.event_kind);
  mix(event.probe_id);
  mix(event.reason_id);
  mix(event.candidate_rva);
  mix(event.callsite_rva);
  mix(event.flags & (fushi_voice_hook::kLookupDiagnosticFlagFailure |
                     fushi_voice_hook::kLookupDiagnosticFlagPre |
                     fushi_voice_hook::kLookupDiagnosticFlagPost |
                     fushi_voice_hook::kLookupDiagnosticFlagEdge));
  mix(event.text_seq);
  mix(event.text_thread_id);
  mix(event.geometry_generation);
  if (event.event_kind == fushi_voice_hook::kLookupDiagnosticEventLayout &&
      event.reason_id == fushi_voice_hook::kLbRenderCommandRaw) {
    // Keep the bounded raw command sample's ordinal/pair distinct.  Do not
    // include the command pointer or contents: those often change every
    // frame and would defeat the throttle.
    mix(event.record_index);
    mix(event.argument1);
  } else if (event.event_kind == fushi_voice_hook::kLookupDiagnosticEventInput &&
             event.candidate_rva == 0x0007D050u) {
    // A native opaque key transition is diagnostically meaningful; cursor
    // coordinates themselves are already carried by the edge/poll probes.
    mix(event.result0);
  }
  return signature;
}

uint32_t LittleBustersLookupDiagnosticThrottleSlot(
    const LookupDiagnosticEvent& event) {
  uint32_t value = event.event_kind * 0x9e3779b9u;
  value ^= event.probe_id * 0x85ebca6bu;
  value ^= event.candidate_rva * 0xc2b2ae35u;
  value ^= event.callsite_rva;
  return value % static_cast<uint32_t>(kLbDiagnosticThrottleSlotCount);
}

bool ConsumeLittleBustersSteadyStateBudget(ULONGLONG now) {
  const ULONGLONG window =
      now / fushi_voice_hook::little_busters::
          kLittleBustersDiagnosticSteadyStateIntervalMs;
  ULONGLONG observed_window =
      g_lb_lookup_diagnostic_steady_window.load(std::memory_order_relaxed);
  if (observed_window != window &&
      g_lb_lookup_diagnostic_steady_window.compare_exchange_strong(
          observed_window, window, std::memory_order_relaxed,
          std::memory_order_relaxed)) {
    g_lb_lookup_diagnostic_steady_emitted.store(0u,
                                                std::memory_order_relaxed);
  }
  uint32_t emitted =
      g_lb_lookup_diagnostic_steady_emitted.load(std::memory_order_relaxed);
  for (;;) {
    if (!fushi_voice_hook::little_busters::
            LittleBustersDiagnosticSteadyStateBudgetAllows(emitted)) {
      return false;
    }
    if (g_lb_lookup_diagnostic_steady_emitted.compare_exchange_weak(
            emitted, emitted + 1u, std::memory_order_relaxed,
            std::memory_order_relaxed)) {
      return true;
    }
  }
}

void ResetLittleBustersLookupDiagnosticThrottle() {
  for (size_t index = 0u; index < kLbDiagnosticThrottleSlotCount; ++index) {
    g_lb_lookup_diagnostic_throttle_last_emit[index].store(
        0u, std::memory_order_relaxed);
    g_lb_lookup_diagnostic_throttle_signature[index].store(
        0u, std::memory_order_relaxed);
  }
  g_lb_lookup_diagnostic_click_trace_emitted.store(
      0u, std::memory_order_relaxed);
  g_lb_lookup_diagnostic_steady_window.store(0u, std::memory_order_relaxed);
  g_lb_lookup_diagnostic_steady_emitted.store(0u,
                                              std::memory_order_relaxed);
  g_lb_lookup_diagnostic_rate_limited.store(0u, std::memory_order_relaxed);
}

bool ShouldRecordLittleBustersLookupDiagnostic(
    const LookupDiagnosticEvent& event) {
  const bool high_frequency =
      IsLittleBustersLookupDiagnosticHighFrequencyEvent(event);
  const bool edge =
      (event.flags & fushi_voice_hook::kLookupDiagnosticFlagEdge) != 0u;
  if (!high_frequency || edge) return true;

  const ULONGLONG now = GetTickCount64();
  const ULONGLONG edge_tick =
      g_lb_lookup_diagnostic_last_physical_edge_tick.load(
          std::memory_order_relaxed);
  const bool click_window =
      edge_tick != 0u && now >= edge_tick &&
      now - edge_tick <=
          fushi_voice_hook::little_busters::
              kLittleBustersDiagnosticClickTraceWindowMs;
  const uint32_t slot = LittleBustersLookupDiagnosticThrottleSlot(event);
  const uint64_t signature = LittleBustersLookupDiagnosticSignature(event);
  const uint64_t previous_signature =
      g_lb_lookup_diagnostic_throttle_signature[slot].load(
          std::memory_order_relaxed);
  const ULONGLONG last_emit =
      g_lb_lookup_diagnostic_throttle_last_emit[slot].load(
          std::memory_order_relaxed);
  const uint32_t click_emitted =
      g_lb_lookup_diagnostic_click_trace_emitted.load(
          std::memory_order_relaxed);
  const bool emit =
      fushi_voice_hook::little_busters::LittleBustersDiagnosticThrottleAllows(
          true, false, click_window, now, last_emit, signature,
          previous_signature, click_emitted);
  if (!emit) {
    g_lb_lookup_diagnostic_rate_limited.fetch_add(1u,
                                                   std::memory_order_relaxed);
    return false;
  }
  if (!click_window && !ConsumeLittleBustersSteadyStateBudget(now)) {
    g_lb_lookup_diagnostic_rate_limited.fetch_add(1u,
                                                   std::memory_order_relaxed);
    return false;
  }
  g_lb_lookup_diagnostic_throttle_signature[slot].store(
      signature, std::memory_order_relaxed);
  g_lb_lookup_diagnostic_throttle_last_emit[slot].store(
      now, std::memory_order_relaxed);
  if (click_window) {
    g_lb_lookup_diagnostic_click_trace_emitted.fetch_add(
        1u, std::memory_order_relaxed);
  }
  return true;
}

void RecordLittleBustersLookupDiagnostic(LookupDiagnosticEvent event) {
  if (g_header == nullptr) return;

  // ExplicitOccurrence means that the producer intentionally supplied either
  // a concrete seq/thread pair or an explicit bridge miss (zero pair).  Every
  // other event receives the current shared TextSlot snapshot as context.
  if ((event.flags & fushi_voice_hook::kLookupDiagnosticFlagExplicitOccurrence) ==
      0u) {
    event.text_seq = g_lb_lookup_diagnostic_occ_seq.load(
        std::memory_order_relaxed);
    event.text_thread_id = g_lb_lookup_diagnostic_occ_thread.load(
        std::memory_order_relaxed);
    event.text_utf16_hash = g_lb_lookup_diagnostic_occ_hash.load(
        std::memory_order_relaxed);
    event.text_utf16_length = g_lb_lookup_diagnostic_occ_length.load(
        std::memory_order_relaxed);
  }
  if ((event.flags & fushi_voice_hook::kLookupDiagnosticFlagHasGeometry) == 0u) {
    event.geometry_generation =
        g_lb_lookup_diagnostic_geometry_generation.load(
            std::memory_order_relaxed);
  }
  if ((event.flags & fushi_voice_hook::kLookupDiagnosticFlagHasHwnd) == 0u) {
    event.hwnd = reinterpret_cast<uintptr_t>(
        g_lb_lookup_diagnostic_window.load(std::memory_order_relaxed));
  }
  if (event.client_w == 0) {
    event.client_w = g_lb_lookup_diagnostic_client_w.load(
        std::memory_order_relaxed);
  }
  if (event.client_h == 0) {
    event.client_h = g_lb_lookup_diagnostic_client_h.load(
        std::memory_order_relaxed);
  }
  if (event.text_seq != 0u && event.text_thread_id != 0u) {
    event.flags |= fushi_voice_hook::kLookupDiagnosticFlagHasOccurrence;
  }
  if (event.geometry_generation != 0u) {
    event.flags |= fushi_voice_hook::kLookupDiagnosticFlagHasGeometry;
  }
  if (event.hwnd != 0u) {
    event.flags |= fushi_voice_hook::kLookupDiagnosticFlagHasHwnd;
  }
  if (!ShouldRecordLittleBustersLookupDiagnostic(event)) return;
  fushi_voice_hook::RecordLookupDiagnostic(g_header, event);
}

void RecordLittleBustersLookupReason(uint32_t event_kind, uint32_t probe_id,
                                     uint32_t reason_id, uint32_t flags = 0u,
                                     uint32_t candidate_rva = 0u,
                                     uint32_t callsite_rva = 0u,
                                     uint32_t input_surface = 0u,
                                     uint64_t argument0 = 0u,
                                     uint64_t argument1 = 0u,
                                     uint64_t result0 = 0u,
                                     uint64_t result1 = 0u) {
  LookupDiagnosticEvent event = {};
  event.event_kind = event_kind;
  event.probe_id = probe_id;
  event.reason_id = reason_id;
  event.flags = flags;
  event.candidate_rva = candidate_rva;
  event.callsite_rva = callsite_rva;
  event.input_surface = input_surface;
  event.argument0 = argument0;
  event.argument1 = argument1;
  event.result0 = result0;
  event.result1 = result1;
  RecordLittleBustersLookupDiagnostic(event);
}

void RecordLittleBustersExplicitOccurrence(uint32_t event_kind,
                                            uint32_t probe_id,
                                            uint32_t reason_id,
                                            const LittleBustersParserPending& occurrence,
                                            uint32_t flags = 0u,
                                            uint32_t candidate_rva = 0u,
                                            uint32_t callsite_rva = 0u,
                                            uint64_t argument0 = 0u,
                                            uint64_t argument1 = 0u,
                                            uint64_t result0 = 0u,
                                            uint64_t result1 = 0u) {
  LookupDiagnosticEvent event = {};
  event.event_kind = event_kind;
  event.probe_id = probe_id;
  event.reason_id = reason_id;
  event.flags = flags | fushi_voice_hook::kLookupDiagnosticFlagExplicitOccurrence;
  event.candidate_rva = candidate_rva;
  event.callsite_rva = callsite_rva;
  event.argument0 = argument0;
  event.argument1 = argument1;
  event.result0 = result0;
  event.result1 = result1;
  event.text_seq = occurrence.seq;
  event.text_thread_id = occurrence.text_thread;
  event.text_utf16_hash = occurrence.hash;
  event.text_utf16_length = occurrence.length;
  if (occurrence.seq != 0u && occurrence.text_thread != 0u) {
    event.flags |= fushi_voice_hook::kLookupDiagnosticFlagHasOccurrence;
  }
  RecordLittleBustersLookupDiagnostic(event);
}

void RecordLittleBustersLayoutContextEvent(uint32_t reason_id, uint32_t flags,
                                           uint32_t candidate_rva,
                                           uint32_t callsite_rva,
                                           uint64_t argument0 = 0u,
                                           uint64_t argument1 = 0u,
                                           uint64_t result0 = 0u,
                                           uint64_t result1 = 0u) {
  LookupDiagnosticEvent event = {};
  event.event_kind = fushi_voice_hook::kLookupDiagnosticEventLayout;
  event.probe_id = fushi_voice_hook::kLookupDiagnosticProbeP4Layout;
  event.reason_id = reason_id;
  event.flags = flags | fushi_voice_hook::kLookupDiagnosticFlagExplicitOccurrence;
  event.candidate_rva = candidate_rva;
  event.callsite_rva = callsite_rva;
  event.argument0 = argument0;
  event.argument1 = argument1;
  event.result0 = result0;
  event.result1 = result1;
  event.geometry_generation = g_lb_lookup_diagnostic_geometry_generation.load(
      std::memory_order_relaxed);
  event.flags |= fushi_voice_hook::kLookupDiagnosticFlagHasGeometry;
  const uint64_t seq = g_lb_lookup_diagnostic_layout_occ_seq.load(
      std::memory_order_relaxed);
  const uint64_t thread = g_lb_lookup_diagnostic_layout_occ_thread.load(
      std::memory_order_relaxed);
  if (seq != 0u && thread != 0u) {
    event.text_seq = seq;
    event.text_thread_id = thread;
    event.text_utf16_hash = g_lb_lookup_diagnostic_occ_hash.load(
        std::memory_order_relaxed);
    event.text_utf16_length = g_lb_lookup_diagnostic_occ_length.load(
        std::memory_order_relaxed);
    event.flags |= fushi_voice_hook::kLookupDiagnosticFlagHasOccurrence;
  }
  RecordLittleBustersLookupDiagnostic(event);
}

bool ReadLittleBustersLookupImageInfo(HMODULE module, uintptr_t* base,
                                      size_t* image_bytes, uint16_t* machine) {
  if (module == nullptr || base == nullptr || image_bytes == nullptr ||
      machine == nullptr) {
    return false;
  }
  __try {
    const uint8_t* image = reinterpret_cast<const uint8_t*>(module);
    const auto* dos = reinterpret_cast<const IMAGE_DOS_HEADER*>(image);
    if (dos->e_magic != IMAGE_DOS_SIGNATURE || dos->e_lfanew <= 0 ||
        dos->e_lfanew > 1024 * 1024 ||
        !IsLittleBustersLookupDiagnosticReadable(
            image + dos->e_lfanew, sizeof(IMAGE_NT_HEADERS))) {
      return false;
    }
    const auto* nt = reinterpret_cast<const IMAGE_NT_HEADERS*>(
        image + dos->e_lfanew);
    if (nt->Signature != IMAGE_NT_SIGNATURE ||
        nt->OptionalHeader.SizeOfImage == 0u) {
      return false;
    }
    *base = reinterpret_cast<uintptr_t>(module);
    *image_bytes = nt->OptionalHeader.SizeOfImage;
    *machine = nt->FileHeader.Machine;
    return true;
  } __except (EXCEPTION_EXECUTE_HANDLER) {
    return false;
  }
}

bool ResolveLittleBustersLookupRva(uint32_t rva, size_t bytes,
                                   uintptr_t* address) {
  if (address == nullptr || g_lb_lookup_diagnostic_module_base == 0u ||
      rva >= g_lb_lookup_diagnostic_image_bytes ||
      bytes > g_lb_lookup_diagnostic_image_bytes - rva) {
    return false;
  }
  const uintptr_t candidate = g_lb_lookup_diagnostic_module_base + rva;
  if (!IsLittleBustersLookupDiagnosticReadable(
          reinterpret_cast<const void*>(candidate), bytes)) {
    return false;
  }
  *address = candidate;
  return true;
}

bool IsLittleBustersLookupExecutableRva(uint32_t rva) {
  uintptr_t address = 0u;
  if (!ResolveLittleBustersLookupRva(rva, 1u, &address)) return false;
  MEMORY_BASIC_INFORMATION memory = {};
  if (VirtualQuery(reinterpret_cast<const void*>(address), &memory,
                   sizeof(memory)) != sizeof(memory)) {
    return false;
  }
  const DWORD protection = memory.Protect & 0xffu;
  return protection == PAGE_EXECUTE || protection == PAGE_EXECUTE_READ ||
         protection == PAGE_EXECUTE_READWRITE ||
         protection == PAGE_EXECUTE_WRITECOPY;
}

bool ValidateLittleBustersLookupCandidate(
    const fushi_voice_hook::little_busters::LittleBustersLookupCandidateSpec& spec,
    uint32_t* slot, uintptr_t* target, uintptr_t* rtti) {
  if (slot == nullptr || target == nullptr || rtti == nullptr ||
      g_lb_lookup_diagnostic_machine != IMAGE_FILE_MACHINE_I386) {
    return false;
  }
  uintptr_t vtable = 0u;
  if (!ResolveLittleBustersLookupRva(spec.vtable_rva, sizeof(uintptr_t) * 64u,
                                     &vtable) ||
      !ReadLittleBustersLookupPointer(vtable - sizeof(uintptr_t), rtti)) {
    return false;
  }
  if (*rtti < g_lb_lookup_diagnostic_module_base ||
      *rtti - g_lb_lookup_diagnostic_module_base >=
          g_lb_lookup_diagnostic_image_bytes) {
    return false;
  }
  uintptr_t expected = 0u;
  if (!ResolveLittleBustersLookupRva(spec.target_rva, 1u, &expected)) {
    return false;
  }
  for (uint32_t index = 0u; index < 64u; ++index) {
    uintptr_t observed = 0u;
    if (!ReadLittleBustersLookupPointer(
            vtable + index * sizeof(uintptr_t), &observed)) {
      return false;
    }
    if (observed != expected) continue;
    if (spec.expected_slot != UINT32_MAX && spec.expected_slot != index) {
      return false;
    }
    if (!IsLittleBustersLookupExecutableRva(spec.target_rva)) return false;
    *slot = index;
    *target = observed;
    return true;
  }
  return false;
}

bool IsLittleBustersLookupNameCandidate() {
  wchar_t path[32768] = {};
  const DWORD chars = GetModuleFileNameW(nullptr, path, _countof(path));
  if (chars == 0u || chars >= _countof(path)) return false;
  const wchar_t* slash = wcsrchr(path, L'\\');
  if (slash == nullptr) slash = wcsrchr(path, L'/');
  return slash != nullptr &&
         _wcsicmp(slash + 1,
                  fushi_voice_hook::little_busters::
                      kLittleBustersExecutableName) == 0;
}

bool ReadLittleBustersLookupWideText(uintptr_t address, uint16_t* units,
                                     uint32_t* unit_count, uint64_t* hash) {
  if (address == 0u || units == nullptr || unit_count == nullptr ||
      hash == nullptr) {
    return false;
  }
  uint64_t value = 1469598103934665603ull;
  bool printable = false;
  uint32_t count = 0u;
  for (; count < kLbDiagnosticMaxTextUnits; ++count) {
    uint16_t unit = 0u;
    if (!ReadLittleBustersLookupBytes(address + count * sizeof(uint16_t),
                                      &unit, sizeof(unit))) {
      return false;
    }
    if (unit == 0u) break;
    units[count] = unit;
    if (unit >= 0x20u || unit == 0x09u) printable = true;
    value ^= unit;
    value *= 1099511628211ull;
  }
  if (count == 0u || count >= kLbDiagnosticMaxTextUnits || !printable) {
    return false;
  }
  *unit_count = count;
  *hash = value;
  return true;
}

bool ReadLittleBustersLookupSlotUnits(const TextSlot* slot, uint16_t* units,
                                      uint32_t* unit_count, uint64_t* hash) {
  if (slot == nullptr || units == nullptr || unit_count == nullptr ||
      hash == nullptr) {
    return false;
  }
  __try {
    const uint32_t bytes = slot->byte_len;
    const uint32_t max_bytes = kTextSlotBytes -
                               static_cast<uint32_t>(sizeof(TextSlot));
    if (bytes == 0u || bytes > max_bytes) return false;
    const uint8_t* payload = reinterpret_cast<const uint8_t*>(slot) +
                             sizeof(TextSlot);
    int converted = 0;
    if (slot->is_utf8 != 0u) {
      converted = MultiByteToWideChar(
          CP_UTF8, MB_ERR_INVALID_CHARS, reinterpret_cast<LPCCH>(payload),
          static_cast<int>(bytes), reinterpret_cast<LPWSTR>(units),
          static_cast<int>(kLbDiagnosticMaxTextUnits));
      if (converted <= 0) {
        converted = MultiByteToWideChar(
            CP_UTF8, 0, reinterpret_cast<LPCCH>(payload),
            static_cast<int>(bytes), reinterpret_cast<LPWSTR>(units),
            static_cast<int>(kLbDiagnosticMaxTextUnits));
      }
    } else {
      if ((bytes & 1u) != 0u || bytes / sizeof(uint16_t) == 0u ||
          bytes / sizeof(uint16_t) > kLbDiagnosticMaxTextUnits) {
        return false;
      }
      converted = static_cast<int>(bytes / sizeof(uint16_t));
      memcpy(units, payload, bytes);
    }
    if (converted <= 0 ||
        static_cast<uint32_t>(converted) > kLbDiagnosticMaxTextUnits) {
      return false;
    }
    // UserHook1's production line payload carries the transport line ending,
    // while Luca's cText glyph array contains only drawable UTF-16 units.
    // Keep the original TextSlot untouched, but remove trailing CR/LF from
    // this lookup identity copy so the source map compares the same rendered
    // sentence on both sides.
    while (converted > 0 &&
           (units[converted - 1] == 0x000Au ||
            units[converted - 1] == 0x000Du)) {
      --converted;
    }
    if (converted <= 0) return false;
    uint64_t value = 1469598103934665603ull;
    for (int index = 0; index < converted; ++index) {
      value ^= static_cast<uint16_t>(units[index]);
      value *= 1099511628211ull;
    }
    *unit_count = static_cast<uint32_t>(converted);
    *hash = value;
    return true;
  } __except (EXCEPTION_EXECUTE_HANDLER) {
    return false;
  }
}

bool ReadLittleBustersLookupSlotByIdentity(uint64_t wanted_seq,
                                           uint64_t wanted_thread,
                                           uint16_t* units,
                                           uint32_t* unit_count,
                                           uint64_t* hash) {
  if (g_header == nullptr || wanted_seq == 0u || wanted_thread == 0u ||
      units == nullptr || unit_count == nullptr || hash == nullptr) {
    return false;
  }
  const TextSlot* slots[kTextSlotCount] = {};
  const uint32_t found = fushi_voice_hook::CollectTextSlotsBySeq(
      g_header, slots, kTextSlotCount, 0u);
  for (uint32_t index = 0u; index < found; ++index) {
    const TextSlot* slot = slots[index];
    if (slot == nullptr || slot->thread_id != wanted_thread ||
        slot->source_kind != fushi_voice_hook::kTextSourceLuna ||
        slot->event_kind != fushi_voice_hook::kTextEventLine ||
        !fushi_voice_hook::little_busters::IsLittleBustersExactHookCode(
            slot->hook_code)) {
      continue;
    }
    const uint64_t before =
        fushi_voice_hook::AtomicLoadPreview64(&slot->seq);
    if (before != wanted_seq) continue;
    uint32_t observed_count = 0u;
    uint64_t observed_hash = 0u;
    if (!ReadLittleBustersLookupSlotUnits(slot, units, &observed_count,
                                          &observed_hash)) {
      continue;
    }
    const uint64_t after =
        fushi_voice_hook::AtomicLoadPreview64(&slot->seq);
    if (before != after || after != wanted_seq ||
        slot->thread_id != wanted_thread) {
      continue;
    }
    *unit_count = observed_count;
    *hash = observed_hash;
    return true;
  }
  return false;
}

bool ReadLittleBustersLookupModel(LittleBustersLookupModel* output) {
  if (output == nullptr) return false;
  for (int attempt = 0; attempt < 4; ++attempt) {
    const uint64_t before =
        g_lb_lookup_model_version.load(std::memory_order_acquire);
    if ((before & 1u) != 0u) continue;
    std::memcpy(output, &g_lb_lookup_model, sizeof(*output));
    const uint64_t after =
        g_lb_lookup_model_version.load(std::memory_order_acquire);
    if (before == after && (after & 1u) == 0u) return output->valid;
  }
  return false;
}

void PublishLittleBustersLookupModel(const LittleBustersLookupModel& model) {
  g_lb_lookup_model_version.fetch_add(1u, std::memory_order_acq_rel);
  std::memcpy(&g_lb_lookup_model, &model, sizeof(model));
  g_lb_lookup_model_version.fetch_add(1u, std::memory_order_release);
}

void ClearLittleBustersLookupModel() {
  LittleBustersLookupModel empty = {};
  PublishLittleBustersLookupModel(empty);
}

void QueueLittleBustersLookupSubmit(const LittleBustersLookupSubmit& submit) {
  g_lb_lookup_submit_version.fetch_add(1u, std::memory_order_acq_rel);
  std::memcpy(&g_lb_lookup_submit, &submit, sizeof(submit));
  g_lb_lookup_submit_version.fetch_add(1u, std::memory_order_release);
}

bool ReadLittleBustersLookupSubmit(LittleBustersLookupSubmit* output) {
  if (output == nullptr) return false;
  for (int attempt = 0; attempt < 4; ++attempt) {
    const uint64_t before =
        g_lb_lookup_submit_version.load(std::memory_order_acquire);
    if ((before & 1u) != 0u || before <= g_lb_lookup_submit_consumed_version) {
      return false;
    }
    std::memcpy(output, &g_lb_lookup_submit, sizeof(*output));
    const uint64_t after =
        g_lb_lookup_submit_version.load(std::memory_order_acquire);
    if (before == after && (after & 1u) == 0u) {
      g_lb_lookup_submit_consumed_version = after;
      return output->valid;
    }
  }
  return false;
}

struct LittleBustersLookupSourceCluster {
  uint32_t start = 0u;
  uint32_t length = 0u;
};

bool IsLittleBustersLookupWhitespace(uint16_t value) {
  return value == 0x0009u || value == 0x0020u || value == 0x3000u;
}

bool BuildLittleBustersLookupSourceMap(
    const uint16_t* units, uint32_t unit_count, uint32_t glyph_count,
    LittleBustersLookupSourceCluster* mapped) {
  if (units == nullptr || mapped == nullptr || unit_count == 0u ||
      glyph_count == 0u || glyph_count > kLbLookupMaxGlyphs) {
    return false;
  }
  LittleBustersLookupSourceCluster clusters[kLbDiagnosticMaxTextUnits] = {};
  uint32_t cluster_count = 0u;
  for (uint32_t index = 0u; index < unit_count; ++index) {
    const uint16_t value = units[index];
    if (value < 0x20u && value != 0x09u && value != 0x20u) {
      // The text pipeline already handles known control/annotation syntax;
      // this adapter does not guess at an unknown inline control's rendered
      // width or source span.
      return false;
    }
    if (fushi_voice_hook::little_busters::IsLittleBustersLowSurrogate(value)) {
      return false;
    }
    const uint32_t length =
        fushi_voice_hook::little_busters::IsLittleBustersHighSurrogate(value)
            ? 2u
            : 1u;
    if (length == 2u &&
        (index + 1u >= unit_count ||
         !fushi_voice_hook::little_busters::IsLittleBustersLowSurrogate(
             units[index + 1u]))) {
      return false;
    }
    if (cluster_count >= kLbDiagnosticMaxTextUnits) return false;
    clusters[cluster_count++] = {index, length};
    index += length - 1u;
  }
  if (cluster_count == glyph_count) {
    std::memcpy(mapped, clusters,
                glyph_count * sizeof(LittleBustersLookupSourceCluster));
    return true;
  }

  // Luca does not create an interactive record for an ordinary layout gap.
  // Allow that only when every omitted source cluster is unambiguously a
  // whitespace cluster; ruby/control markup is never silently collapsed.
  uint32_t visible_count = 0u;
  for (uint32_t index = 0u; index < cluster_count; ++index) {
    const auto& cluster = clusters[index];
    if (!IsLittleBustersLookupWhitespace(units[cluster.start])) {
      if (visible_count >= glyph_count) return false;
      mapped[visible_count++] = cluster;
    }
  }
  return visible_count == glyph_count;
}

bool FindLittleBustersLookupCurrentTextSlot(uint64_t* seq, uint64_t* thread,
                                            uint16_t* units,
                                            uint32_t* unit_count,
                                            uint64_t* hash) {
  if (g_header == nullptr || seq == nullptr || thread == nullptr ||
      units == nullptr || unit_count == nullptr || hash == nullptr) {
    return false;
  }
  fushi_voice_hook::little_busters::VoiceTextCandidate candidates[kTextSlotCount] =
      {};
  uint32_t candidate_count = 0u;
  SnapshotLittleBustersTextCandidates(candidates, _countof(candidates),
                                      &candidate_count);
  if (candidate_count == 0u) return false;
  const uint64_t selected_thread =
      fushi_voice_hook::SelectedTextThreadId(g_header);
  if (selected_thread == 0u) return false;
  const TextSlot* slots[kTextSlotCount] = {};
  const uint32_t found = fushi_voice_hook::CollectTextSlotsBySeq(
      g_header, slots, kTextSlotCount, 0u);
  const TextSlot* best = nullptr;
  uint64_t best_seq = 0u;
  for (uint32_t index = 0u; index < found; ++index) {
    const TextSlot* slot = slots[index];
    if (slot == nullptr || slot->source_kind != fushi_voice_hook::kTextSourceLuna ||
        slot->event_kind != fushi_voice_hook::kTextEventLine ||
        slot->byte_len == 0u || slot->thread_id != selected_thread ||
        !fushi_voice_hook::little_busters::IsLittleBustersExactHookCode(
            slot->hook_code)) {
      continue;
    }
    const uint64_t observed_seq =
        fushi_voice_hook::AtomicLoadPreview64(&slot->seq);
    if (observed_seq > best_seq) {
      best_seq = observed_seq;
      best = slot;
    }
  }
  if (best == nullptr) return false;
  const uint64_t observed_seq =
      fushi_voice_hook::AtomicLoadPreview64(&best->seq);
  uint32_t observed_count = 0u;
  uint64_t observed_hash = 0u;
  if (!ReadLittleBustersLookupSlotUnits(best, units, &observed_count,
                                        &observed_hash) ||
      observed_seq == 0u || observed_seq !=
                                 fushi_voice_hook::AtomicLoadPreview64(
                                     &best->seq)) {
    return false;
  }
  *seq = observed_seq;
  *thread = best->thread_id;
  *unit_count = observed_count;
  *hash = observed_hash;
  return true;
}

LittleBustersParserPending CaptureCurrentLittleBustersOccurrence() {
  LittleBustersParserPending result;
  uint16_t units[kLbDiagnosticMaxTextUnits] = {};
  if (!FindLittleBustersLookupCurrentTextSlot(
          &result.seq, &result.text_thread, units, &result.length,
          &result.hash)) {
    return result;
  }
  result.valid = result.seq != 0u && result.text_thread != 0u;
  result.thread_id = GetCurrentThreadId();
  return result;
}

LittleBustersParserPending CapturePublishedLittleBustersOccurrence() {
  LittleBustersParserPending result;
  // This is a frozen snapshot of the already-authoritative bridge state.  It
  // intentionally does not rescan text, compare strings, or infer identity
  // from timing.  A hit-test event may carry this active occurrence snapshot
  // even when no cText producer relation has been proven.
  const uint64_t first_seq = g_lb_lookup_diagnostic_occ_seq.load(
      std::memory_order_acquire);
  const uint64_t thread = g_lb_lookup_diagnostic_occ_thread.load(
      std::memory_order_relaxed);
  const uint64_t hash = g_lb_lookup_diagnostic_occ_hash.load(
      std::memory_order_relaxed);
  const uint32_t length = g_lb_lookup_diagnostic_occ_length.load(
      std::memory_order_relaxed);
  const uint64_t second_seq = g_lb_lookup_diagnostic_occ_seq.load(
      std::memory_order_acquire);
  if (first_seq == 0u || first_seq != second_seq || thread == 0u) {
    return result;
  }
  result.valid = true;
  result.seq = first_seq;
  result.text_thread = thread;
  result.hash = hash;
  result.length = length;
  result.thread_id = GetCurrentThreadId();
  return result;
}

void PublishLittleBustersLookupOccurrence() {
  LittleBustersParserPending current =
      CaptureCurrentLittleBustersOccurrence();
  if (!current.valid) {
    return;
  }
  const uint64_t old_seq = g_lb_lookup_diagnostic_occ_seq.load(
      std::memory_order_relaxed);
  const uint64_t old_hash = g_lb_lookup_diagnostic_occ_hash.load(
      std::memory_order_relaxed);
  const uint32_t old_length = g_lb_lookup_diagnostic_occ_length.load(
      std::memory_order_relaxed);
  const uint64_t old_thread = g_lb_lookup_diagnostic_occ_thread.load(
      std::memory_order_relaxed);
  if (old_seq == current.seq && old_thread == current.text_thread) {
    if (old_hash != current.hash || old_length != current.length) {
      RecordLittleBustersLookupReason(
          fushi_voice_hook::kLookupDiagnosticEventOccurrence,
          fushi_voice_hook::kLookupDiagnosticProbeP1Occurrence,
          fushi_voice_hook::kLbOccStaleSeq,
          fushi_voice_hook::kLookupDiagnosticFlagFailure, 0u, 0u, 0u,
          old_hash, current.hash, old_length, current.length);
    }
    return;
  }

  LittleBustersParserPending old = current;
  old.valid = old_seq != 0u && old_thread != 0u;
  old.seq = old_seq;
  old.text_thread = old_thread;
  old.hash = old_hash;
  old.length = old_length;
  old.thread_id = GetCurrentThreadId();
  if (old.valid) {
    const uint64_t old_geometry_generation =
        g_lb_lookup_diagnostic_geometry_generation.load(
            std::memory_order_relaxed);
    const uint64_t old_layout_seq = g_lb_lookup_diagnostic_layout_occ_seq.load(
        std::memory_order_relaxed);
    const bool old_layout_seen =
        old_layout_seq != 0u ||
        g_lb_lookup_diagnostic_layout_record_seen.load(
            std::memory_order_relaxed) ||
        g_lb_lookup_diagnostic_layout_draw_seen.load(
            std::memory_order_relaxed);
    if (old_layout_seen && old_geometry_generation != 0u) {
      LookupDiagnosticEvent stale = {};
      stale.event_kind = fushi_voice_hook::kLookupDiagnosticEventLayout;
      stale.probe_id = fushi_voice_hook::kLookupDiagnosticProbeP4Layout;
      stale.reason_id = fushi_voice_hook::kLbGeometryStale;
      stale.flags = fushi_voice_hook::kLookupDiagnosticFlagFailure |
                    fushi_voice_hook::kLookupDiagnosticFlagExplicitOccurrence |
                    fushi_voice_hook::kLookupDiagnosticFlagHasOccurrence |
                    fushi_voice_hook::kLookupDiagnosticFlagHasGeometry;
      stale.candidate_rva =
          fushi_voice_hook::little_busters::kLittleBustersParserHandoffRva;
      stale.text_seq = old.seq;
      stale.text_thread_id = old.text_thread;
      stale.text_utf16_hash = old.hash;
      stale.text_utf16_length = old.length;
      stale.geometry_generation = old_geometry_generation;
      stale.argument0 = old_layout_seq;
      stale.argument1 = current.seq;
      stale.result0 = g_lb_lookup_diagnostic_layout_record.load(
          std::memory_order_relaxed);
      stale.result1 = old_geometry_generation;
      RecordLittleBustersLookupDiagnostic(stale);
    }
    LookupDiagnosticEvent invalidated = {};
    invalidated.event_kind = fushi_voice_hook::kLookupDiagnosticEventLayout;
    invalidated.probe_id = fushi_voice_hook::kLookupDiagnosticProbeP4Layout;
    invalidated.reason_id = fushi_voice_hook::kLbLayoutInvalidated;
    invalidated.flags = fushi_voice_hook::kLookupDiagnosticFlagFailure |
                        fushi_voice_hook::kLookupDiagnosticFlagExplicitOccurrence;
    invalidated.text_seq = old.seq;
    invalidated.text_thread_id = old.text_thread;
    invalidated.text_utf16_hash = old.hash;
    invalidated.text_utf16_length = old.length;
    invalidated.geometry_generation =
        g_lb_lookup_diagnostic_geometry_generation.load(
            std::memory_order_relaxed);
    invalidated.flags |= fushi_voice_hook::kLookupDiagnosticFlagHasOccurrence;
    invalidated.flags |= fushi_voice_hook::kLookupDiagnosticFlagHasGeometry;
    invalidated.argument0 = old.seq;
    invalidated.argument1 = current.seq;
    RecordLittleBustersLookupDiagnostic(invalidated);

    const bool semantic_seen =
        g_lb_lookup_diagnostic_semantic_callsite_seen.load(
            std::memory_order_relaxed);
    const uint64_t last_edge =
        g_lb_lookup_diagnostic_last_physical_edge_tick.load(
            std::memory_order_relaxed);
    const uint64_t now = GetTickCount64();
    if (last_edge != 0u && now >= last_edge && now - last_edge < 1500u) {
      if (semantic_seen) {
        RecordLittleBustersLookupReason(
            fushi_voice_hook::kLookupDiagnosticEventSemantic,
            fushi_voice_hook::kLookupDiagnosticProbeP9Semantic,
            fushi_voice_hook::kLbOccurrenceAfterSubmit,
            fushi_voice_hook::kLookupDiagnosticFlagPost, 0u, 0u, 0u,
            old.seq, current.seq);
      } else {
        RecordLittleBustersLookupReason(
            fushi_voice_hook::kLookupDiagnosticEventSemantic,
            fushi_voice_hook::kLookupDiagnosticProbeP9Semantic,
            fushi_voice_hook::kLbAdvanceBeforeLookup,
            fushi_voice_hook::kLookupDiagnosticFlagFailure |
                fushi_voice_hook::kLookupDiagnosticFlagPost,
            0u, 0u, 0u, old.seq, current.seq);
      }
    }
  }

  g_lb_lookup_diagnostic_previous_seq.store(old_seq,
                                             std::memory_order_relaxed);
  g_lb_lookup_diagnostic_previous_hash.store(old_hash,
                                              std::memory_order_relaxed);
  g_lb_lookup_diagnostic_previous_length.store(old_length,
                                                std::memory_order_relaxed);
  // Invalidate the old hit before publishing the new TextSlot identity.  The
  // active cText storage is often reused for consecutive lines, so pointer or
  // string equality must never let a click target survive an occurrence swap.
  ClearLittleBustersLookupModel();
  g_lb_lookup_active_layout_ctext.store(0u, std::memory_order_relaxed);
  g_lb_lookup_active_layout_item.store(0u, std::memory_order_relaxed);
  g_lb_lookup_active_layout_records.store(0u, std::memory_order_relaxed);
  g_lb_lookup_active_layout_record_count.store(0u,
                                               std::memory_order_relaxed);
  g_lb_lookup_active_layout_seq.store(0u, std::memory_order_relaxed);
  g_lb_lookup_active_layout_thread.store(0u, std::memory_order_relaxed);
  g_lb_lookup_diagnostic_occ_thread.store(current.text_thread,
                                           std::memory_order_relaxed);
  g_lb_lookup_diagnostic_occ_hash.store(current.hash,
                                         std::memory_order_relaxed);
  g_lb_lookup_diagnostic_occ_length.store(current.length,
                                           std::memory_order_relaxed);
  g_lb_lookup_diagnostic_occurrence_ambiguous.store(
      old_seq != 0u && old_thread != 0u &&
          (old_seq != current.seq || old_thread != current.text_thread) &&
          old_hash == current.hash && old_length == current.length,
      std::memory_order_relaxed);
  g_lb_lookup_diagnostic_occ_seq.store(current.seq, std::memory_order_release);

  LittleBustersParserPending published = current;
  RecordLittleBustersExplicitOccurrence(
      fushi_voice_hook::kLookupDiagnosticEventOccurrence,
      fushi_voice_hook::kLookupDiagnosticProbeP1Occurrence,
      fushi_voice_hook::kLbOccBridgeOk, published, 0u, 0u, 0u,
      current.seq, current.text_thread, current.hash, current.length);

  // The geometry counter is not touched here.  The next F25630 call creates
  // the new repaint/layout epoch and will be correlated to this seq only if
  // its direct parser call-chain bridge is present.
  g_lb_lookup_diagnostic_layout_handoff.store(false, std::memory_order_relaxed);
  g_lb_lookup_diagnostic_layout_record_seen.store(false,
                                                  std::memory_order_relaxed);
  g_lb_lookup_diagnostic_layout_draw_seen.store(false,
                                                std::memory_order_relaxed);
  g_lb_lookup_diagnostic_layout_sealed.store(false, std::memory_order_relaxed);
  g_lb_lookup_diagnostic_layout_occ_seq.store(0u, std::memory_order_relaxed);
  g_lb_lookup_diagnostic_layout_occ_thread.store(0u,
                                                  std::memory_order_relaxed);
  g_lb_lookup_diagnostic_semantic_reported.store(false,
                                                 std::memory_order_relaxed);
  g_lb_lookup_diagnostic_script_no_occ_reported.store(false,
                                                      std::memory_order_relaxed);
}

bool ReadLittleBustersLookupArgs(uintptr_t entry_esp, uintptr_t* args,
                                 uint32_t count) {
  if (args == nullptr || count == 0u || count > kLbDiagnosticMaxMethodArgs ||
      entry_esp == 0u || !IsLittleBustersLookupDiagnosticReadable(
                              reinterpret_cast<const void*>(entry_esp),
                              (count + 1u) * sizeof(uintptr_t))) {
    return false;
  }
  __try {
    for (uint32_t index = 0u; index < count; ++index) {
      args[index] = *reinterpret_cast<const uintptr_t*>(
          entry_esp + (index + 1u) * sizeof(uintptr_t));
    }
    return true;
  } __except (EXCEPTION_EXECUTE_HANDLER) {
    return false;
  }
}

uintptr_t LittleBustersLookupCallerReturn(uintptr_t entry_esp) {
  uintptr_t value = 0u;
  if (!ReadLittleBustersLookupBytes(entry_esp, &value, sizeof(value))) return 0u;
  return value;
}

bool LittleBustersLookupShouldEmitMethod(uint32_t index, ULONGLONG now,
                                         LONG* call_count) {
  if (call_count == nullptr || index >=
      fushi_voice_hook::little_busters::kLittleBustersConcreteProbeCount) {
    return false;
  }
  *call_count = g_lb_lookup_diagnostic_concrete_calls[index].fetch_add(
                    1, std::memory_order_relaxed) +
                1;
  const ULONGLONG last = g_lb_lookup_diagnostic_concrete_last_emit[index].load(
      std::memory_order_relaxed);
  const bool emit = static_cast<uint32_t>(*call_count) <=
                        kLbDiagnosticMethodEmitLimit ||
                    last == 0u || now - last >= kLbDiagnosticMethodEmitIntervalMs;
  if (emit) {
    g_lb_lookup_diagnostic_concrete_last_emit[index].store(
        now, std::memory_order_relaxed);
  }
  return emit;
}

uint32_t LittleBustersLookupConcreteCallerRva(uintptr_t return_address) {
  const uint32_t rva = LittleBustersLookupDiagnosticModuleRva(return_address);
  return rva;
}

void RecordLittleBustersConcreteMethod(uint32_t index, uintptr_t entry_esp,
                                       uintptr_t this_pointer,
                                       uintptr_t saved_registers) {
  if (index >= fushi_voice_hook::little_busters::kLittleBustersConcreteProbeCount ||
      g_header == nullptr ||
      g_lb_lookup_diagnostic_identity.load(std::memory_order_relaxed) != 1) {
    return;
  }
  const auto& spec =
      fushi_voice_hook::little_busters::kLittleBustersConcreteProbes[index];
  const ULONGLONG now = GetTickCount64();
  LONG call_count = 0;
  if (!LittleBustersLookupShouldEmitMethod(index, now, &call_count)) return;

  uintptr_t args[kLbDiagnosticMaxMethodArgs] = {};
  const bool args_valid = ReadLittleBustersLookupArgs(
      entry_esp, args, kLbDiagnosticMaxMethodArgs);
  const uintptr_t caller_return = LittleBustersLookupCallerReturn(entry_esp);
  uintptr_t vptr = 0u;
  if (this_pointer != 0u) ReadLittleBustersLookupPointer(this_pointer, &vptr);
  uintptr_t actual_this = this_pointer;
  if (spec.internal_label && saved_registers != 0u) {
    // pushad stores the original ECX at +24 from the saved-register base.
    // Internal labels are not vtable entries, so never reinterpret saved EDI
    // at +0 as an object pointer merely because the probe is a callsite.
    ReadLittleBustersLookupPointer(saved_registers + 24u, &actual_this);
  }
  if (actual_this != 0u) {
    ReadLittleBustersLookupPointer(actual_this, &vptr);
  }

  LookupDiagnosticEvent event = {};
  event.event_kind = fushi_voice_hook::kLookupDiagnosticEventMethod;
  event.probe_id = spec.probe_id;
  event.reason_id = fushi_voice_hook::kLbMethodCall;
  event.flags = fushi_voice_hook::kLookupDiagnosticFlagPre;
  event.candidate_rva = spec.rva;
  event.callsite_rva = LittleBustersLookupConcreteCallerRva(caller_return);
  event.vptr_rva = LittleBustersLookupDiagnosticModuleRva(vptr);
  event.argument0 = actual_this;
  event.argument1 = args_valid ? args[0] : 0u;
  event.result0 = args_valid ? args[1] : 0u;
  event.result1 = static_cast<uint64_t>(call_count);
  RecordLittleBustersLookupDiagnostic(event);
}

void RecordLittleBustersTypedConcreteMethod(uint32_t index,
                                            uintptr_t caller_return,
                                            uintptr_t this_pointer,
                                            uintptr_t argument0,
                                            uintptr_t argument1) {
  if (index >= fushi_voice_hook::little_busters::kLittleBustersConcreteProbeCount ||
      g_header == nullptr ||
      g_lb_lookup_diagnostic_identity.load(std::memory_order_relaxed) != 1) {
    return;
  }
  const auto& spec =
      fushi_voice_hook::little_busters::kLittleBustersConcreteProbes[index];
  const ULONGLONG now = GetTickCount64();
  LONG call_count = 0;
  if (!LittleBustersLookupShouldEmitMethod(index, now, &call_count)) return;
  uintptr_t vptr = 0u;
  if (this_pointer != 0u) ReadLittleBustersLookupPointer(this_pointer, &vptr);
  LookupDiagnosticEvent event = {};
  event.event_kind = fushi_voice_hook::kLookupDiagnosticEventMethod;
  event.probe_id = spec.probe_id;
  event.reason_id = fushi_voice_hook::kLbMethodCall;
  event.flags = fushi_voice_hook::kLookupDiagnosticFlagPre;
  event.candidate_rva = spec.rva;
  event.callsite_rva = LittleBustersLookupConcreteCallerRva(caller_return);
  event.vptr_rva = LittleBustersLookupDiagnosticModuleRva(vptr);
  event.argument0 = this_pointer;
  event.argument1 = argument0;
  event.result0 = argument1;
  event.result1 = static_cast<uint64_t>(call_count);
  RecordLittleBustersLookupDiagnostic(event);
}

enum LittleBustersParserControlKind : uint32_t {
  kLbParserPlain = 0u,
  kLbParserSpace = 1u,
  kLbParserPunctuation = 2u,
  kLbParserWrapCandidate = 3u,
  kLbParserRubyCandidate = 4u,
  kLbParserAnnotationCandidate = 5u,
  kLbParserGlossaryCandidate = 6u,
  kLbParserControlCandidate = 7u,
  kLbParserSurrogatePair = 8u,
  kLbParserMarkupUnknown = 9u,
};

bool IsLittleBustersLookupPunctuation(uint16_t value) {
  return (value >= 0x21u && value <= 0x2fu) ||
         (value >= 0x3au && value <= 0x40u) ||
         (value >= 0x5bu && value <= 0x60u) ||
         (value >= 0x7bu && value <= 0x7eu) ||
         (value >= 0x3001u && value <= 0x303fu) ||
         (value >= 0xff01u && value <= 0xff65u);
}

uint32_t ClassifyLittleBustersParserUnit(uint16_t value) {
  if (value == 0x20u || value == 0x3000u || value == 0x09u) {
    return kLbParserSpace;
  }
  // C0 units other than tab/space are not proven Luca markup.  Preserve the
  // unit and surface it as an unknown markup gap instead of silently treating
  // it as a visible character.
  if (value < 0x20u) return kLbParserMarkupUnknown;
  switch (value) {
    case 0x7eu: return kLbParserWrapCandidate;
    case 0x60u: return kLbParserRubyCandidate;
    case 0x28u:
    case 0x29u: return kLbParserAnnotationCandidate;
    case 0x2cu: return kLbParserGlossaryCandidate;
    case 0x74u:
    case 0x76u:
    case 0x40u:
    case 0x24u:
    case 0x8196u: return kLbParserControlCandidate;
    default: break;
  }
  if (IsLittleBustersLookupPunctuation(value)) return kLbParserPunctuation;
  return kLbParserPlain;
}

uint32_t ReasonForLittleBustersParserUnit(uint32_t kind) {
  switch (kind) {
    case kLbParserSpace: return fushi_voice_hook::kLbMapSpaceObserved;
    case kLbParserPunctuation:
      return fushi_voice_hook::kLbMapPunctuationObserved;
    case kLbParserWrapCandidate: return fushi_voice_hook::kLbMapWrapObserved;
    case kLbParserRubyCandidate: return fushi_voice_hook::kLbMapRubyObserved;
    case kLbParserAnnotationCandidate:
      return fushi_voice_hook::kLbMapAnnotationObserved;
    case kLbParserGlossaryCandidate:
      return fushi_voice_hook::kLbMapGlossaryObserved;
    case kLbParserControlCandidate:
      return fushi_voice_hook::kLbMapControlObserved;
    case kLbParserSurrogatePair:
      return fushi_voice_hook::kLbMapUtf16PairObserved;
    case kLbParserMarkupUnknown:
      return fushi_voice_hook::kLbMapMarkupUnknown;
    default: return fushi_voice_hook::kLbMapOk;
  }
}

void RecordLittleBustersParserUnit(uint32_t candidate_rva,
                                   uintptr_t source_pointer,
                                   uint32_t source_offset,
                                   uint32_t source_length, uint16_t value,
                                   uint32_t kind,
                                   const LittleBustersParserPending& occurrence) {
  LookupDiagnosticEvent event = {};
  event.event_kind = fushi_voice_hook::kLookupDiagnosticEventMapping;
  event.probe_id = fushi_voice_hook::kLookupDiagnosticProbeP5Mapping;
  event.reason_id = ReasonForLittleBustersParserUnit(kind);
  event.flags = (kind == kLbParserPlain
                     ? 0u
                     : fushi_voice_hook::kLookupDiagnosticFlagPost) |
                fushi_voice_hook::kLookupDiagnosticFlagExplicitOccurrence;
  event.candidate_rva = candidate_rva;
  event.source_start = source_offset;
  event.source_length = source_length;
  event.argument0 = source_pointer;
  event.argument1 = source_offset;
  event.result0 = value;
  event.result1 = kind;
  // A parser unit is associated with the selected TextSlot only when the
  // source argument matched that occurrence's content.  A source pointer or
  // equal-looking string alone is not an occurrence bridge.
  if (occurrence.valid && occurrence.source_matches_occurrence &&
      occurrence.seq != 0u && occurrence.text_thread != 0u) {
    event.text_seq = occurrence.seq;
    event.text_thread_id = occurrence.text_thread;
    event.text_utf16_hash = occurrence.hash;
    event.text_utf16_length = occurrence.length;
    event.flags |= fushi_voice_hook::kLookupDiagnosticFlagHasOccurrence;
  }
  RecordLittleBustersLookupDiagnostic(event);
}

void ObserveLittleBustersParser(uint32_t index, uintptr_t entry_esp,
                                uintptr_t this_pointer) {
  uintptr_t args[kLbDiagnosticMaxMethodArgs] = {};
  const bool args_valid = ReadLittleBustersLookupArgs(
      entry_esp, args, kLbDiagnosticMaxMethodArgs);
  const uintptr_t source = args_valid ? args[0] : 0u;
  uint16_t units[kLbDiagnosticMaxTextUnits] = {};
  uint32_t length = 0u;
  uint64_t hash = 0u;
  const bool source_valid = ReadLittleBustersLookupWideText(
      source, units, &length, &hash);
  g_lb_lookup_diagnostic_parser_pending = {};
  if (source_valid) {
    g_lb_lookup_diagnostic_parser_pending =
        CaptureCurrentLittleBustersOccurrence();
    g_lb_lookup_diagnostic_parser_pending.ctext = this_pointer;
    g_lb_lookup_diagnostic_parser_pending.source = source;
    g_lb_lookup_diagnostic_parser_pending.source_hash = hash;
    g_lb_lookup_diagnostic_parser_pending.source_length = length;
    g_lb_lookup_diagnostic_parser_pending.source_matches_occurrence =
        g_lb_lookup_diagnostic_parser_pending.valid &&
        g_lb_lookup_diagnostic_parser_pending.hash == hash &&
        g_lb_lookup_diagnostic_parser_pending.length == length;
    if (!g_lb_lookup_diagnostic_parser_pending.valid) {
      RecordLittleBustersLookupReason(
          fushi_voice_hook::kLookupDiagnosticEventOccurrence,
          fushi_voice_hook::kLookupDiagnosticProbeP1Occurrence,
          fushi_voice_hook::kLbOccBridgeMiss,
          fushi_voice_hook::kLookupDiagnosticFlagFailure |
              fushi_voice_hook::kLookupDiagnosticFlagExplicitOccurrence,
          index,
          LittleBustersLookupDiagnosticModuleRva(
              LittleBustersLookupCallerReturn(entry_esp)), 0u, source, length,
          hash);
    } else if (!g_lb_lookup_diagnostic_parser_pending
                    .source_matches_occurrence) {
      RecordLittleBustersExplicitOccurrence(
          fushi_voice_hook::kLookupDiagnosticEventOccurrence,
          fushi_voice_hook::kLookupDiagnosticProbeP1Occurrence,
          fushi_voice_hook::kLbParserOccurrenceSourceMismatch,
          g_lb_lookup_diagnostic_parser_pending,
          fushi_voice_hook::kLookupDiagnosticFlagFailure,
          fushi_voice_hook::little_busters::kLittleBustersParserRva,
          LittleBustersLookupDiagnosticModuleRva(
              LittleBustersLookupCallerReturn(entry_esp)),
          source, hash, g_lb_lookup_diagnostic_parser_pending.hash, length);
    }
  }

  const uint32_t callsite = LittleBustersLookupDiagnosticModuleRva(
      LittleBustersLookupCallerReturn(entry_esp));
  RecordLittleBustersLookupReason(
      fushi_voice_hook::kLookupDiagnosticEventMapping,
      fushi_voice_hook::kLookupDiagnosticProbeP5Mapping,
      fushi_voice_hook::kLbParserCalled,
      fushi_voice_hook::kLookupDiagnosticFlagPre,
      fushi_voice_hook::little_busters::kLittleBustersParserRva, callsite, 0u,
      this_pointer, source, args_valid ? args[1] : 0u, 0u);
  LookupDiagnosticEvent source_event = {};
  source_event.event_kind = fushi_voice_hook::kLookupDiagnosticEventMapping;
  source_event.probe_id = fushi_voice_hook::kLookupDiagnosticProbeP5Mapping;
  source_event.reason_id = source_valid
                               ? fushi_voice_hook::kLbParserSourceCaptured
                               : fushi_voice_hook::kLbParserSourceMissing;
  source_event.flags = source_valid
                           ? fushi_voice_hook::kLookupDiagnosticFlagPost
                           : fushi_voice_hook::kLookupDiagnosticFlagFailure;
  source_event.flags |= fushi_voice_hook::kLookupDiagnosticFlagExplicitOccurrence;
  source_event.candidate_rva =
      fushi_voice_hook::little_busters::kLittleBustersParserRva;
  source_event.callsite_rva = callsite;
  source_event.source_start = 0u;
  source_event.source_length = source_valid ? length : 0u;
  source_event.argument0 = source;
  source_event.argument1 = this_pointer;
  source_event.result0 = hash;
  source_event.result1 = args_valid ? args[1] : 0u;
  if (g_lb_lookup_diagnostic_parser_pending.valid) {
    source_event.text_seq =
        g_lb_lookup_diagnostic_parser_pending.seq;
    source_event.text_thread_id =
        g_lb_lookup_diagnostic_parser_pending.text_thread;
    source_event.text_utf16_hash =
        g_lb_lookup_diagnostic_parser_pending.hash;
    source_event.text_utf16_length =
        g_lb_lookup_diagnostic_parser_pending.length;
    if (g_lb_lookup_diagnostic_parser_pending.seq != 0u &&
        g_lb_lookup_diagnostic_parser_pending.text_thread != 0u) {
      source_event.flags |= fushi_voice_hook::kLookupDiagnosticFlagHasOccurrence;
    }
  }
  RecordLittleBustersLookupDiagnostic(source_event);
  if (!source_valid) return;

  for (uint32_t offset = 0u; offset < length; ++offset) {
    const uint16_t value = units[offset];
    uint32_t kind = ClassifyLittleBustersParserUnit(value);
    uint32_t span = 1u;
    if (fushi_voice_hook::little_busters::IsLittleBustersHighSurrogate(value)) {
      if (offset + 1u < length &&
          fushi_voice_hook::little_busters::IsLittleBustersLowSurrogate(
              units[offset + 1u])) {
        kind = kLbParserSurrogatePair;
        span = 2u;
      } else {
        RecordLittleBustersLookupReason(
            fushi_voice_hook::kLookupDiagnosticEventMapping,
            fushi_voice_hook::kLookupDiagnosticProbeP5Mapping,
            fushi_voice_hook::kLbMapUtf16Split,
            fushi_voice_hook::kLookupDiagnosticFlagFailure,
            fushi_voice_hook::little_busters::kLittleBustersParserRva,
            callsite, 0u, offset, value);
      }
    } else if (fushi_voice_hook::little_busters::IsLittleBustersLowSurrogate(
                   value)) {
      RecordLittleBustersLookupReason(
          fushi_voice_hook::kLookupDiagnosticEventMapping,
          fushi_voice_hook::kLookupDiagnosticProbeP5Mapping,
          fushi_voice_hook::kLbMapUtf16Split,
          fushi_voice_hook::kLookupDiagnosticFlagFailure,
          fushi_voice_hook::little_busters::kLittleBustersParserRva, callsite,
          0u, offset, value);
    }
    if (kind != kLbParserPlain || offset < 8u || offset + 8u >= length) {
      RecordLittleBustersParserUnit(
          fushi_voice_hook::little_busters::kLittleBustersParserRva, source,
          offset, span, value, kind, g_lb_lookup_diagnostic_parser_pending);
    }
    if (span == 2u) ++offset;
  }
}

bool IsLittleBustersParserHandoffReturn(uint32_t caller_rva) {
  // F25630 is called at F255EB from inside F24D30.  The range includes the
  // parser's alternate branches but excludes unrelated callers.
  return caller_rva >= 0x00074D30u && caller_rva <= 0x00075620u;
}

struct LittleBustersCTextRecordSummary {
  bool line_count_ok = false;
  bool item_array_ok = false;
  uint32_t line_count = 0u;
  uintptr_t item_array = 0u;
  uintptr_t first_item = 0u;
  uintptr_t first_records = 0u;
  uint32_t first_item_record_count = 0u;
  uint32_t valid_item_count = 0u;
  uint32_t record_count = 0u;
};

LittleBustersCTextRecordSummary SnapshotLittleBustersCTextRecords(
    uintptr_t ctext) {
  LittleBustersCTextRecordSummary summary;
  if (ctext == 0u) return summary;
  summary.line_count_ok = ReadLittleBustersLookupU32(
      ctext + fushi_voice_hook::little_busters::
                  kLittleBustersCTextLineCountOffset,
      &summary.line_count);
  summary.item_array_ok = ReadLittleBustersLookupPointer(
      ctext + fushi_voice_hook::little_busters::
                  kLittleBustersCTextItemArrayOffset,
      &summary.item_array);
  if (!summary.line_count_ok || !summary.item_array_ok ||
      summary.item_array == 0u) {
    return summary;
  }
  const uint32_t line_limit =
      summary.line_count < kLbDiagnosticMaxHitItems
          ? summary.line_count
          : kLbDiagnosticMaxHitItems;
  for (uint32_t line = 0u; line < line_limit; ++line) {
    const uintptr_t item =
        summary.item_array +
        line * fushi_voice_hook::little_busters::kLittleBustersCTextItemStride;
    uint16_t native_count = 0u;
    uintptr_t records = 0u;
    if (!ReadLittleBustersLookupU16(
            item + fushi_voice_hook::little_busters::
                      kLittleBustersCTextItemCountOffset,
            &native_count) ||
        !ReadLittleBustersLookupPointer(
            item + fushi_voice_hook::little_busters::
                      kLittleBustersCTextItemRecordOffset,
            &records) ||
        native_count == 0u || native_count > kLbLookupMaxGlyphs ||
        records == 0u) {
      continue;
    }
    const uint32_t count = native_count;
    if (summary.first_item == 0u) {
      summary.first_item = item;
      summary.first_records = records;
      summary.first_item_record_count = count;
    }
    ++summary.valid_item_count;
    const uint32_t room = UINT32_MAX - summary.record_count;
    summary.record_count += count < room ? count : room;
  }
  return summary;
}

uint64_t EnsureLittleBustersActiveLayoutGeneration(
    uintptr_t ctext, const LittleBustersCTextRecordSummary& layout,
    const LittleBustersParserPending& occurrence) {
  if (!occurrence.valid || occurrence.seq == 0u ||
      occurrence.text_thread == 0u || layout.first_item == 0u ||
      layout.first_records == 0u || layout.first_item_record_count == 0u) {
    return 0u;
  }
  const bool same_layout =
      g_lb_lookup_active_layout_ctext.load(std::memory_order_relaxed) == ctext &&
      g_lb_lookup_active_layout_item.load(std::memory_order_relaxed) ==
          layout.first_item &&
      g_lb_lookup_active_layout_records.load(std::memory_order_relaxed) ==
          layout.first_records &&
      g_lb_lookup_active_layout_record_count.load(std::memory_order_relaxed) ==
          layout.first_item_record_count &&
      g_lb_lookup_active_layout_seq.load(std::memory_order_relaxed) ==
          occurrence.seq &&
      g_lb_lookup_active_layout_thread.load(std::memory_order_relaxed) ==
          occurrence.text_thread;
  uint64_t generation = g_lb_lookup_diagnostic_geometry_generation.load(
      std::memory_order_acquire);
  if (!same_layout || generation == 0u) {
    generation = g_lb_lookup_diagnostic_geometry_generation.fetch_add(
                     1u, std::memory_order_acq_rel) +
                 1u;
    g_lb_lookup_active_layout_ctext.store(ctext, std::memory_order_relaxed);
    g_lb_lookup_active_layout_item.store(layout.first_item,
                                          std::memory_order_relaxed);
    g_lb_lookup_active_layout_records.store(layout.first_records,
                                             std::memory_order_relaxed);
    g_lb_lookup_active_layout_record_count.store(
        layout.first_item_record_count, std::memory_order_relaxed);
    g_lb_lookup_active_layout_seq.store(occurrence.seq,
                                        std::memory_order_relaxed);
    g_lb_lookup_active_layout_thread.store(occurrence.text_thread,
                                           std::memory_order_relaxed);
  }
  return generation;
}

bool BuildLittleBustersLookupModel(
    uintptr_t ctext, const LittleBustersCTextRecordSummary& layout,
    const LittleBustersParserPending& occurrence) {
  // ctext/layout come from Luca's active cText item array.  The same builder
  // is used by the post-F25630 path and the live F2D580 update path; neither
  // uses the retired F2F360 receiver or any screenshot-derived transform.
  // Keep the source-span mapping tied to the exact TextSlot occurrence.
  if (!occurrence.valid || occurrence.seq == 0u ||
      occurrence.text_thread == 0u || layout.first_item == 0u ||
      layout.first_records == 0u || layout.first_item_record_count == 0u ||
      layout.first_item_record_count > kLbLookupMaxGlyphs ||
      layout.record_count == 0u || layout.record_count > kLbLookupMaxGlyphs) {
    RememberLittleBustersLookupModelFailure(
        1u, (static_cast<uint64_t>(layout.first_item_record_count) << 32) |
                static_cast<uint64_t>(layout.record_count));
    return false;
  }
  const HWND window =
      g_lb_lookup_diagnostic_window.load(std::memory_order_acquire);
  if (window == nullptr || !IsWindow(window)) {
    RememberLittleBustersLookupModelFailure(
        2u, reinterpret_cast<uintptr_t>(window));
    return false;
  }
  LittleBustersLookupViewSize view_size;
  if (!ReadLittleBustersLookupViewSize(window, &view_size)) {
    RememberLittleBustersLookupModelFailure(
        3u, reinterpret_cast<uintptr_t>(window));
    return false;
  }
  const int32_t view_w = view_size.width;
  const int32_t view_h = view_size.height;

  LittleBustersCTextLayoutRect ctext_rect;
  if (!ReadLittleBustersCTextLayoutRect(ctext, &ctext_rect)) {
    RememberLittleBustersLookupModelFailure(12u, ctext);
    return false;
  }
  LittleBustersLookupDesignSize design_size;
  if (!ReadLittleBustersLookupDesignSize(&design_size)) {
    RememberLittleBustersLookupModelFailure(13u);
    return false;
  }
  fushi_voice_hook::little_busters::LittleBustersLookupProjection projection;
  if (!fushi_voice_hook::little_busters::MakeLittleBustersLookupProjection(
          view_w, view_h, design_size.width, design_size.height,
          &projection)) {
    RememberLittleBustersLookupModelFailure(
        14u, (static_cast<uint64_t>(static_cast<uint32_t>(view_w)) << 32) |
                 static_cast<uint32_t>(view_h));
    return false;
  }

  uint16_t units[kLbDiagnosticMaxTextUnits] = {};
  uint32_t unit_count = 0u;
  uint64_t text_hash = 0u;
  if (!ReadLittleBustersLookupSlotByIdentity(
          occurrence.seq, occurrence.text_thread, units, &unit_count,
          &text_hash) ||
      unit_count != occurrence.length || text_hash != occurrence.hash ||
      unit_count >= kLbDiagnosticMaxTextUnits) {
    RememberLittleBustersLookupModelFailure(
        4u, (static_cast<uint64_t>(unit_count) << 32) |
                static_cast<uint32_t>(occurrence.length));
    return false;
  }

  LittleBustersLookupSourceCluster source_map[kLbLookupMaxGlyphs] = {};
  if (!BuildLittleBustersLookupSourceMap(
          units, unit_count, layout.record_count, source_map)) {
    RememberLittleBustersLookupModelFailure(
        5u, (static_cast<uint64_t>(unit_count) << 32) |
                layout.record_count);
    return false;
  }

  LittleBustersLookupModel model = {};
  model.text_seq = occurrence.seq;
  model.text_thread = occurrence.text_thread;
  model.geometry_generation =
      g_lb_lookup_diagnostic_geometry_generation.load(
          std::memory_order_acquire);
  model.hwnd = reinterpret_cast<uintptr_t>(window);
  model.view_w = view_w;
  model.view_h = view_h;
  model.char_count = unit_count;
  model.glyph_count = layout.record_count;
  if (model.geometry_generation == 0u) {
    RememberLittleBustersLookupModelFailure(6u);
    return false;
  }

  std::memcpy(model.line, units, unit_count * sizeof(uint16_t));

  uint32_t glyph_index = 0u;
  const uint32_t line_limit =
      layout.line_count < kLbDiagnosticMaxHitItems
          ? layout.line_count
          : kLbDiagnosticMaxHitItems;
  for (uint32_t line = 0u;
       line < line_limit && glyph_index < model.glyph_count; ++line) {
    const uintptr_t item =
        layout.item_array +
        static_cast<uintptr_t>(line) *
            fushi_voice_hook::little_busters::kLittleBustersCTextItemStride;
    uint16_t item_record_count = 0u;
    uintptr_t records = 0u;
    float item_origin_x = 0.0f;
    float item_origin_y = 0.0f;
    uint32_t item_line_offset_y = 0u;
    if (!ReadLittleBustersLookupU16(
            item + fushi_voice_hook::little_busters::
                      kLittleBustersCTextItemCountOffset,
            &item_record_count) ||
        !ReadLittleBustersLookupPointer(
            item + fushi_voice_hook::little_busters::
                      kLittleBustersCTextItemRecordOffset,
            &records)) {
      RememberLittleBustersLookupModelFailure(
          8u, (static_cast<uint64_t>(line) << 32) | item);
      return false;
    }
    if (item_record_count == 0u || records == 0u) continue;
    if (glyph_index + item_record_count > model.glyph_count) {
      RememberLittleBustersLookupModelFailure(
          8u, (static_cast<uint64_t>(glyph_index) << 32) | item_record_count);
      return false;
    }
    if (!ReadLittleBustersLookupF32(
            item + fushi_voice_hook::little_busters::
                      kLittleBustersCTextItemOriginXOffset,
            &item_origin_x) ||
        !ReadLittleBustersLookupF32(
            item + fushi_voice_hook::little_busters::
                      kLittleBustersCTextItemOriginYOffset,
            &item_origin_y) ||
        !ReadLittleBustersLookupU32(
            item + fushi_voice_hook::little_busters::
                      kLittleBustersCTextItemLineOffsetYOffset,
            &item_line_offset_y) ||
        !std::isfinite(item_origin_x) || !std::isfinite(item_origin_y) ||
        item_origin_x < -1048576.0f || item_origin_x > 1048576.0f ||
        item_origin_y < -1048576.0f || item_origin_y > 1048576.0f) {
      RememberLittleBustersLookupModelFailure(
          7u, (static_cast<uint64_t>(line) << 32) | item);
      return false;
    }
    // For a normal float x origin the raw bits are large (for example
    // 40.0f -> 0x42200000).  This hydrated Luca build instead stores a small
    // integer line delta at +14 for wrapped runs; the first run is zero and
    // the observed second run is 43px lower.  Preserve a genuine float x
    // origin when the field is not in the small integer range.
    const bool has_integer_line_offset = item_line_offset_y <= 4096u;
    const double item_origin_x_logical =
        has_integer_line_offset ? 0.0 : static_cast<double>(item_origin_x);
    const double item_origin_y_logical =
        static_cast<double>(item_origin_y) +
        (has_integer_line_offset ? static_cast<double>(item_line_offset_y)
                                 : 0.0);
    for (uint32_t index = 0u; index < item_record_count; ++index) {
      const uintptr_t record =
          records + static_cast<uintptr_t>(index) *
                        fushi_voice_hook::little_busters::
                            kLittleBustersCTextRecordStride;
      uint16_t native_codepoint = 0u;
      int16_t local_x = 0;
      int16_t width = 0;
      int16_t height = 0;
      if (!ReadLittleBustersLookupU16(
              record + fushi_voice_hook::little_busters::
                            kLittleBustersCTextRecordCodepointOffset,
              &native_codepoint) ||
          !ReadLittleBustersLookupI16(
              record + fushi_voice_hook::little_busters::
                            kLittleBustersCTextRecordXOffset,
              &local_x) ||
          !ReadLittleBustersLookupI16(
              record + fushi_voice_hook::little_busters::
                            kLittleBustersCTextRecordWidthOffset,
              &width) ||
          !ReadLittleBustersLookupI16(
              record + fushi_voice_hook::little_busters::
                            kLittleBustersCTextRecordHeightOffset,
              &height)) {
        RememberLittleBustersLookupModelFailure(
            8u, (static_cast<uint64_t>(glyph_index) << 32) | record);
        return false;
      }
      const LittleBustersLookupSourceCluster& source = source_map[glyph_index];
      if (source.start >= unit_count ||
          native_codepoint != units[source.start] || local_x < 0 || width <= 0 ||
          height <= 0) {
        const uint16_t source_codepoint =
            units[source.start < unit_count ? source.start : 0u];
        RememberLittleBustersLookupModelFailure(
            9u, (static_cast<uint64_t>(native_codepoint) << 48) |
                    (static_cast<uint64_t>(source_codepoint) << 32) |
                    (static_cast<uint64_t>(static_cast<uint16_t>(local_x)) <<
                     16) |
                    static_cast<uint16_t>(width));
        return false;
      }
      const auto inspection =
          fushi_voice_hook::little_busters::InspectLittleBustersUtf16Span(
              units, unit_count, source.start, source.length);
      if (!inspection.utf16_valid || !inspection.source_span_valid ||
          inspection.markup_unknown) {
        RememberLittleBustersLookupModelFailure(
            10u, (static_cast<uint64_t>(glyph_index) << 32) | source.start);
        return false;
      }
      // The record's x is local to its cText item.  Its +08/+0a pair is
      // renderer/atlas data, not a second corner.  Add the cText outer origin
      // in the logical design domain, then project the complete glyph rect to
      // client physical pixels.  Item y includes the wrapped-run delta above.
      const double logical_x = ctext_rect.origin_x + item_origin_x_logical +
                               static_cast<double>(local_x);
      const double logical_y = item_origin_y_logical;
      int32_t x = 0;
      int32_t y = 0;
      int32_t projected_width = 0;
      int32_t projected_height = 0;
      if (!fushi_voice_hook::little_busters::
              ProjectLittleBustersLogicalRectToClient(
                  logical_x, logical_y, width, height, projection, &x, &y,
                  &projected_width, &projected_height)) {
        RememberLittleBustersLookupModelFailure(
            11u, (static_cast<uint64_t>(static_cast<uint32_t>(line)) << 48) |
                    (static_cast<uint64_t>(static_cast<uint16_t>(local_x)) <<
                     32) |
                    (static_cast<uint64_t>(static_cast<uint16_t>(width)) <<
                     16) |
                    static_cast<uint16_t>(height));
        return false;
      }
      LittleBustersLookupGlyph& glyph = model.glyphs[glyph_index++];
      glyph.char_index = source.start;
      glyph.source_length = source.length;
      glyph.x = x;
      glyph.y = y;
      glyph.w = projected_width;
      glyph.h = projected_height;
    }
  }
  if (glyph_index != model.glyph_count) {
    RememberLittleBustersLookupModelFailure(
        8u, (static_cast<uint64_t>(glyph_index) << 32) | model.glyph_count);
    return false;
  }
  model.valid = true;
  PublishLittleBustersLookupModel(model);
  return true;
}

void RetryLittleBustersLookupModelFromActiveLayout() {
  // F2D580 is the normal producer notification, but its first callback can
  // observe the cText object before the parent rectangle has been populated.
  // Keep the active layout as the source of truth and retry on the regular
  // game-thread poll until the same text has a complete, usable model.
  if (g_header == nullptr ||
      fushi_voice_hook::AtomicLoadShared32(&g_header->lookup_enabled) == 0u ||
      g_lb_lookup_diagnostic_install.load(std::memory_order_acquire) != 2) {
    return;
  }
  const uintptr_t ctext =
      g_lb_lookup_active_layout_ctext.load(std::memory_order_acquire);
  if (ctext == 0u) return;

  const LittleBustersCTextRecordSummary layout =
      SnapshotLittleBustersCTextRecords(ctext);
  const LittleBustersParserPending occurrence =
      CapturePublishedLittleBustersOccurrence();
  if (!occurrence.valid || occurrence.seq == 0u ||
      occurrence.text_thread == 0u || layout.first_item == 0u ||
      layout.first_records == 0u || layout.first_item_record_count == 0u ||
      layout.record_count == 0u) {
    return;
  }

  const uint64_t generation =
      EnsureLittleBustersActiveLayoutGeneration(ctext, layout, occurrence);
  if (generation == 0u) return;

  const HWND window =
      g_lb_lookup_diagnostic_window.load(std::memory_order_acquire);
  LittleBustersLookupViewSize view_size;
  LittleBustersLookupModel current = {};
  if (window != nullptr && ReadLittleBustersLookupViewSize(window, &view_size) &&
      ReadLittleBustersLookupModel(&current) && current.valid &&
      current.text_seq == occurrence.seq &&
      current.text_thread == occurrence.text_thread &&
      current.geometry_generation == generation &&
      current.hwnd == reinterpret_cast<uintptr_t>(window) &&
      current.view_w == view_size.width && current.view_h == view_size.height) {
    return;
  }
  (void)BuildLittleBustersLookupModel(ctext, layout, occurrence);
}

bool LittleBustersLookupModelReady() {
  LittleBustersLookupModel model = {};
  return ReadLittleBustersLookupModel(&model);
}

bool LittleBustersLookupSensorLive() {
  return IsLittleBustersProfileMatched() &&
         g_lb_lookup_diagnostic_install.load(std::memory_order_acquire) == 2 &&
         g_lb_lookup_diagnostic_wndproc_state.load(
             std::memory_order_acquire) == 4u;
}

fushi_voice_hook::LookupAdmissionReport LittleBustersLookupAdmission() {
  fushi_voice_hook::LookupAdmissionReport report;
  report.state = LittleBustersLookupSensorLive()
                     ? fushi_voice_hook::kLookupAdmissionSensorInstalled
                     : fushi_voice_hook::kLookupAdmissionIdentityAccepted;
  return report;
}

void BeginLittleBustersLayout(uintptr_t ctext, uintptr_t caller_return,
                              uintptr_t argument0, uintptr_t argument1) {
  const LittleBustersCTextRecordSummary before =
      SnapshotLittleBustersCTextRecords(ctext);
  g_lb_lookup_diagnostic_layout_pre_item.store(
      before.first_item, std::memory_order_relaxed);
  g_lb_lookup_diagnostic_layout_pre_records.store(
      before.first_records, std::memory_order_relaxed);
  g_lb_lookup_diagnostic_layout_pre_record_count.store(
      before.record_count, std::memory_order_relaxed);
  g_lb_lookup_diagnostic_layout_pre_line_count.store(
      before.line_count, std::memory_order_relaxed);
  uint32_t command_count = 0u;
  uintptr_t command_buffer = 0u;
  const uintptr_t base = g_lb_lookup_diagnostic_module_base;
  if (base != 0u) {
    ReadLittleBustersLookupU32(
        base + fushi_voice_hook::little_busters::
            kLittleBustersRenderCommandCountGlobalRva,
        &command_count);
    ReadLittleBustersLookupPointer(
        base + fushi_voice_hook::little_busters::
            kLittleBustersRenderCommandBufferGlobalRva,
        &command_buffer);
  }
  g_lb_lookup_diagnostic_layout_pre_command_count.store(
      command_count, std::memory_order_relaxed);
  g_lb_lookup_diagnostic_layout_pre_command_buffer.store(
      command_buffer, std::memory_order_relaxed);
  const uint64_t generation =
      g_lb_lookup_diagnostic_geometry_generation.fetch_add(
          1u, std::memory_order_relaxed) +
      1u;
  const uint32_t caller_rva =
      LittleBustersLookupDiagnosticModuleRva(caller_return);
  const LittleBustersParserPending pending =
      g_lb_lookup_diagnostic_parser_pending;
  const uint64_t current_seq = g_lb_lookup_diagnostic_occ_seq.load(
      std::memory_order_relaxed);
  const uint64_t current_thread = g_lb_lookup_diagnostic_occ_thread.load(
      std::memory_order_relaxed);
  const bool handoff = pending.valid && pending.ctext == ctext &&
                       pending.source_matches_occurrence &&
                       pending.seq == current_seq &&
                       pending.text_thread == current_thread &&
                       pending.thread_id == GetCurrentThreadId() &&
                       IsLittleBustersParserHandoffReturn(caller_rva);
  g_lb_lookup_diagnostic_layout_handoff.store(handoff,
                                              std::memory_order_relaxed);
  g_lb_lookup_diagnostic_layout_occ_seq.store(
      handoff ? pending.seq : 0u, std::memory_order_relaxed);
  g_lb_lookup_diagnostic_layout_occ_thread.store(
      handoff ? pending.text_thread : 0u, std::memory_order_relaxed);
  g_lb_lookup_diagnostic_layout_ctext.store(ctext, std::memory_order_relaxed);
  g_lb_lookup_diagnostic_layout_item.store(0u, std::memory_order_relaxed);
  g_lb_lookup_diagnostic_layout_record.store(0u, std::memory_order_relaxed);
  g_lb_lookup_diagnostic_layout_record_count.store(0u,
                                                   std::memory_order_relaxed);
  g_lb_lookup_diagnostic_record_snapshot_generation.store(
      0u, std::memory_order_relaxed);
  g_lb_lookup_diagnostic_record_snapshot_item.store(
      0u, std::memory_order_relaxed);
  g_lb_lookup_diagnostic_record_snapshot_records.store(
      0u, std::memory_order_relaxed);
  g_lb_lookup_diagnostic_record_snapshot_record_count.store(
      0u, std::memory_order_relaxed);
  g_lb_lookup_diagnostic_record_snapshot_count.store(
      0u, std::memory_order_relaxed);
  g_lb_lookup_diagnostic_record_call_pre_item.store(
      0u, std::memory_order_relaxed);
  g_lb_lookup_diagnostic_record_call_pre_records.store(
      0u, std::memory_order_relaxed);
  g_lb_lookup_diagnostic_record_call_pre_count.store(
      0u, std::memory_order_relaxed);
  g_lb_lookup_diagnostic_render_call_pre_count.store(
      0u, std::memory_order_relaxed);
  g_lb_lookup_diagnostic_render_call_pre_buffer.store(
      0u, std::memory_order_relaxed);
  g_lb_lookup_diagnostic_render_snapshot_generation.store(
      0u, std::memory_order_relaxed);
  g_lb_lookup_diagnostic_render_snapshot_start.store(
      0u, std::memory_order_relaxed);
  g_lb_lookup_diagnostic_render_snapshot_end.store(
      0u, std::memory_order_relaxed);
  g_lb_lookup_diagnostic_render_snapshot_buffer.store(
      0u, std::memory_order_relaxed);
  g_lb_lookup_diagnostic_render_snapshot_count.store(
      0u, std::memory_order_relaxed);
  g_lb_lookup_diagnostic_last_render_candidate.store(
      0u, std::memory_order_relaxed);
  g_lb_lookup_diagnostic_last_render_callsite.store(
      0u, std::memory_order_relaxed);
  g_lb_lookup_diagnostic_draw_event_generation.store(
      0u, std::memory_order_relaxed);
  g_lb_lookup_diagnostic_draw_event_candidate.store(
      0u, std::memory_order_relaxed);
  g_lb_lookup_diagnostic_draw_failure_reported.store(
      false, std::memory_order_relaxed);
  g_lb_lookup_diagnostic_draw_only_reported.store(
      false, std::memory_order_relaxed);
  g_lb_lookup_diagnostic_texture_unobserved_reported.store(
      false, std::memory_order_relaxed);
  g_lb_lookup_diagnostic_layout_record_seen.store(false,
                                                  std::memory_order_relaxed);
  g_lb_lookup_diagnostic_layout_draw_seen.store(false,
                                                std::memory_order_relaxed);
  g_lb_lookup_diagnostic_layout_sealed.store(false, std::memory_order_relaxed);
  g_lb_lookup_diagnostic_layout_not_sealed_reported.store(
      false, std::memory_order_relaxed);
  g_lb_lookup_diagnostic_layout_begin_tick.store(GetTickCount64(),
                                                 std::memory_order_relaxed);

  const uint32_t line_count = before.line_count;
  const uintptr_t item_array = before.item_array;
  const bool line_ok = before.line_count_ok;
  const bool item_ok = before.item_array_ok;
  const uint32_t flags = fushi_voice_hook::kLookupDiagnosticFlagPre;
  if (handoff) {
    RecordLittleBustersExplicitOccurrence(
        fushi_voice_hook::kLookupDiagnosticEventOccurrence,
        fushi_voice_hook::kLookupDiagnosticProbeP1Occurrence,
        fushi_voice_hook::kLbParserHandoffRecord, pending, flags,
        fushi_voice_hook::little_busters::kLittleBustersParserHandoffRva,
        caller_rva, ctext, item_array, line_count, argument0);
  } else {
    LittleBustersParserPending no_handoff;
    RecordLittleBustersExplicitOccurrence(
        fushi_voice_hook::kLookupDiagnosticEventOccurrence,
        fushi_voice_hook::kLookupDiagnosticProbeP1Occurrence,
        fushi_voice_hook::kLbParserHandoffMiss,
        no_handoff, fushi_voice_hook::kLookupDiagnosticFlagFailure,
        fushi_voice_hook::little_busters::kLittleBustersParserHandoffRva,
        caller_rva, ctext, item_array, line_count, argument0);
  }
  RecordLittleBustersLayoutContextEvent(
      fushi_voice_hook::kLbLayoutBegin, flags,
      fushi_voice_hook::little_busters::kLittleBustersParserHandoffRva,
      caller_rva, ctext, item_array, line_ok ? line_count : 0u,
      item_ok ? 1u : 0u);
  if (!line_ok || !item_ok || item_array == 0u) {
    RecordLittleBustersLayoutContextEvent(
        fushi_voice_hook::kLbLayoutPartial,
        fushi_voice_hook::kLookupDiagnosticFlagFailure,
        fushi_voice_hook::little_busters::kLittleBustersParserHandoffRva,
        caller_rva, ctext, item_array, line_count, item_ok ? 1u : 0u);
  }
  g_lb_lookup_diagnostic_transform_reported.store(0u,
                                                   std::memory_order_relaxed);
}

void CaptureLittleBustersTransformState(uint32_t candidate_rva,
                                        uint32_t callsite_rva,
                                        uintptr_t object_pointer = 0u) {
  const uintptr_t base = g_lb_lookup_diagnostic_module_base;
  uint32_t scale_x = 0u;
  uint32_t scale_y = 0u;
  const bool engine_x = ReadLittleBustersLookupU32(
      base + fushi_voice_hook::little_busters::
                kLittleBustersEngineScaleXGlobalRva,
      &scale_x);
  const bool engine_y = ReadLittleBustersLookupU32(
      base + fushi_voice_hook::little_busters::
                kLittleBustersEngineScaleYGlobalRva,
      &scale_y);
  uintptr_t display_context = 0u;
  const bool context_ok = ReadLittleBustersLookupPointer(
      base + fushi_voice_hook::little_busters::
                kLittleBustersDisplayContextGlobalRva,
      &display_context);
  uint32_t display_divisor_x = 0u;
  uint32_t display_divisor_y = 0u;
  const bool display_divisor_x_ok =
      context_ok && display_context != 0u &&
      ReadLittleBustersLookupU32(
          display_context + fushi_voice_hook::little_busters::
              kLittleBustersDisplayContextDivisorXOffset,
          &display_divisor_x);
  const bool display_divisor_y_ok =
      context_ok && display_context != 0u &&
      ReadLittleBustersLookupU32(
          display_context + fushi_voice_hook::little_busters::
              kLittleBustersDisplayContextDivisorYOffset,
          &display_divisor_y);
  const bool display_divisors_ok =
      display_divisor_x_ok && display_divisor_y_ok && display_divisor_x != 0u &&
      display_divisor_y != 0u;

  uint32_t resource_origin = 0u;
  uint32_t resource_scale = 0u;
  uint32_t resource_rect[4] = {};
  uint32_t resource_computed_x = 0u;
  uint32_t resource_computed_y = 0u;
  bool resource_origin_ok = false;
  bool resource_scale_ok = false;
  bool resource_rect_ok = false;
  bool resource_computed_ok = false;
  if (object_pointer != 0u) {
    resource_origin_ok = ReadLittleBustersLookupU32(
        object_pointer + fushi_voice_hook::little_busters::
            kLittleBustersResourceOriginOffset,
        &resource_origin);
    resource_scale_ok = ReadLittleBustersLookupU32(
        object_pointer + fushi_voice_hook::little_busters::
            kLittleBustersResourceScaleOffset,
        &resource_scale);
    resource_rect_ok = true;
    for (uint32_t index = 0u; index < _countof(resource_rect); ++index) {
      resource_rect_ok = ReadLittleBustersLookupU32(
                             object_pointer + fushi_voice_hook::little_busters::
                                 kLittleBustersResourceRectOffset +
                                 index * sizeof(uint32_t),
                             &resource_rect[index]) &&
                         resource_rect_ok;
    }
    resource_computed_ok =
        ReadLittleBustersLookupU32(
            object_pointer + fushi_voice_hook::little_busters::
                kLittleBustersResourceComputedXOffset,
            &resource_computed_x) &&
        ReadLittleBustersLookupU32(
            object_pointer + fushi_voice_hook::little_busters::
                kLittleBustersResourceComputedYOffset,
            &resource_computed_y);
  }
  const bool layer_state_ok = object_pointer != 0u && resource_origin_ok &&
                              resource_scale_ok && resource_rect_ok;
  const HWND window =
      g_lb_lookup_diagnostic_window.load(std::memory_order_relaxed);
  const LONG client_w = g_lb_lookup_diagnostic_client_w.load(
      std::memory_order_relaxed);
  const LONG client_h = g_lb_lookup_diagnostic_client_h.load(
      std::memory_order_relaxed);
  uint32_t transform_flags = 0u;
  if (engine_x && engine_y) {
    transform_flags |= fushi_voice_hook::kLookupDiagnosticTransformEngineScale;
  }
  if (context_ok && display_context != 0u) {
    transform_flags |= fushi_voice_hook::kLookupDiagnosticTransformDisplayContext;
  }
  if (layer_state_ok) transform_flags |=
      fushi_voice_hook::kLookupDiagnosticTransformLayerOrigin;
  if (window != nullptr) transform_flags |=
      fushi_voice_hook::kLookupDiagnosticTransformClientRect;

  const uint64_t packed_scale = (static_cast<uint64_t>(scale_x) << 32) | scale_y;
  const uint64_t packed_display_divisors =
      (static_cast<uint64_t>(display_divisor_x) << 32) | display_divisor_y;
  const uint64_t generation =
      g_lb_lookup_diagnostic_geometry_generation.load(
          std::memory_order_relaxed);
  const uint64_t previous_generation =
      g_lb_lookup_diagnostic_transform_event_generation.load(
          std::memory_order_relaxed);
  const uint32_t previous_candidate =
      g_lb_lookup_diagnostic_transform_event_candidate.load(
          std::memory_order_relaxed);
  const bool new_transform_snapshot = previous_generation != generation ||
                                      previous_candidate != candidate_rva;
  if (new_transform_snapshot) {
    g_lb_lookup_diagnostic_transform_event_generation.store(
        generation, std::memory_order_relaxed);
    g_lb_lookup_diagnostic_transform_event_candidate.store(
        candidate_rva, std::memory_order_relaxed);
    LookupDiagnosticEvent state = {};
    state.event_kind = fushi_voice_hook::kLookupDiagnosticEventTransform;
    state.probe_id = fushi_voice_hook::kLookupDiagnosticProbeP6Transform;
    state.reason_id = fushi_voice_hook::kLbXformEngineState;
    state.flags = fushi_voice_hook::kLookupDiagnosticFlagPost |
                  fushi_voice_hook::kLookupDiagnosticFlagExplicitOccurrence;
    state.candidate_rva = candidate_rva;
    state.callsite_rva = callsite_rva;
    // The recovered fields are raw engine/display state, not a proven mapping
    // from cText records to client pixels.  Keep the space unknown until a
    // future runtime observation proves the intervening layer semantics.
    state.coordinate_space =
        fushi_voice_hook::kLookupDiagnosticCoordinateUnknown;
    state.transform_flags = transform_flags;
    state.hwnd = reinterpret_cast<uintptr_t>(window);
    state.client_w = client_w;
    state.client_h = client_h;
    state.argument0 = display_context;
    state.argument1 = packed_scale;
    // +0x9A4/+0x9A8 are scalar divisors observed in the hydrated code, not
    // pointers.  Keep them in raw result fields and leave viewport/design
    // dimensions unset until a real producer is found.
    state.result0 = packed_display_divisors;
    state.result1 = object_pointer;
    state.transform_flags |= display_divisors_ok
                                 ? fushi_voice_hook::
                                       kLookupDiagnosticTransformDisplayContext
                                 : 0u;
    RecordLittleBustersLookupDiagnostic(state);
  }

  auto report_once = [&](uint32_t bit, uint32_t reason, uint32_t flags) {
    const uint32_t previous = g_lb_lookup_diagnostic_transform_reported.load(
        std::memory_order_relaxed);
    if ((previous & bit) != 0u ||
        g_lb_lookup_diagnostic_transform_reported.fetch_or(
            bit, std::memory_order_relaxed) & bit) {
      return;
    }
    RecordLittleBustersLookupReason(
        fushi_voice_hook::kLookupDiagnosticEventTransform,
        fushi_voice_hook::kLookupDiagnosticProbeP6Transform, reason, flags,
        candidate_rva, callsite_rva, 0u, display_context,
        packed_display_divisors, object_pointer, packed_scale);
  };
  if (window == nullptr) {
    report_once(0x0001u, fushi_voice_hook::kLbXformHwndMissing,
                fushi_voice_hook::kLookupDiagnosticFlagFailure);
  } else if (client_w <= 0 || client_h <= 0) {
    report_once(0x0002u, fushi_voice_hook::kLbXformClientMissing,
                fushi_voice_hook::kLookupDiagnosticFlagFailure);
  }
  if (!engine_x || !engine_y) {
    report_once(0x0004u, fushi_voice_hook::kLbXformEngineMissing,
                fushi_voice_hook::kLookupDiagnosticFlagFailure);
  }
  if (object_pointer == 0u || !layer_state_ok) {
    report_once(0x0008u, fushi_voice_hook::kLbXformLayerMissing,
                fushi_voice_hook::kLookupDiagnosticFlagFailure);
  }
  // Task 4 recovered the layer/display context and scale reads, but no
  // concrete design-size fields or layout->client projection matrix.  Keep
  // those as separate failures rather than promoting raw pointers to a
  // usable transform.
  report_once(0x0010u, fushi_voice_hook::kLbXformDesignMissing,
              fushi_voice_hook::kLookupDiagnosticFlagFailure);
  if (!display_divisors_ok) {
    report_once(0x0020u, fushi_voice_hook::kLbXformViewportMissing,
                fushi_voice_hook::kLookupDiagnosticFlagFailure);
  } else {
    // The fields participate in the engine's scale/division arithmetic, but
    // static evidence does not prove that they are the final viewport size.
    report_once(0x0200u, fushi_voice_hook::kLbXformViewportUnproven,
                fushi_voice_hook::kLookupDiagnosticFlagFailure);
  }
  // Task 4 found no hydrated D3D viewport/render-target callsite or matrix
  // producer.  These explicit UNOBSERVED reasons are intentionally separate
  // from an engine state that was observed to be absent.
  report_once(0x1000u, fushi_voice_hook::kLbXformViewportUnobserved,
              fushi_voice_hook::kLookupDiagnosticFlagFailure);
  report_once(0x0400u, fushi_voice_hook::kLbXformSpaceUnknown,
              fushi_voice_hook::kLookupDiagnosticFlagFailure);
  report_once(0x0800u, fushi_voice_hook::kLbXformRenderTargetMissing,
              fushi_voice_hook::kLookupDiagnosticFlagFailure);
  report_once(0x2000u, fushi_voice_hook::kLbXformRenderTargetUnobserved,
              fushi_voice_hook::kLookupDiagnosticFlagFailure);
  report_once(0x0040u, fushi_voice_hook::kLbXformProjectionMissing,
              fushi_voice_hook::kLookupDiagnosticFlagFailure);
  report_once(0x4000u, fushi_voice_hook::kLbXformProjectionUnobserved,
              fushi_voice_hook::kLookupDiagnosticFlagFailure);

  if (window != nullptr && client_w > 0 && client_h > 0) {
    POINT point = {0, 0};
    const bool roundtrip = ClientToScreen(window, &point) != FALSE &&
                           ScreenToClient(window, &point) != FALSE &&
                           point.x == 0 && point.y == 0;
    if (roundtrip) {
      report_once(0x0080u, fushi_voice_hook::kLbXformRoundtripOk, 0u);
    } else {
      report_once(0x0100u, fushi_voice_hook::kLbXformRoundtripFail,
                  fushi_voice_hook::kLookupDiagnosticFlagFailure);
      }
  }

  // F03600/F03F10/F040C0 operate on a resource/layer object whose hydrated
  // fields were visible in Task 4 at +0x440, +0x44C and +0x450..+0x45C.
  // Preserve their raw 32-bit values only; their scalar type and semantic
  // units are not proven, so none is promoted to a production transform.
  if (object_pointer != 0u &&
      (resource_origin_ok || resource_scale_ok || resource_rect_ok)) {
    LookupDiagnosticEvent resource = {};
    resource.event_kind = fushi_voice_hook::kLookupDiagnosticEventTransform;
    resource.probe_id = fushi_voice_hook::kLookupDiagnosticProbeP6Transform;
    resource.reason_id = fushi_voice_hook::kLbXformEngineState;
    resource.flags = fushi_voice_hook::kLookupDiagnosticFlagPost;
    resource.candidate_rva = candidate_rva;
    resource.callsite_rva = callsite_rva;
    resource.coordinate_space =
        fushi_voice_hook::kLookupDiagnosticCoordinateUnknown;
    resource.argument0 = object_pointer;
    resource.argument1 =
        (static_cast<uint64_t>(resource_origin) << 32) | resource_scale;
    resource.result0 =
        (static_cast<uint64_t>(resource_rect[0]) << 32) | resource_rect[1];
    resource.result1 =
        (static_cast<uint64_t>(resource_rect[2]) << 32) | resource_rect[3];
    RecordLittleBustersLookupDiagnostic(resource);
    if (resource_computed_ok) {
      LookupDiagnosticEvent raw_layer = {};
      raw_layer.event_kind = fushi_voice_hook::kLookupDiagnosticEventTransform;
      raw_layer.probe_id = fushi_voice_hook::kLookupDiagnosticProbeP6Transform;
      raw_layer.reason_id = fushi_voice_hook::kLbXformLayerStateRaw;
      raw_layer.flags = fushi_voice_hook::kLookupDiagnosticFlagPost;
      raw_layer.candidate_rva = candidate_rva;
      raw_layer.callsite_rva = callsite_rva;
      raw_layer.coordinate_space =
          fushi_voice_hook::kLookupDiagnosticCoordinateEngineLayer;
      raw_layer.argument0 = object_pointer;
      raw_layer.argument1 =
          (static_cast<uint64_t>(resource_origin) << 32) | resource_scale;
      raw_layer.result0 =
          (static_cast<uint64_t>(resource_rect[0]) << 32) | resource_rect[1];
      raw_layer.result1 =
          (static_cast<uint64_t>(resource_computed_x) << 32) |
          resource_computed_y;
      RecordLittleBustersLookupDiagnostic(raw_layer);
    }
  }
}

void ObserveLittleBustersF25630(uint32_t index, uintptr_t entry_esp,
                                uintptr_t this_pointer) {
  const uintptr_t caller = LittleBustersLookupCallerReturn(entry_esp);
  uintptr_t args[kLbDiagnosticMaxMethodArgs] = {};
  const bool args_valid = ReadLittleBustersLookupArgs(
      entry_esp, args, kLbDiagnosticMaxMethodArgs);
  BeginLittleBustersLayout(this_pointer, caller, args_valid ? args[0] : 0u,
                           args_valid ? args[1] : 0u);
  CaptureLittleBustersTransformState(
      fushi_voice_hook::little_busters::kLittleBustersParserHandoffRva,
      LittleBustersLookupDiagnosticModuleRva(caller));
  (void)index;
}

void ObserveLittleBustersF25630Post(uintptr_t ctext, uintptr_t caller_return,
                                    uintptr_t argument0,
                                    uintptr_t argument1) {
  const uint32_t callsite =
      LittleBustersLookupDiagnosticModuleRva(caller_return);
  const LittleBustersCTextRecordSummary after =
      SnapshotLittleBustersCTextRecords(ctext);
  const uint32_t before_record_count =
      g_lb_lookup_diagnostic_layout_pre_record_count.load(
          std::memory_order_relaxed);
  const uintptr_t before_item = g_lb_lookup_diagnostic_layout_pre_item.load(
      std::memory_order_relaxed);
  const uintptr_t before_records =
      g_lb_lookup_diagnostic_layout_pre_records.load(
          std::memory_order_relaxed);
  const bool post_has_records = after.record_count != 0u;
  const bool state_changed =
      before_item != after.first_item || before_records != after.first_records ||
      before_record_count != after.record_count ||
      g_lb_lookup_diagnostic_layout_pre_line_count.load(
          std::memory_order_relaxed) != after.line_count;
  const bool handoff = g_lb_lookup_diagnostic_layout_handoff.load(
      std::memory_order_relaxed);
  LittleBustersParserPending occurrence;
  occurrence.valid = handoff;
  occurrence.seq = g_lb_lookup_diagnostic_layout_occ_seq.load(
      std::memory_order_relaxed);
  occurrence.text_thread = g_lb_lookup_diagnostic_layout_occ_thread.load(
      std::memory_order_relaxed);
  occurrence.hash = g_lb_lookup_diagnostic_occ_hash.load(
      std::memory_order_relaxed);
  occurrence.length = g_lb_lookup_diagnostic_occ_length.load(
      std::memory_order_relaxed);

  // This event is the post-call boundary: it proves whether F25630 returned
  // with an item/record array, without pretending that record+0x0E is a
  // source index.  A zero occurrence pair is intentional when the direct
  // F24D30 -> F25630 bridge was not admitted.
  RecordLittleBustersExplicitOccurrence(
      fushi_voice_hook::kLookupDiagnosticEventOccurrence,
      fushi_voice_hook::kLookupDiagnosticProbeP1Occurrence,
      fushi_voice_hook::kLbParserHandoffPost, occurrence,
      fushi_voice_hook::kLookupDiagnosticFlagPost,
      fushi_voice_hook::little_busters::kLittleBustersParserHandoffRva,
      callsite, ctext, after.item_array, argument0,
      (static_cast<uint64_t>(before_record_count) << 32) |
          after.record_count);

  RecordLittleBustersLayoutContextEvent(
      fushi_voice_hook::kLbLayoutPostcall,
      fushi_voice_hook::kLookupDiagnosticFlagPost,
      fushi_voice_hook::little_busters::kLittleBustersParserHandoffRva,
      callsite, ctext, after.item_array,
      (static_cast<uint64_t>(after.valid_item_count) << 32) |
          after.record_count,
      (static_cast<uint64_t>(before_item != 0u ? 1u : 0u) << 32) |
          (state_changed ? 1u : 0u));

  // F25630 advances the geometry generation even when it is rebuilding a
  // non-dialogue cText.  Retire the previous model at this boundary, then
  // publish a new one only for the same parser occurrence and a complete,
  // client-domain record set.
  ClearLittleBustersLookupModel();
  if (handoff && post_has_records) {
    g_lb_lookup_diagnostic_layout_item.store(after.first_item,
                                              std::memory_order_relaxed);
    g_lb_lookup_diagnostic_layout_record.store(after.first_records,
                                                std::memory_order_relaxed);
    g_lb_lookup_diagnostic_layout_record_count.store(
        after.first_item_record_count, std::memory_order_relaxed);
    RecordLittleBustersExplicitOccurrence(
        fushi_voice_hook::kLookupDiagnosticEventLayout,
        fushi_voice_hook::kLookupDiagnosticProbeP4Layout,
        fushi_voice_hook::kLbProducerRecordObserved, occurrence,
        fushi_voice_hook::kLookupDiagnosticFlagPost,
        fushi_voice_hook::little_busters::kLittleBustersParserHandoffRva,
        callsite, after.first_item, after.first_records,
        after.first_item_record_count, after.record_count);
    // The producer relation is now observed, but no source span is present in
    // the recovered record fields.  Keep this as an explicit unresolved
    // mapping rather than assigning the opaque interactive key as an index.
    RecordLittleBustersExplicitOccurrence(
        fushi_voice_hook::kLookupDiagnosticEventMapping,
        fushi_voice_hook::kLookupDiagnosticProbeP5Mapping,
        fushi_voice_hook::kLbRecordSourceSpanUnproven, occurrence,
        fushi_voice_hook::kLookupDiagnosticFlagFailure |
            fushi_voice_hook::kLookupDiagnosticFlagPost,
        fushi_voice_hook::little_busters::kLittleBustersParserHandoffRva,
        callsite, after.first_records, after.record_count,
        UINT32_MAX, UINT32_MAX);
    (void)BuildLittleBustersLookupModel(ctext, after, occurrence);
  } else if (handoff) {
    RecordLittleBustersExplicitOccurrence(
        fushi_voice_hook::kLookupDiagnosticEventLayout,
        fushi_voice_hook::kLookupDiagnosticProbeP4Layout,
        fushi_voice_hook::kLbProducerHandoffNoRecord, occurrence,
        fushi_voice_hook::kLookupDiagnosticFlagFailure |
            fushi_voice_hook::kLookupDiagnosticFlagPost,
        fushi_voice_hook::little_busters::kLittleBustersParserHandoffRva,
        callsite, ctext, after.item_array, after.line_count,
        after.valid_item_count);
  } else if (post_has_records &&
             g_lb_lookup_diagnostic_parser_pending.valid &&
             g_lb_lookup_diagnostic_parser_pending.ctext == ctext &&
             g_lb_lookup_diagnostic_parser_pending
                 .source_matches_occurrence) {
    // A source-bearing pending parser call exists for this cText, but the
    // direct-call admission did not match.  This is the specific observer /
    // callsite-range failure, not a source-missing claim.
    RecordLittleBustersLookupReason(
        fushi_voice_hook::kLookupDiagnosticEventLayout,
        fushi_voice_hook::kLookupDiagnosticProbeP4Layout,
        fushi_voice_hook::kLbProducerHandoffObserverMissed,
        fushi_voice_hook::kLookupDiagnosticFlagFailure |
            fushi_voice_hook::kLookupDiagnosticFlagPost,
        fushi_voice_hook::little_busters::kLittleBustersParserHandoffRva,
        callsite, 0u, ctext, after.first_records, after.record_count);
  } else if (g_lb_lookup_diagnostic_parser_pending.valid &&
             g_lb_lookup_diagnostic_parser_pending.ctext == ctext &&
             g_lb_lookup_diagnostic_parser_pending
                 .source_matches_occurrence) {
    RecordLittleBustersLookupReason(
        fushi_voice_hook::kLookupDiagnosticEventLayout,
        fushi_voice_hook::kLookupDiagnosticProbeP4Layout,
        fushi_voice_hook::kLbProducerHandoffObserverMissed,
        fushi_voice_hook::kLookupDiagnosticFlagFailure |
            fushi_voice_hook::kLookupDiagnosticFlagPost,
        fushi_voice_hook::little_busters::kLittleBustersParserHandoffRva,
        callsite, 0u, ctext, after.item_array, after.line_count);
  }
}

void ObserveLittleBustersF2D580(uintptr_t this_pointer, uintptr_t entry_esp) {
  const uintptr_t caller = LittleBustersLookupCallerReturn(entry_esp);
  uintptr_t item_array = 0u;
  uint32_t line_count = 0u;
  const bool item_ok = ReadLittleBustersLookupPointer(
      this_pointer + fushi_voice_hook::little_busters::
          kLittleBustersCTextItemArrayOffset,
      &item_array);
  const bool line_ok = ReadLittleBustersLookupU32(
      this_pointer + fushi_voice_hook::little_busters::
          kLittleBustersCTextLineCountOffset,
      &line_count);
  RecordLittleBustersLayoutContextEvent(
      fushi_voice_hook::kLbLayoutUpdate, fushi_voice_hook::
          kLookupDiagnosticFlagPost,
      0x0007D580u, LittleBustersLookupDiagnosticModuleRva(caller),
      this_pointer, item_array, line_ok ? line_count : 0u,
      item_ok ? 1u : 0u);
  if (!item_ok || !line_ok) {
    RecordLittleBustersLayoutContextEvent(
        fushi_voice_hook::kLbLayoutPartial,
        fushi_voice_hook::kLookupDiagnosticFlagFailure,
        0x0007D580u, LittleBustersLookupDiagnosticModuleRva(caller),
        this_pointer, item_array, line_count, item_ok ? 1u : 0u);
  }
  CaptureLittleBustersTransformState(
      0x0007D580u, LittleBustersLookupDiagnosticModuleRva(caller));

  // F2D580 is the continuously active cText layout seam used by the game
  // after the standard attach flow.  F25630 remains a useful first-frame
  // boundary, but it is not an admission gate: late attach and ordinary
  // repaint both arrive here with the already-populated item/record array.
  // Build only from a complete snapshot and exact TextSlot identity; a stale
  // array is rejected below by the per-record UTF-16 codepoint check.
  if (g_header != nullptr &&
      fushi_voice_hook::AtomicLoadShared32(&g_header->lookup_enabled) != 0u &&
      item_ok && line_ok) {
    const LittleBustersCTextRecordSummary active =
        SnapshotLittleBustersCTextRecords(this_pointer);
    const LittleBustersParserPending occurrence =
        CapturePublishedLittleBustersOccurrence();
    if (active.first_item != 0u && active.first_records != 0u &&
        active.first_item_record_count != 0u && occurrence.valid) {
      const uint64_t generation = EnsureLittleBustersActiveLayoutGeneration(
          this_pointer, active, occurrence);
      if (generation != 0u) {
        (void)BuildLittleBustersLookupModel(this_pointer, active, occurrence);
      }
    }
  }
}

#if 0
// Retired F2F360 record-array experiment.  Runtime evidence showed that this
// receiver/offset interpretation is not the body-text seam; keep it disabled
// as historical context, with no active caller and no false RECORD_MISS or
// GLYPH_CAPTURE_NONE emission.
void ObserveLittleBustersRecords(uintptr_t item, uintptr_t entry_esp,
                                 uintptr_t caller_return_override = 0u,
                                 bool post_call = false) {
  const uintptr_t caller_return =
      caller_return_override != 0u
          ? caller_return_override
          : LittleBustersLookupCallerReturn(entry_esp);
  const uint32_t callsite =
      LittleBustersLookupDiagnosticModuleRva(caller_return);
  uint32_t count = 0u;
  uintptr_t records = 0u;
  const bool count_ok = ReadLittleBustersLookupU32(
      item + fushi_voice_hook::little_busters::kLittleBustersCTextItemCountOffset,
      &count);
  const bool records_ok = ReadLittleBustersLookupPointer(
      item + fushi_voice_hook::little_busters::kLittleBustersCTextItemRecordOffset,
      &records);
  if (!count_ok || !records_ok || records == 0u || count == 0u ||
      count > 256u) {
    if (post_call) {
      RecordLittleBustersLayoutContextEvent(
          fushi_voice_hook::kLbLayoutPostcall,
          fushi_voice_hook::kLookupDiagnosticFlagFailure |
              fushi_voice_hook::kLookupDiagnosticFlagPost,
          0x0007F360u, callsite, item, records, count,
          records_ok ? 1u : 0u);
    }
    RecordLittleBustersLayoutContextEvent(
        fushi_voice_hook::kLbRecordMiss,
        fushi_voice_hook::kLookupDiagnosticFlagFailure, 0x0007F360u, callsite,
         item, records, count, records_ok ? 1u : 0u);
    RecordLittleBustersLookupReason(
        fushi_voice_hook::kLookupDiagnosticEventMethod,
        fushi_voice_hook::kLookupDiagnosticProbeP3Renderer,
        fushi_voice_hook::kLbGlyphCaptureNone,
        fushi_voice_hook::kLookupDiagnosticFlagFailure, 0x0007F360u, callsite,
        0u, item, records, count);
    return;
  }
  g_lb_lookup_diagnostic_layout_item.store(item, std::memory_order_relaxed);
  g_lb_lookup_diagnostic_layout_record.store(records,
                                             std::memory_order_relaxed);
  g_lb_lookup_diagnostic_layout_record_count.store(count,
                                                    std::memory_order_relaxed);
  g_lb_lookup_diagnostic_layout_record_seen.store(true,
                                                  std::memory_order_relaxed);
  if (post_call) {
    RecordLittleBustersLayoutContextEvent(
        fushi_voice_hook::kLbLayoutPostcall,
        fushi_voice_hook::kLookupDiagnosticFlagPost, 0x0007F360u, callsite,
        item, records, count,
        (static_cast<uint64_t>(
             g_lb_lookup_diagnostic_record_call_pre_count.load(
                 std::memory_order_relaxed))
         << 32) |
            count);
    const uint32_t pre_count =
        g_lb_lookup_diagnostic_record_call_pre_count.load(
            std::memory_order_relaxed);
    const uintptr_t pre_item =
        g_lb_lookup_diagnostic_record_call_pre_item.load(
            std::memory_order_relaxed);
    const uintptr_t pre_records =
        g_lb_lookup_diagnostic_record_call_pre_records.load(
            std::memory_order_relaxed);
    if ((pre_count == 0u || pre_records == 0u || pre_item != item) &&
        count != 0u) {
      RecordLittleBustersLookupReason(
          fushi_voice_hook::kLookupDiagnosticEventLayout,
          fushi_voice_hook::kLookupDiagnosticProbeP4Layout,
          fushi_voice_hook::kLbLayoutObserverEarly,
          fushi_voice_hook::kLookupDiagnosticFlagPost, 0x0007F360u, callsite,
          0u, item, records, pre_count, count);
    }
  }
  const bool handoff = g_lb_lookup_diagnostic_layout_handoff.load(
      std::memory_order_relaxed);
  const uint32_t sample_count = count < kLbDiagnosticMaxRecordSamples
                                    ? count
                                    : kLbDiagnosticMaxRecordSamples;
  const uint64_t generation =
      g_lb_lookup_diagnostic_geometry_generation.load(
          std::memory_order_relaxed);
  const uintptr_t previous_item =
      g_lb_lookup_diagnostic_record_snapshot_item.load(
          std::memory_order_relaxed);
  const uintptr_t previous_records =
      g_lb_lookup_diagnostic_record_snapshot_records.load(
          std::memory_order_relaxed);
  const uint32_t previous_count =
      g_lb_lookup_diagnostic_record_snapshot_record_count.load(
          std::memory_order_relaxed);
  const uint64_t previous_generation =
      g_lb_lookup_diagnostic_record_snapshot_generation.load(
          std::memory_order_relaxed);
  const bool new_snapshot = previous_generation != generation ||
                            previous_item != item ||
                            previous_records != records ||
                            previous_count != count;
  const uint32_t snapshot_number =
      new_snapshot
          ? g_lb_lookup_diagnostic_record_snapshot_count.fetch_add(
                1u, std::memory_order_relaxed)
          : kLbDiagnosticMaxRecordSnapshots;
  const bool capture_snapshot =
      new_snapshot && snapshot_number < kLbDiagnosticMaxRecordSnapshots;
  if (!capture_snapshot) {
    CaptureLittleBustersTransformState(0x0007F360u, callsite);
    return;
  }
  g_lb_lookup_diagnostic_record_snapshot_generation.store(
      generation, std::memory_order_relaxed);
  g_lb_lookup_diagnostic_record_snapshot_item.store(
      item, std::memory_order_relaxed);
  g_lb_lookup_diagnostic_record_snapshot_records.store(
      records, std::memory_order_relaxed);
  g_lb_lookup_diagnostic_record_snapshot_record_count.store(
      count, std::memory_order_relaxed);
  uint32_t captured_count = 0u;
  for (uint32_t index = 0u; index < sample_count; ++index) {
    const uintptr_t record = records +
                             index * fushi_voice_hook::little_busters::
                                           kLittleBustersCTextRecordStride;
    int16_t x0 = 0;
    int16_t y0 = 0;
    int16_t x1 = 0;
    int16_t y1 = 0;
    uint16_t key = 0u;
    uint8_t flags = 0u;
    uint8_t active = 0u;
    const bool valid =
        ReadLittleBustersLookupI16(record + fushi_voice_hook::little_busters::
                                       kLittleBustersCTextRecordX0Offset, &x0) &&
        ReadLittleBustersLookupI16(record + fushi_voice_hook::little_busters::
                                       kLittleBustersCTextRecordY0Offset, &y0) &&
        ReadLittleBustersLookupI16(record + fushi_voice_hook::little_busters::
                                       kLittleBustersCTextRecordX1Offset, &x1) &&
        ReadLittleBustersLookupI16(record + fushi_voice_hook::little_busters::
                                       kLittleBustersCTextRecordY1Offset, &y1) &&
        ReadLittleBustersLookupBytes(record + fushi_voice_hook::little_busters::
                                         kLittleBustersCTextRecordOpaqueKeyOffset,
                                     &key, sizeof(key)) &&
        ReadLittleBustersLookupBytes(record + fushi_voice_hook::little_busters::
                                         kLittleBustersCTextRecordFlagsOffset,
                                     &flags, sizeof(flags)) &&
        ReadLittleBustersLookupBytes(record + fushi_voice_hook::little_busters::
                                         kLittleBustersCTextRecordActiveOffset,
                                     &active, sizeof(active));
    if (!valid) continue;
    ++captured_count;
    LookupDiagnosticEvent event = {};
    event.event_kind = fushi_voice_hook::kLookupDiagnosticEventLayout;
    event.probe_id = fushi_voice_hook::kLookupDiagnosticProbeP3Renderer;
    event.reason_id = fushi_voice_hook::kLbRecordCaptured;
    event.flags = fushi_voice_hook::kLookupDiagnosticFlagPost |
                  fushi_voice_hook::kLookupDiagnosticFlagExplicitOccurrence |
                  fushi_voice_hook::kLookupDiagnosticFlagHasGeometry;
    event.candidate_rva = 0x0007F360u;
    event.callsite_rva = callsite;
    event.glyph_index = UINT32_MAX;
    event.source_start = UINT32_MAX;
    event.source_length = 0u;
    event.glyph_count = count;
    event.record_index = index;
    event.record_count = count;
    event.coordinate_space = fushi_voice_hook::kLookupDiagnosticCoordinateCTextRecord;
    event.glyph_x = x0;
    event.glyph_y = y0;
    event.glyph_w = x1;
    event.glyph_h = y1;
    event.argument0 = item;
    event.argument1 = record;
    event.result0 = key;  // opaque interactive key; never a source index
    event.result1 = (static_cast<uint64_t>(flags) << 8) | active;
    event.geometry_generation =
        g_lb_lookup_diagnostic_geometry_generation.load(
            std::memory_order_relaxed);
    const uint64_t seq = g_lb_lookup_diagnostic_layout_occ_seq.load(
        std::memory_order_relaxed);
    const uint64_t text_thread =
        g_lb_lookup_diagnostic_layout_occ_thread.load(
            std::memory_order_relaxed);
    if (seq != 0u && text_thread != 0u) {
      event.text_seq = seq;
      event.text_thread_id = text_thread;
      event.text_utf16_hash = g_lb_lookup_diagnostic_occ_hash.load(
          std::memory_order_relaxed);
      event.text_utf16_length = g_lb_lookup_diagnostic_occ_length.load(
          std::memory_order_relaxed);
      event.flags |= fushi_voice_hook::kLookupDiagnosticFlagHasOccurrence;
    }
    RecordLittleBustersLookupDiagnostic(event);
  }
  if (captured_count != 0u) {
    // These are native cText records with stable bounds and an opaque Luca
    // interaction key.  They are the strongest current glyph/rect evidence,
    // but source_start/glyph_index intentionally remain unknown here.
    RecordLittleBustersLookupReason(
        fushi_voice_hook::kLookupDiagnosticEventLayout,
        fushi_voice_hook::kLookupDiagnosticProbeP3Renderer,
        fushi_voice_hook::kLbGlyphCaptureNative,
        fushi_voice_hook::kLookupDiagnosticFlagPost, 0x0007F360u, callsite,
        0u, records, captured_count, count);
  } else {
    RecordLittleBustersLookupReason(
        fushi_voice_hook::kLookupDiagnosticEventLayout,
        fushi_voice_hook::kLookupDiagnosticProbeP3Renderer,
        fushi_voice_hook::kLbGlyphCaptureNone,
        fushi_voice_hook::kLookupDiagnosticFlagFailure, 0x0007F360u, callsite,
        0u, records, count, sample_count);
  }
  if (handoff) {
    RecordLittleBustersLookupReason(
        fushi_voice_hook::kLookupDiagnosticEventMapping,
        fushi_voice_hook::kLookupDiagnosticProbeP5Mapping,
        fushi_voice_hook::kLbRecordSourceSpanUnproven,
        fushi_voice_hook::kLookupDiagnosticFlagFailure, 0x0007F360u,
        callsite, 0u, records, count);
  } else {
    RecordLittleBustersLookupReason(
        fushi_voice_hook::kLookupDiagnosticEventMapping,
        fushi_voice_hook::kLookupDiagnosticProbeP5Mapping,
        fushi_voice_hook::kLbMapGap,
        fushi_voice_hook::kLookupDiagnosticFlagFailure, 0x0007F360u,
        callsite, 0u, records, count);
  }
  CaptureLittleBustersTransformState(0x0007F360u, callsite);
}
#endif

void CaptureLittleBustersRenderCommandBoundaryBefore() {
  uint32_t command_count = 0u;
  uintptr_t command_buffer = 0u;
  const uintptr_t base = g_lb_lookup_diagnostic_module_base;
  const bool count_ok =
      base != 0u && ReadLittleBustersLookupU32(
                          base + fushi_voice_hook::little_busters::
                              kLittleBustersRenderCommandCountGlobalRva,
                          &command_count);
  const bool buffer_ok =
      base != 0u && ReadLittleBustersLookupPointer(
                           base + fushi_voice_hook::little_busters::
                               kLittleBustersRenderCommandBufferGlobalRva,
                           &command_buffer);
  g_lb_lookup_diagnostic_render_call_pre_count.store(
      count_ok ? command_count : 0u, std::memory_order_relaxed);
  g_lb_lookup_diagnostic_render_call_pre_buffer.store(
      buffer_ok ? command_buffer : 0u, std::memory_order_relaxed);
}

void CaptureLittleBustersRenderCommandDelta(uintptr_t caller_return) {
  const uintptr_t base = g_lb_lookup_diagnostic_module_base;
  uint32_t after_count = 0u;
  uintptr_t after_buffer = 0u;
  const bool count_ok =
      base != 0u && ReadLittleBustersLookupU32(
                          base + fushi_voice_hook::little_busters::
                              kLittleBustersRenderCommandCountGlobalRva,
                          &after_count);
  const bool buffer_ok =
      base != 0u && ReadLittleBustersLookupPointer(
                           base + fushi_voice_hook::little_busters::
                               kLittleBustersRenderCommandBufferGlobalRva,
                           &after_buffer);
  const uint32_t before_count =
      g_lb_lookup_diagnostic_render_call_pre_count.load(
          std::memory_order_relaxed);
  const uintptr_t before_buffer =
      g_lb_lookup_diagnostic_render_call_pre_buffer.load(
          std::memory_order_relaxed);
  const bool aligned =
      count_ok && fushi_voice_hook::little_busters::
                      LittleBustersRenderCommandCountAligned(before_count) &&
      fushi_voice_hook::little_busters::
          LittleBustersRenderCommandCountAligned(after_count);
  const bool range_valid = aligned && buffer_ok && after_buffer != 0u &&
                           after_count >= before_count &&
                           (before_buffer == 0u || before_buffer == after_buffer);
  if (!range_valid) {
    if (count_ok && buffer_ok && after_buffer != 0u &&
        (after_count != before_count || after_buffer != before_buffer)) {
      RecordLittleBustersLookupReason(
          fushi_voice_hook::kLookupDiagnosticEventLayout,
          fushi_voice_hook::kLookupDiagnosticProbeP3Renderer,
          fushi_voice_hook::kLbRenderCommandLineageUnproven,
          fushi_voice_hook::kLookupDiagnosticFlagFailure |
              fushi_voice_hook::kLookupDiagnosticFlagPost,
          0x0007F360u,
          LittleBustersLookupDiagnosticModuleRva(caller_return), 0u,
          before_buffer, after_buffer, before_count, after_count);
    }
    return;
  }
  const uint32_t before_ordinal =
      fushi_voice_hook::little_busters::
          LittleBustersRenderCommandOrdinalFromCount(before_count);
  const uint32_t after_ordinal =
      fushi_voice_hook::little_busters::
          LittleBustersRenderCommandOrdinalFromCount(after_count);
  if (after_ordinal <= before_ordinal) return;
  const uint64_t generation =
      g_lb_lookup_diagnostic_geometry_generation.load(
          std::memory_order_relaxed);
  const uint64_t previous_generation =
      g_lb_lookup_diagnostic_render_snapshot_generation.load(
          std::memory_order_relaxed);
  const uint32_t previous_start =
      g_lb_lookup_diagnostic_render_snapshot_start.load(
          std::memory_order_relaxed);
  if (previous_generation == generation && previous_start == before_ordinal) {
    return;
  }
  // F2F360 is on a render-side loop.  Even if its command cursor advances on
  // every frame, keep at most a small number of bounded deltas per layout
  // epoch (the physical-down path resets this budget for the next click).
  const uint32_t snapshot_number =
      g_lb_lookup_diagnostic_render_snapshot_count.fetch_add(
          1u, std::memory_order_relaxed);
  if (!fushi_voice_hook::little_busters::
           LittleBustersDiagnosticRenderSnapshotAllowed(snapshot_number)) {
    return;
  }
  g_lb_lookup_diagnostic_render_snapshot_generation.store(
      generation, std::memory_order_relaxed);
  g_lb_lookup_diagnostic_render_snapshot_start.store(
      before_ordinal, std::memory_order_relaxed);
  g_lb_lookup_diagnostic_render_snapshot_end.store(
      after_ordinal, std::memory_order_relaxed);
  g_lb_lookup_diagnostic_render_snapshot_buffer.store(
      after_buffer, std::memory_order_relaxed);

  const uint32_t command_count = after_ordinal - before_ordinal;
  const uint32_t sample_count = command_count < kLbDiagnosticMaxRenderCommandSamples
                                    ? command_count
                                    : kLbDiagnosticMaxRenderCommandSamples;
  const uint32_t layout_callsite =
      LittleBustersLookupDiagnosticModuleRva(caller_return);
  const uint32_t draw_candidate =
      g_lb_lookup_diagnostic_last_render_candidate.load(
          std::memory_order_relaxed);
  const uint32_t draw_callsite =
      g_lb_lookup_diagnostic_last_render_callsite.load(
          std::memory_order_relaxed);
  const bool has_draw_lineage =
      (draw_candidate == 0x00045B00u || draw_candidate == 0x0004B3B0u) &&
      draw_callsite != 0u;
  const uint32_t callsite = has_draw_lineage ? draw_callsite : layout_callsite;
  const uint32_t event_candidate =
      has_draw_lineage ? draw_candidate : 0x0007F360u;
  LookupDiagnosticEvent summary = {};
  summary.event_kind = fushi_voice_hook::kLookupDiagnosticEventLayout;
  summary.probe_id = fushi_voice_hook::kLookupDiagnosticProbeP3Renderer;
  summary.reason_id = fushi_voice_hook::kLbRenderCommandCaptured;
  summary.flags = fushi_voice_hook::kLookupDiagnosticFlagPost |
                  fushi_voice_hook::kLookupDiagnosticFlagExplicitOccurrence;
  summary.candidate_rva = event_candidate;
  summary.callsite_rva = callsite;
  summary.coordinate_space =
      fushi_voice_hook::kLookupDiagnosticCoordinateRenderCommand;
  summary.argument0 = after_buffer;
  summary.argument1 = before_ordinal;
  summary.result0 = after_ordinal;
  summary.result1 = command_count;
  summary.record_index = UINT32_MAX;
  summary.record_count = g_lb_lookup_diagnostic_layout_record_count.load(
      std::memory_order_relaxed);
  summary.geometry_generation = generation;
  const uint64_t layout_seq = g_lb_lookup_diagnostic_layout_occ_seq.load(
      std::memory_order_relaxed);
  const uint64_t layout_thread =
      g_lb_lookup_diagnostic_layout_occ_thread.load(
          std::memory_order_relaxed);
  if (g_lb_lookup_diagnostic_layout_handoff.load(std::memory_order_relaxed) &&
      layout_seq != 0u && layout_thread != 0u) {
    summary.text_seq = layout_seq;
    summary.text_thread_id = layout_thread;
    summary.text_utf16_hash = g_lb_lookup_diagnostic_occ_hash.load(
        std::memory_order_relaxed);
    summary.text_utf16_length = g_lb_lookup_diagnostic_occ_length.load(
        std::memory_order_relaxed);
    summary.flags |= fushi_voice_hook::kLookupDiagnosticFlagHasOccurrence;
  }
  RecordLittleBustersLookupDiagnostic(summary);

  for (uint32_t sample = 0u; sample < sample_count; ++sample) {
    const uint32_t ordinal = before_ordinal + sample;
    const uintptr_t command =
        after_buffer +
        static_cast<uintptr_t>(ordinal) * fushi_voice_hook::little_busters::
                                             kLittleBustersRenderCommandStride;
    for (uint32_t pair = 0u; pair < kLbDiagnosticRenderCommandRawPairs;
         ++pair) {
      uint64_t words[2] = {};
      if (!ReadLittleBustersLookupBytes(
              command + pair * sizeof(words), words, sizeof(words))) {
        RecordLittleBustersLookupReason(
            fushi_voice_hook::kLookupDiagnosticEventLayout,
            fushi_voice_hook::kLookupDiagnosticProbeP3Renderer,
            fushi_voice_hook::kLbRenderCommandLineageUnproven,
            fushi_voice_hook::kLookupDiagnosticFlagFailure |
                fushi_voice_hook::kLookupDiagnosticFlagPost,
            0x0007F360u, callsite, 0u, command, pair, ordinal);
        continue;
      }
      LookupDiagnosticEvent raw = {};
      raw.event_kind = fushi_voice_hook::kLookupDiagnosticEventLayout;
      raw.probe_id = fushi_voice_hook::kLookupDiagnosticProbeP3Renderer;
      raw.reason_id = fushi_voice_hook::kLbRenderCommandRaw;
      raw.flags = fushi_voice_hook::kLookupDiagnosticFlagPost |
                  fushi_voice_hook::kLookupDiagnosticFlagExplicitOccurrence;
      raw.candidate_rva = event_candidate;
      raw.callsite_rva = callsite;
      raw.coordinate_space =
          fushi_voice_hook::kLookupDiagnosticCoordinateRenderCommand;
      raw.argument0 = command;
      raw.argument1 = (static_cast<uint64_t>(ordinal) << 32) | pair;
      raw.result0 = words[0];
      raw.result1 = words[1];
      raw.record_index = ordinal;
      raw.record_count = command_count;
      raw.geometry_generation = generation;
      if (summary.flags & fushi_voice_hook::kLookupDiagnosticFlagHasOccurrence) {
        raw.text_seq = summary.text_seq;
        raw.text_thread_id = summary.text_thread_id;
        raw.text_utf16_hash = summary.text_utf16_hash;
        raw.text_utf16_length = summary.text_utf16_length;
        raw.flags |= fushi_voice_hook::kLookupDiagnosticFlagHasOccurrence;
      }
      RecordLittleBustersLookupDiagnostic(raw);
    }
  }
  const bool record_lineage =
      g_lb_lookup_diagnostic_layout_record_seen.load(
          std::memory_order_relaxed) &&
      g_lb_lookup_diagnostic_layout_handoff.load(std::memory_order_relaxed);
  RecordLittleBustersLookupReason(
      fushi_voice_hook::kLookupDiagnosticEventLayout,
      fushi_voice_hook::kLookupDiagnosticProbeP3Renderer,
      record_lineage ? fushi_voice_hook::kLbRenderCommandLineageUnproven
                     : fushi_voice_hook::kLbDrawOnlyNoSource,
      record_lineage ? fushi_voice_hook::kLookupDiagnosticFlagFailure
                     : fushi_voice_hook::kLookupDiagnosticFlagFailure,
      event_candidate, callsite, 0u, after_buffer, before_ordinal,
      after_ordinal);
  if (!has_draw_lineage) {
    RecordLittleBustersLookupReason(
        fushi_voice_hook::kLookupDiagnosticEventLayout,
        fushi_voice_hook::kLookupDiagnosticProbeP3Renderer,
        fushi_voice_hook::kLbRenderCommandLineageUnproven,
        fushi_voice_hook::kLookupDiagnosticFlagFailure, event_candidate,
        layout_callsite, 0u, after_buffer, draw_candidate, draw_callsite,
        callsite);
  }
}

void ObserveLittleBustersDraw(uint32_t candidate_rva, uintptr_t this_pointer,
                              uintptr_t entry_esp) {
  const uint32_t callsite = LittleBustersLookupDiagnosticModuleRva(
      LittleBustersLookupCallerReturn(entry_esp));
  g_lb_lookup_diagnostic_last_render_candidate.store(
      candidate_rva, std::memory_order_relaxed);
  g_lb_lookup_diagnostic_last_render_callsite.store(
      callsite, std::memory_order_relaxed);
  g_lb_lookup_diagnostic_layout_draw_seen.store(true,
                                                std::memory_order_relaxed);
  uint32_t command_count = 0u;
  uintptr_t command_buffer = 0u;
  const uintptr_t base = g_lb_lookup_diagnostic_module_base;
  const bool count_ok = ReadLittleBustersLookupU32(
      base + fushi_voice_hook::little_busters::
          kLittleBustersRenderCommandCountGlobalRva,
      &command_count);
  const bool buffer_ok = ReadLittleBustersLookupPointer(
      base + fushi_voice_hook::little_busters::
          kLittleBustersRenderCommandBufferGlobalRva,
      &command_buffer);
  const bool valid_draw = count_ok && buffer_ok && command_count != 0u;
  const uint64_t generation =
      g_lb_lookup_diagnostic_geometry_generation.load(
          std::memory_order_relaxed);
  const bool previous_valid_snapshot =
      g_lb_lookup_diagnostic_draw_event_generation.load(
          std::memory_order_relaxed) == generation &&
      g_lb_lookup_diagnostic_draw_event_candidate.load(
          std::memory_order_relaxed) == candidate_rva;
  const bool emit_valid_snapshot = valid_draw && !previous_valid_snapshot;
  const bool emit_failure_snapshot =
      !valid_draw &&
      !g_lb_lookup_diagnostic_draw_failure_reported.exchange(
          true, std::memory_order_relaxed);
  const bool emit_snapshot = emit_valid_snapshot || emit_failure_snapshot;
  if (emit_valid_snapshot) {
    g_lb_lookup_diagnostic_draw_event_generation.store(
        generation, std::memory_order_relaxed);
    g_lb_lookup_diagnostic_draw_event_candidate.store(
        candidate_rva, std::memory_order_relaxed);
  }
  if (emit_snapshot) {
    LookupDiagnosticEvent event = {};
    event.event_kind = fushi_voice_hook::kLookupDiagnosticEventLayout;
    event.probe_id = fushi_voice_hook::kLookupDiagnosticProbeP3Renderer;
    event.reason_id = valid_draw ? fushi_voice_hook::kLbDrawCaptured
                                 : fushi_voice_hook::kLbDrawMiss;
    event.flags = valid_draw ? fushi_voice_hook::kLookupDiagnosticFlagPost
                             : fushi_voice_hook::kLookupDiagnosticFlagFailure;
    event.flags |= fushi_voice_hook::kLookupDiagnosticFlagExplicitOccurrence;
    event.candidate_rva = candidate_rva;
    event.callsite_rva = callsite;
    event.coordinate_space = candidate_rva == 0x0004B3B0u
                                 ? fushi_voice_hook::
                                       kLookupDiagnosticCoordinateRenderCommand
                                 : fushi_voice_hook::
                                       kLookupDiagnosticCoordinateUnknown;
    event.argument0 = this_pointer;
    event.argument1 = command_buffer;
    event.result0 = command_count;
    event.result1 = (static_cast<uint64_t>(buffer_ok ? 1u : 0u) << 32) |
                    (count_ok ? 1u : 0u);
    event.record_index = UINT32_MAX;
    event.record_count = g_lb_lookup_diagnostic_layout_record_count.load(
        std::memory_order_relaxed);
    event.geometry_generation = generation;
    const uint64_t layout_seq = g_lb_lookup_diagnostic_layout_occ_seq.load(
        std::memory_order_relaxed);
    const uint64_t layout_thread =
        g_lb_lookup_diagnostic_layout_occ_thread.load(
            std::memory_order_relaxed);
    if (g_lb_lookup_diagnostic_layout_handoff.load(
            std::memory_order_relaxed) &&
        layout_seq != 0u && layout_thread != 0u) {
      event.text_seq = layout_seq;
      event.text_thread_id = layout_thread;
      event.text_utf16_hash = g_lb_lookup_diagnostic_occ_hash.load(
          std::memory_order_relaxed);
      event.text_utf16_length = g_lb_lookup_diagnostic_occ_length.load(
          std::memory_order_relaxed);
      event.flags |= fushi_voice_hook::kLookupDiagnosticFlagHasOccurrence;
    }
    RecordLittleBustersLookupDiagnostic(event);
  }

  if (!valid_draw) {
    if (emit_snapshot) {
      RecordLittleBustersLookupReason(
          fushi_voice_hook::kLookupDiagnosticEventMethod,
          fushi_voice_hook::kLookupDiagnosticProbeP3Renderer,
          fushi_voice_hook::kLbDrawMiss,
          fushi_voice_hook::kLookupDiagnosticFlagFailure, candidate_rva,
          callsite, 0u, command_buffer, command_count,
          (static_cast<uint64_t>(buffer_ok ? 1u : 0u) << 32) |
              (count_ok ? 1u : 0u));
    }
    if ((!g_lb_lookup_diagnostic_layout_record_seen.load(
             std::memory_order_relaxed) ||
         !g_lb_lookup_diagnostic_layout_handoff.load(
             std::memory_order_relaxed)) &&
        !g_lb_lookup_diagnostic_draw_only_reported.exchange(
            true, std::memory_order_relaxed)) {
      RecordLittleBustersLookupReason(
          fushi_voice_hook::kLookupDiagnosticEventMethod,
          fushi_voice_hook::kLookupDiagnosticProbeP3Renderer,
          fushi_voice_hook::kLbDrawOnlyNoSource,
          fushi_voice_hook::kLookupDiagnosticFlagFailure, candidate_rva,
          callsite, 0u, command_buffer, command_count);
    }
    CaptureLittleBustersTransformState(candidate_rva, callsite);
    return;
  }

  if (!emit_valid_snapshot) return;

  if (!g_lb_lookup_diagnostic_layout_record_seen.load(
          std::memory_order_relaxed) ||
      !g_lb_lookup_diagnostic_layout_handoff.load(
          std::memory_order_relaxed)) {
    RecordLittleBustersLookupReason(
        fushi_voice_hook::kLookupDiagnosticEventMethod,
        fushi_voice_hook::kLookupDiagnosticProbeP3Renderer,
        fushi_voice_hook::kLbDrawOnlyNoSource,
        fushi_voice_hook::kLookupDiagnosticFlagFailure, candidate_rva, callsite,
        0u, command_buffer, command_count);
  }
  if (g_lb_lookup_diagnostic_layout_record_seen.load(
          std::memory_order_relaxed) &&
      !g_lb_lookup_diagnostic_layout_sealed.exchange(true,
                                                      std::memory_order_relaxed)) {
    RecordLittleBustersLayoutContextEvent(
        fushi_voice_hook::kLbLayoutSealed,
        fushi_voice_hook::kLookupDiagnosticFlagPost, candidate_rva, callsite,
        command_buffer, command_count,
        g_lb_lookup_diagnostic_layout_record_count.load(
            std::memory_order_relaxed),
        g_lb_lookup_diagnostic_layout_handoff.load(std::memory_order_relaxed)
            ? 1u
            : 0u);
  }
  CaptureLittleBustersTransformState(candidate_rva, callsite);
}

void ObserveLittleBustersLayoutDrawBoundary(uintptr_t this_pointer,
                                             uintptr_t caller_return,
                                             uintptr_t argument0,
                                             uintptr_t argument1,
                                             uintptr_t result,
                                             bool post_call) {
  // Runtime evidence showed that F2F360's ECX/self is not a cText item whose
  // +0x04/+0x48 fields can be interpreted as a record array.  Retain the
  // actual call boundary and its ABI values, but do not manufacture a record
  // miss or glyph from those offsets.
  LookupDiagnosticEvent event = {};
  event.event_kind = fushi_voice_hook::kLookupDiagnosticEventLayout;
  event.probe_id = fushi_voice_hook::kLookupDiagnosticProbeP3Renderer;
  event.reason_id = post_call ? fushi_voice_hook::kLbLayoutPostcall
                              : fushi_voice_hook::kLbLayoutUpdate;
  event.flags = (post_call ? fushi_voice_hook::kLookupDiagnosticFlagPost
                           : fushi_voice_hook::kLookupDiagnosticFlagPre) |
                fushi_voice_hook::kLookupDiagnosticFlagExplicitOccurrence;
  event.candidate_rva = 0x0007F360u;
  event.callsite_rva = LittleBustersLookupDiagnosticModuleRva(caller_return);
  event.coordinate_space = fushi_voice_hook::kLookupDiagnosticCoordinateUnknown;
  event.argument0 = this_pointer;
  event.argument1 = argument0;
  event.result0 = result;
  event.result1 = argument1;
  event.record_index = UINT32_MAX;
  event.record_count = 0u;
  event.glyph_index = UINT32_MAX;
  event.source_start = UINT32_MAX;
  event.geometry_generation =
      g_lb_lookup_diagnostic_geometry_generation.load(
          std::memory_order_relaxed);
  uintptr_t vptr = 0u;
  if (this_pointer != 0u) {
    ReadLittleBustersLookupPointer(this_pointer, &vptr);
  }
  event.vptr_rva = LittleBustersLookupDiagnosticModuleRva(vptr);

  // This is an active TextSlot snapshot for correlation only.  It is not a
  // claim that F2F360 itself is the source-span producer.
  const LittleBustersParserPending occurrence =
      CapturePublishedLittleBustersOccurrence();
  if (occurrence.valid) {
    event.text_seq = occurrence.seq;
    event.text_thread_id = occurrence.text_thread;
    event.text_utf16_hash = occurrence.hash;
    event.text_utf16_length = occurrence.length;
    event.flags |= fushi_voice_hook::kLookupDiagnosticFlagHasOccurrence;
  }
  RecordLittleBustersLookupDiagnostic(event);
}

void ObserveLittleBustersHitTest(uintptr_t this_pointer, int32_t x, int32_t y,
                                 uintptr_t caller_return, uint32_t result) {
  const uint32_t callsite = LittleBustersLookupDiagnosticModuleRva(
      caller_return);
  const LittleBustersParserPending occurrence =
      CapturePublishedLittleBustersOccurrence();
  LookupDiagnosticEvent event = {};
  event.event_kind = fushi_voice_hook::kLookupDiagnosticEventInput;
  event.probe_id = fushi_voice_hook::kLookupDiagnosticProbeP3Renderer;
  event.reason_id = result == 0u ? fushi_voice_hook::kLbHitTestMiss
                                 : fushi_voice_hook::kLbHitTestOpaqueKey;
  event.flags = fushi_voice_hook::kLookupDiagnosticFlagPost |
                fushi_voice_hook::kLookupDiagnosticFlagExplicitOccurrence;
  event.candidate_rva = 0x0007D050u;
  event.callsite_rva = callsite;
  // F2D050's return is the only native interactive value proven by the
  // runtime.  The receiver is retained as an opaque context pointer; no
  // cText +0x11c/+0x48 array is read here after that interpretation failed.
  event.coordinate_space = fushi_voice_hook::kLookupDiagnosticCoordinateUnknown;
  event.argument0 = (static_cast<uint64_t>(static_cast<uint32_t>(x)) << 32) |
                    static_cast<uint32_t>(y);
  event.argument1 = this_pointer;
  event.result0 = static_cast<uint32_t>(result);  // opaque Luca key/result
  event.result1 = 0u;  // no native cText record was validated by this observer
  event.record_index = UINT32_MAX;
  event.record_count = 0u;
  event.glyph_count = 0u;
  event.glyph_index = UINT32_MAX;
  event.source_start = UINT32_MAX;
  event.geometry_generation =
      g_lb_lookup_diagnostic_geometry_generation.load(
          std::memory_order_relaxed);
  event.pre_text_seq = g_lb_lookup_diagnostic_down_occ_seq.load(
      std::memory_order_relaxed);
  event.pre_text_thread_id = g_lb_lookup_diagnostic_down_occ_thread.load(
      std::memory_order_relaxed);
  event.post_text_seq = occurrence.seq;
  event.post_text_thread_id = occurrence.text_thread;
  if (occurrence.valid) {
    event.text_seq = occurrence.seq;
    event.text_thread_id = occurrence.text_thread;
    event.text_utf16_hash = occurrence.hash;
    event.text_utf16_length = occurrence.length;
    event.flags |= fushi_voice_hook::kLookupDiagnosticFlagHasOccurrence;
  }
  RecordLittleBustersLookupDiagnostic(event);
  RecordLittleBustersLookupReason(
      fushi_voice_hook::kLookupDiagnosticEventInput,
      fushi_voice_hook::kLookupDiagnosticProbeP3Renderer,
      fushi_voice_hook::kLbHitTestCalled,
      fushi_voice_hook::kLookupDiagnosticFlagPre, 0x0007D050u, callsite, 0u,
      static_cast<uint32_t>(x), static_cast<uint32_t>(y),
      static_cast<uint32_t>(result), this_pointer);
  if (result != 0u) {
    // The key is real, but its source span is still intentionally unknown.
    // This keeps the next runtime from mistaking an opaque key for a UTF-16
    // index while preserving the exact occurrence snapshot above.
    RecordLittleBustersExplicitOccurrence(
        fushi_voice_hook::kLookupDiagnosticEventMapping,
        fushi_voice_hook::kLookupDiagnosticProbeP5Mapping,
        fushi_voice_hook::kLbRecordSourceSpanUnproven, occurrence,
        fushi_voice_hook::kLookupDiagnosticFlagFailure |
            fushi_voice_hook::kLookupDiagnosticFlagPost,
        0x0007D050u, callsite, this_pointer,
        static_cast<uint32_t>(result));
  }
  CaptureLittleBustersTransformState(0x0007D050u, callsite);
}

// Forward declarations keep the private Luca edge labels observational too:
// seeing the hydrated down/up labels is sufficient to mark an observed
// physical edge, but never changes the input returned to the game.
void BeginLittleBustersPhysicalDown(uint32_t surface, uint32_t callsite_rva,
                                    uint64_t value);
void EndLittleBustersPhysicalUp(uint32_t surface, uint32_t callsite_rva,
                                uint64_t value);

void ObserveLittleBustersConcreteProbe(uint32_t index, uintptr_t entry_esp,
                                       uintptr_t this_pointer,
                                       uintptr_t saved_registers) {
  if (index >= fushi_voice_hook::little_busters::kLittleBustersConcreteProbeCount)
    return;
  const auto& spec =
      fushi_voice_hook::little_busters::kLittleBustersConcreteProbes[index];
  RecordLittleBustersConcreteMethod(index, entry_esp, this_pointer,
                                    saved_registers);
  if (spec.rva == 0x00074D30u) {
    ObserveLittleBustersParser(index, entry_esp, this_pointer);
  } else if (spec.rva == 0x00075630u) {
    ObserveLittleBustersF25630(index, entry_esp, this_pointer);
  } else if (spec.rva == 0x0007D580u) {
    ObserveLittleBustersF2D580(this_pointer, entry_esp);
  } else if (spec.rva == 0x0007F360u) {
    uintptr_t actual_this = this_pointer;
    if (spec.internal_label && saved_registers != 0u) {
      ReadLittleBustersLookupPointer(saved_registers, &actual_this);
    }
    uintptr_t args[kLbDiagnosticMaxMethodArgs] = {};
    const bool args_valid = ReadLittleBustersLookupArgs(
        entry_esp, args, kLbDiagnosticMaxMethodArgs);
    ObserveLittleBustersLayoutDrawBoundary(
        actual_this, LittleBustersLookupCallerReturn(entry_esp),
        args_valid ? args[0] : 0u, args_valid ? args[1] : 0u, 0u, false);
  } else if (spec.rva == 0x00045B00u || spec.rva == 0x0004B3B0u) {
    ObserveLittleBustersDraw(spec.rva, this_pointer, entry_esp);
  } else if (spec.rva == 0x000AB9CCu) {
    g_lb_lookup_diagnostic_semantic_callsite_seen.store(
        true, std::memory_order_relaxed);
    g_lb_lookup_diagnostic_semantic_reported.store(false,
                                                   std::memory_order_relaxed);
    RecordLittleBustersLookupReason(
        fushi_voice_hook::kLookupDiagnosticEventSemantic,
        fushi_voice_hook::kLookupDiagnosticProbeP9Semantic,
        fushi_voice_hook::kLbSemanticCandidate,
        fushi_voice_hook::kLookupDiagnosticFlagPre, spec.rva,
        LittleBustersLookupDiagnosticModuleRva(
            LittleBustersLookupCallerReturn(entry_esp)),
        fushi_voice_hook::kLookupShieldSurfaceEnginePrivate, this_pointer, 7u);
  } else if (spec.rva == 0x000AA350u) {
    RecordLittleBustersLookupReason(
        fushi_voice_hook::kLookupDiagnosticEventSemantic,
        fushi_voice_hook::kLookupDiagnosticProbeP9Semantic,
        fushi_voice_hook::kLbSemanticHostCalled,
        fushi_voice_hook::kLookupDiagnosticFlagPre, spec.rva,
        LittleBustersLookupDiagnosticModuleRva(
            LittleBustersLookupCallerReturn(entry_esp)));
  } else if (spec.rva == 0x000BC6F0u || spec.rva == 0x000C0A90u) {
    RecordLittleBustersLookupReason(
        fushi_voice_hook::kLookupDiagnosticEventSemantic,
        fushi_voice_hook::kLookupDiagnosticProbeP9Semantic,
        fushi_voice_hook::kLbSemanticLifecycleCalled,
        fushi_voice_hook::kLookupDiagnosticFlagPre, spec.rva,
        LittleBustersLookupDiagnosticModuleRva(
            LittleBustersLookupCallerReturn(entry_esp)),
        fushi_voice_hook::kLookupShieldSurfaceEnginePrivate, this_pointer);
  } else if (spec.rva == 0x000EE930u) {
    uintptr_t args[kLbDiagnosticMaxMethodArgs] = {};
    if (ReadLittleBustersLookupArgs(entry_esp, args,
                                    kLbDiagnosticMaxMethodArgs)) {
      RecordLittleBustersLookupReason(
          fushi_voice_hook::kLookupDiagnosticEventInput,
          fushi_voice_hook::kLookupDiagnosticProbeP8Input,
          fushi_voice_hook::kLbInputPrivate,
          fushi_voice_hook::kLookupDiagnosticFlagPre, spec.rva,
          LittleBustersLookupDiagnosticModuleRva(
              LittleBustersLookupCallerReturn(entry_esp)),
          fushi_voice_hook::kLookupShieldSurfaceEnginePrivate,
          args[2], this_pointer, args[0], args[1]);
    }
  } else if (spec.rva == 0x000EE952u) {
    const uint32_t callsite = LittleBustersLookupDiagnosticModuleRva(
        LittleBustersLookupCallerReturn(entry_esp));
    RecordLittleBustersLookupReason(
        fushi_voice_hook::kLookupDiagnosticEventInput,
        fushi_voice_hook::kLookupDiagnosticProbeP8Input,
        fushi_voice_hook::kLbInputPrivate,
        fushi_voice_hook::kLookupDiagnosticFlagEdge |
            fushi_voice_hook::kLookupDiagnosticFlagPre,
        spec.rva, callsite,
        fushi_voice_hook::kLookupShieldSurfaceEnginePrivate, this_pointer, 1u);
    BeginLittleBustersPhysicalDown(
        fushi_voice_hook::kLookupShieldSurfaceEnginePrivate, callsite,
        this_pointer);
  } else if (spec.rva == 0x000EE9C1u) {
    const uint32_t callsite = LittleBustersLookupDiagnosticModuleRva(
        LittleBustersLookupCallerReturn(entry_esp));
    RecordLittleBustersLookupReason(
        fushi_voice_hook::kLookupDiagnosticEventInput,
        fushi_voice_hook::kLookupDiagnosticProbeP8Input,
        fushi_voice_hook::kLbInputPrivate,
        fushi_voice_hook::kLookupDiagnosticFlagEdge |
            fushi_voice_hook::kLookupDiagnosticFlagPost,
        spec.rva, callsite,
        fushi_voice_hook::kLookupShieldSurfaceEnginePrivate, this_pointer, 0u);
    EndLittleBustersPhysicalUp(
        fushi_voice_hook::kLookupShieldSurfaceEnginePrivate, callsite,
        this_pointer);
  } else if (spec.rva == 0x000EE2C0u) {
    uint32_t x = 0u;
    uint32_t y = 0u;
    const uintptr_t base = g_lb_lookup_diagnostic_module_base;
    const bool x_ok = ReadLittleBustersLookupU32(
        base + fushi_voice_hook::little_busters::kLittleBustersMouseXGlobalRva,
        &x);
    const bool y_ok = ReadLittleBustersLookupU32(
        base + fushi_voice_hook::little_busters::kLittleBustersMouseYGlobalRva,
        &y);
    const ULONGLONG now = GetTickCount64();
    const ULONGLONG previous_emit =
        g_lb_lookup_diagnostic_last_user32_poll_emit.load(
            std::memory_order_relaxed);
    const bool coordinate_changed =
        g_lb_lookup_diagnostic_last_user32_x.load(std::memory_order_relaxed) !=
            x ||
        g_lb_lookup_diagnostic_last_user32_y.load(std::memory_order_relaxed) !=
            y;
    const bool emit = previous_emit == 0u || coordinate_changed ||
                      now < previous_emit ||
                      now - previous_emit >= kLbDiagnosticInputPollEmitIntervalMs;
    if (emit) {
      g_lb_lookup_diagnostic_last_user32_poll_emit.store(
          now, std::memory_order_relaxed);
      g_lb_lookup_diagnostic_last_user32_x.store(x, std::memory_order_relaxed);
      g_lb_lookup_diagnostic_last_user32_y.store(y, std::memory_order_relaxed);
      const uint32_t flags =
          x_ok && y_ok ? 0u : fushi_voice_hook::kLookupDiagnosticFlagFailure;
      const uint32_t callsite = LittleBustersLookupDiagnosticModuleRva(
          LittleBustersLookupCallerReturn(entry_esp));
      RecordLittleBustersLookupReason(
          fushi_voice_hook::kLookupDiagnosticEventInput,
          fushi_voice_hook::kLookupDiagnosticProbeP8Input,
          fushi_voice_hook::kLbInputPoll, flags, spec.rva, callsite,
          fushi_voice_hook::kLookupShieldSurfaceEnginePrivate, x, y,
          x_ok ? 1u : 0u, y_ok ? 1u : 0u);
      // F9E2C0 is the hydrated USER32 cursor/ScreenToClient poll seam.  Keep
      // this separate from the button-edge token: it proves that Luca queried
      // its logical cursor position, not that a physical left edge occurred.
      RecordLittleBustersLookupReason(
          fushi_voice_hook::kLookupDiagnosticEventInput,
          fushi_voice_hook::kLookupDiagnosticProbeP8Input,
          fushi_voice_hook::kLbInputUser32, flags, spec.rva, callsite,
          fushi_voice_hook::kLookupShieldSurfaceEnginePrivate, x, y,
          x_ok ? 1u : 0u, y_ok ? 1u : 0u);
    }
  } else if (spec.rva == 0x00053600u || spec.rva == 0x00053F10u ||
             spec.rva == 0x000540C0u) {
    CaptureLittleBustersTransformState(
        spec.rva, LittleBustersLookupDiagnosticModuleRva(
                      LittleBustersLookupCallerReturn(entry_esp)),
        this_pointer);
  } else if (spec.rva == 0x00106C70u) {
    RecordLittleBustersLookupReason(
        fushi_voice_hook::kLookupDiagnosticEventTransform,
        fushi_voice_hook::kLookupDiagnosticProbeP6Transform,
        fushi_voice_hook::kLbXformEngineState,
        fushi_voice_hook::kLookupDiagnosticFlagPost, spec.rva,
        LittleBustersLookupDiagnosticModuleRva(
            LittleBustersLookupCallerReturn(entry_esp)),
        fushi_voice_hook::kLookupShieldSurfaceEnginePrivate, this_pointer);
    CaptureLittleBustersTransformState(
        spec.rva, LittleBustersLookupDiagnosticModuleRva(
                      LittleBustersLookupCallerReturn(entry_esp)));
  }
}

#if defined(_MSC_VER) && defined(_M_IX86)

void* g_lb_lookup_diagnostic_original_0 = nullptr;
void* g_lb_lookup_diagnostic_original_1 = nullptr;
void* g_lb_lookup_diagnostic_original_2 = nullptr;
void* g_lb_lookup_diagnostic_original_3 = nullptr;
void* g_lb_lookup_diagnostic_original_4 = nullptr;
void* g_lb_lookup_diagnostic_original_5 = nullptr;
void* g_lb_lookup_diagnostic_original_7 = nullptr;
void* g_lb_lookup_diagnostic_original_8 = nullptr;
void* g_lb_lookup_diagnostic_original_11 = nullptr;
void* g_lb_lookup_diagnostic_original_12 = nullptr;
void* g_lb_lookup_diagnostic_original_13 = nullptr;
void* g_lb_lookup_diagnostic_original_14 = nullptr;
void* g_lb_lookup_diagnostic_original_15 = nullptr;
void* g_lb_lookup_diagnostic_original_16 = nullptr;
void* g_lb_lookup_diagnostic_original_17 = nullptr;
void* g_lb_lookup_diagnostic_original_18 = nullptr;
void* g_lb_lookup_diagnostic_original_19 = nullptr;
void* g_lb_lookup_diagnostic_original_21 = nullptr;

void** g_lb_lookup_diagnostic_original_slots[] = {
    &g_lb_lookup_diagnostic_original_0,
    &g_lb_lookup_diagnostic_original_1,
    &g_lb_lookup_diagnostic_original_2,
    &g_lb_lookup_diagnostic_original_3,
    &g_lb_lookup_diagnostic_original_4,
    &g_lb_lookup_diagnostic_original_5,
    nullptr,
    &g_lb_lookup_diagnostic_original_7,
    &g_lb_lookup_diagnostic_original_8,
    nullptr,
    nullptr,
    &g_lb_lookup_diagnostic_original_11,
    &g_lb_lookup_diagnostic_original_12,
    &g_lb_lookup_diagnostic_original_13,
    &g_lb_lookup_diagnostic_original_14,
    &g_lb_lookup_diagnostic_original_15,
    &g_lb_lookup_diagnostic_original_16,
    &g_lb_lookup_diagnostic_original_17,
    &g_lb_lookup_diagnostic_original_18,
    &g_lb_lookup_diagnostic_original_19,
    nullptr,
    &g_lb_lookup_diagnostic_original_21,
};

using LittleBustersHitTestFn = int32_t(__thiscall *)(void*, int32_t, int32_t);
using LittleBustersSelectorFn = bool(__thiscall *)(void*, int32_t);
using LittleBustersScriptRequestFn = void(__thiscall *)(void*, uint8_t);
// The recovered functions clean up exactly two stack arguments.  Keep the
// scalar return register in the wrapper even though current callers appear to
// ignore it; this avoids post-observer code changing an otherwise observable
// EAX value if a caller does use it.
using LittleBustersParserHandoffFn = uintptr_t(__thiscall *)(void*, uintptr_t,
                                                             uintptr_t);
using LittleBustersLayoutDrawFn = uintptr_t(__thiscall *)(void*, uintptr_t,
                                                           uintptr_t);

LittleBustersHitTestFn g_lb_lookup_diagnostic_original_hit_test = nullptr;
LittleBustersSelectorFn g_lb_lookup_diagnostic_original_selector = nullptr;
LittleBustersScriptRequestFn g_lb_lookup_diagnostic_original_script_request =
    nullptr;
LittleBustersParserHandoffFn g_lb_lookup_diagnostic_original_parser_handoff =
    nullptr;
LittleBustersLayoutDrawFn g_lb_lookup_diagnostic_original_layout_draw = nullptr;

// pushad layout: EDI, ESI, EBP, original ESP, EBX, EDX, ECX, EAX.
#define FUSHI_LB_LOOKUP_DIAGNOSTIC_THUNK(name, index, original)              \
  __declspec(naked) void name() {                                            \
    __asm { pushfd }                                                         \
    __asm { pushad }                                                         \
    __asm { mov ebx, esp }                                                   \
    __asm { sub esp, 528 }                                                   \
    __asm { and esp, -16 }                                                   \
    __asm { fxsave [esp] }                                                   \
    __asm { mov eax, fs:[34h] }                                              \
    __asm { mov [esp + 512], eax }                                           \
    __asm { cld }                                                            \
    __asm { push ebx }                                                       \
    __asm { push dword ptr [ebx + 24] }                                      \
    __asm { lea eax, [ebx + 36] }                                            \
    __asm { push eax }                                                       \
    __asm { push index }                                                     \
    __asm { call ObserveLittleBustersConcreteProbe }                         \
    __asm { add esp, 16 }                                                    \
    __asm { mov eax, [esp + 512] }                                           \
    __asm { mov fs:[34h], eax }                                              \
    __asm { fxrstor [esp] }                                                  \
    __asm { mov esp, ebx }                                                   \
    __asm { popad }                                                          \
    __asm { popfd }                                                          \
    __asm { jmp dword ptr [original] }                                       \
  }

FUSHI_LB_LOOKUP_DIAGNOSTIC_THUNK(DetourLittleBustersLookup0, 0,
                                  g_lb_lookup_diagnostic_original_0)
FUSHI_LB_LOOKUP_DIAGNOSTIC_THUNK(DetourLittleBustersLookup1, 1,
                                  g_lb_lookup_diagnostic_original_1)
FUSHI_LB_LOOKUP_DIAGNOSTIC_THUNK(DetourLittleBustersLookup2, 2,
                                  g_lb_lookup_diagnostic_original_2)
FUSHI_LB_LOOKUP_DIAGNOSTIC_THUNK(DetourLittleBustersLookup3, 3,
                                  g_lb_lookup_diagnostic_original_3)
FUSHI_LB_LOOKUP_DIAGNOSTIC_THUNK(DetourLittleBustersLookup4, 4,
                                  g_lb_lookup_diagnostic_original_4)
FUSHI_LB_LOOKUP_DIAGNOSTIC_THUNK(DetourLittleBustersLookup5, 5,
                                  g_lb_lookup_diagnostic_original_5)
FUSHI_LB_LOOKUP_DIAGNOSTIC_THUNK(DetourLittleBustersLookup7, 7,
                                  g_lb_lookup_diagnostic_original_7)
FUSHI_LB_LOOKUP_DIAGNOSTIC_THUNK(DetourLittleBustersLookup8, 8,
                                  g_lb_lookup_diagnostic_original_8)
FUSHI_LB_LOOKUP_DIAGNOSTIC_THUNK(DetourLittleBustersLookup11, 11,
                                  g_lb_lookup_diagnostic_original_11)
FUSHI_LB_LOOKUP_DIAGNOSTIC_THUNK(DetourLittleBustersLookup12, 12,
                                  g_lb_lookup_diagnostic_original_12)
FUSHI_LB_LOOKUP_DIAGNOSTIC_THUNK(DetourLittleBustersLookup13, 13,
                                  g_lb_lookup_diagnostic_original_13)
FUSHI_LB_LOOKUP_DIAGNOSTIC_THUNK(DetourLittleBustersLookup14, 14,
                                  g_lb_lookup_diagnostic_original_14)
FUSHI_LB_LOOKUP_DIAGNOSTIC_THUNK(DetourLittleBustersLookup15, 15,
                                  g_lb_lookup_diagnostic_original_15)
FUSHI_LB_LOOKUP_DIAGNOSTIC_THUNK(DetourLittleBustersLookup16, 16,
                                  g_lb_lookup_diagnostic_original_16)
FUSHI_LB_LOOKUP_DIAGNOSTIC_THUNK(DetourLittleBustersLookup17, 17,
                                  g_lb_lookup_diagnostic_original_17)
FUSHI_LB_LOOKUP_DIAGNOSTIC_THUNK(DetourLittleBustersLookup18, 18,
                                  g_lb_lookup_diagnostic_original_18)
FUSHI_LB_LOOKUP_DIAGNOSTIC_THUNK(DetourLittleBustersLookup19, 19,
                                  g_lb_lookup_diagnostic_original_19)
FUSHI_LB_LOOKUP_DIAGNOSTIC_THUNK(DetourLittleBustersLookup21, 21,
                                  g_lb_lookup_diagnostic_original_21)

using LittleBustersLookupDetour = void (*)();
LittleBustersLookupDetour g_lb_lookup_diagnostic_detours[] = {
    DetourLittleBustersLookup0,  nullptr,
    DetourLittleBustersLookup2,  nullptr,
    DetourLittleBustersLookup4,  DetourLittleBustersLookup5,
    nullptr,                     DetourLittleBustersLookup7,
    DetourLittleBustersLookup8,  nullptr,
    nullptr,                     DetourLittleBustersLookup11,
    DetourLittleBustersLookup12, DetourLittleBustersLookup13,
    DetourLittleBustersLookup14, DetourLittleBustersLookup15,
    DetourLittleBustersLookup16, DetourLittleBustersLookup17,
    DetourLittleBustersLookup18, DetourLittleBustersLookup19,
    nullptr,                     DetourLittleBustersLookup21,
};

int FindLittleBustersConcreteProbeIndex(uint32_t rva) {
  for (uint32_t index = 0u; index <
       fushi_voice_hook::little_busters::kLittleBustersConcreteProbeCount;
       ++index) {
    if (fushi_voice_hook::little_busters::kLittleBustersConcreteProbes[index]
            .rva == rva) {
      return static_cast<int>(index);
    }
  }
  return -1;
}

uintptr_t __fastcall DetourLittleBustersParserHandoff(void* self, void*,
                                                       uintptr_t argument0,
                                                       uintptr_t argument1) {
  const uintptr_t caller = reinterpret_cast<uintptr_t>(_ReturnAddress());
  const uint32_t index = static_cast<uint32_t>(
      FindLittleBustersConcreteProbeIndex(0x00075630u));
  RecordLittleBustersTypedConcreteMethod(index, caller,
                                         reinterpret_cast<uintptr_t>(self),
                                         argument0, argument1);
  // F24D30 -> F25630 is the only statically admitted source-bearing handoff.
  // The pre snapshot runs before the original mutates the cText arrays.
  BeginLittleBustersLayout(reinterpret_cast<uintptr_t>(self), caller,
                           argument0, argument1);
  CaptureLittleBustersTransformState(
      fushi_voice_hook::little_busters::kLittleBustersParserHandoffRva,
      LittleBustersLookupDiagnosticModuleRva(caller));
  const LittleBustersParserHandoffFn original =
      g_lb_lookup_diagnostic_original_parser_handoff;
  const uintptr_t result =
      original == nullptr ? 0u : original(self, argument0, argument1);
  ObserveLittleBustersF25630Post(reinterpret_cast<uintptr_t>(self), caller,
                                  argument0, argument1);
  return result;
}

uintptr_t __fastcall DetourLittleBustersLayoutDraw(void* self, void*,
                                                    uintptr_t argument0,
                                                    uintptr_t argument1) {
  const uintptr_t caller = reinterpret_cast<uintptr_t>(_ReturnAddress());
  const uint32_t index = static_cast<uint32_t>(
      FindLittleBustersConcreteProbeIndex(0x0007F360u));
  RecordLittleBustersTypedConcreteMethod(index, caller,
                                         reinterpret_cast<uintptr_t>(self),
                                         argument0, argument1);
  ObserveLittleBustersLayoutDrawBoundary(
      reinterpret_cast<uintptr_t>(self), caller, argument0, argument1, 0u,
      false);
  CaptureLittleBustersRenderCommandBoundaryBefore();
  const LittleBustersLayoutDrawFn original =
      g_lb_lookup_diagnostic_original_layout_draw;
  const uintptr_t result =
      original == nullptr ? 0u : original(self, argument0, argument1);
  ObserveLittleBustersLayoutDrawBoundary(
      reinterpret_cast<uintptr_t>(self), caller, argument0, argument1, result,
      true);
  CaptureLittleBustersRenderCommandDelta(caller);
  return result;
}

int32_t __fastcall DetourLittleBustersHitTest(void* self, void*, int32_t x,
                                              int32_t y) {
  const uintptr_t caller = reinterpret_cast<uintptr_t>(_ReturnAddress());
  RecordLittleBustersConcreteMethod(
      static_cast<uint32_t>(FindLittleBustersConcreteProbeIndex(0x0007D050u)),
      0u, reinterpret_cast<uintptr_t>(self), 0u);
  const LittleBustersHitTestFn original =
      g_lb_lookup_diagnostic_original_hit_test;
  const int32_t result = original == nullptr ? 0 : original(self, x, y);
  ObserveLittleBustersHitTest(reinterpret_cast<uintptr_t>(self), x, y, caller,
                              static_cast<uint32_t>(result));
  return result;
}

bool __fastcall DetourLittleBustersSelector(void* self, void*, int32_t value) {
  const uintptr_t caller = reinterpret_cast<uintptr_t>(_ReturnAddress());
  const uint32_t index = static_cast<uint32_t>(
      FindLittleBustersConcreteProbeIndex(0x00034370u));
  RecordLittleBustersConcreteMethod(index, 0u,
                                    reinterpret_cast<uintptr_t>(self), 0u);
  const LittleBustersSelectorFn original =
      g_lb_lookup_diagnostic_original_selector;
  const bool result = original != nullptr && original(self, value);
  if (value == 7) {
    g_lb_lookup_diagnostic_selector7_queried.store(true,
                                                    std::memory_order_relaxed);
    g_lb_lookup_diagnostic_selector7_result.store(result,
                                                   std::memory_order_relaxed);
  }
  RecordLittleBustersLookupReason(
      fushi_voice_hook::kLookupDiagnosticEventSemantic,
      fushi_voice_hook::kLookupDiagnosticProbeP9Semantic,
      value == 7 ? (result ? fushi_voice_hook::kLbSelector7True
                            : fushi_voice_hook::kLbSelector7False)
                 : fushi_voice_hook::kLbSemanticHostCalled,
      fushi_voice_hook::kLookupDiagnosticFlagPost, 0x00034370u,
      LittleBustersLookupDiagnosticModuleRva(caller),
      fushi_voice_hook::kLookupShieldSurfaceEnginePrivate, value,
      reinterpret_cast<uintptr_t>(self),
      result ? 1u : 0u);
  return result;
}

void CaptureLittleBustersScriptState(uintptr_t self, uint32_t* state,
                                     uint8_t* requested, uint32_t* counter) {
  if (state != nullptr) *state = 0u;
  if (requested != nullptr) *requested = 0u;
  if (counter != nullptr) *counter = 0u;
  if (self == 0u) return;
  if (state != nullptr) ReadLittleBustersLookupU32(self + 0x882Cu, state);
  if (requested != nullptr) ReadLittleBustersLookupBytes(self + 0x8830u,
                                                          requested, 1u);
  if (counter != nullptr) ReadLittleBustersLookupU32(self + 0x8834u, counter);
}

void __fastcall DetourLittleBustersScriptRequest(void* self, void*,
                                                  uint8_t value) {
  const uintptr_t caller = reinterpret_cast<uintptr_t>(_ReturnAddress());
  RecordLittleBustersConcreteMethod(
      static_cast<uint32_t>(FindLittleBustersConcreteProbeIndex(0x000C0A50u)),
      0u, reinterpret_cast<uintptr_t>(self), 0u);
  uint32_t before_state = 0u;
  uint8_t before_requested = 0u;
  uint32_t before_counter = 0u;
  CaptureLittleBustersScriptState(reinterpret_cast<uintptr_t>(self),
                                  &before_state, &before_requested,
                                  &before_counter);
  const uint64_t pre_text_seq = g_lb_lookup_diagnostic_occ_seq.load(
      std::memory_order_relaxed);
  const uint64_t pre_text_thread = g_lb_lookup_diagnostic_occ_thread.load(
      std::memory_order_relaxed);
  const LittleBustersScriptRequestFn original =
      g_lb_lookup_diagnostic_original_script_request;
  if (original != nullptr) original(self, value);
  uint32_t after_state = 0u;
  uint8_t after_requested = 0u;
  uint32_t after_counter = 0u;
  CaptureLittleBustersScriptState(reinterpret_cast<uintptr_t>(self),
                                  &after_state, &after_requested,
                                  &after_counter);
  const uint64_t post_text_seq = g_lb_lookup_diagnostic_occ_seq.load(
      std::memory_order_relaxed);
  const uint64_t post_text_thread = g_lb_lookup_diagnostic_occ_thread.load(
      std::memory_order_relaxed);
  g_lb_lookup_diagnostic_f70a50_called.store(true,
                                              std::memory_order_relaxed);
  const bool changed = before_state != after_state ||
                       before_requested != after_requested ||
                       before_counter != after_counter;
  g_lb_lookup_diagnostic_script_state_changed.store(
      changed, std::memory_order_relaxed);
  LookupDiagnosticEvent state_event = {};
  state_event.event_kind = fushi_voice_hook::kLookupDiagnosticEventSemantic;
  state_event.probe_id = fushi_voice_hook::kLookupDiagnosticProbeP9Semantic;
  state_event.reason_id = fushi_voice_hook::kLbF70A50Called;
  state_event.flags = fushi_voice_hook::kLookupDiagnosticFlagPost |
                      fushi_voice_hook::kLookupDiagnosticFlagExplicitOccurrence;
  state_event.candidate_rva = 0x000C0A50u;
  state_event.callsite_rva = LittleBustersLookupDiagnosticModuleRva(caller);
  state_event.input_surface =
      fushi_voice_hook::kLookupShieldSurfaceEnginePrivate;
  state_event.text_seq = post_text_seq;
  state_event.text_thread_id = post_text_thread;
  state_event.pre_text_seq = pre_text_seq;
  state_event.pre_text_thread_id = pre_text_thread;
  state_event.post_text_seq = post_text_seq;
  state_event.post_text_thread_id = post_text_thread;
  state_event.argument0 = value;
  state_event.argument1 = reinterpret_cast<uintptr_t>(self);
  state_event.result0 = (static_cast<uint64_t>(before_state) << 32) |
                        after_state;
  state_event.result1 = (static_cast<uint64_t>(before_counter) << 32) |
                        after_counter;
  if (post_text_seq != 0u && post_text_thread != 0u) {
    state_event.flags |= fushi_voice_hook::kLookupDiagnosticFlagHasOccurrence;
  }
  RecordLittleBustersLookupDiagnostic(state_event);
  if (changed) {
    state_event.reason_id = fushi_voice_hook::kLbScriptStateChanged;
    state_event.result0 = (static_cast<uint64_t>(before_state) << 32) |
                          after_state;
    state_event.result1 =
        (static_cast<uint64_t>(before_requested) << 32) | after_requested;
    RecordLittleBustersLookupDiagnostic(state_event);
    if (g_lb_lookup_diagnostic_occ_seq.load(std::memory_order_relaxed) ==
            g_lb_lookup_diagnostic_down_occ_seq.load(
                std::memory_order_relaxed) &&
        g_lb_lookup_diagnostic_occ_thread.load(std::memory_order_relaxed) ==
            g_lb_lookup_diagnostic_down_occ_thread.load(
                std::memory_order_relaxed) &&
        !g_lb_lookup_diagnostic_script_no_occ_reported.exchange(
            true, std::memory_order_relaxed)) {
      RecordLittleBustersLookupReason(
          fushi_voice_hook::kLookupDiagnosticEventSemantic,
          fushi_voice_hook::kLookupDiagnosticProbeP9Semantic,
          fushi_voice_hook::kLbScriptStateNoOccurrence,
          fushi_voice_hook::kLookupDiagnosticFlagFailure, 0x000C0A50u,
          0u, 0u, before_state, after_state);
    }
  }
}

#undef FUSHI_LB_LOOKUP_DIAGNOSTIC_THUNK

#endif  // defined(_MSC_VER) && defined(_M_IX86)

void InstallLittleBustersLookupWndProc(HWND window);

void BeginLittleBustersPhysicalDown(uint32_t surface, uint32_t callsite_rva,
                                    uint64_t value) {
  const bool was_down = g_lb_lookup_diagnostic_physical_down.exchange(
      true, std::memory_order_relaxed);
  if (was_down) return;
  const ULONGLONG now = GetTickCount64();
  g_lb_lookup_diagnostic_last_physical_edge_tick.store(
      now, std::memory_order_relaxed);
  g_lb_lookup_diagnostic_last_input_tick.store(now,
                                                std::memory_order_relaxed);
  g_lb_lookup_diagnostic_click_trace_emitted.store(
      0u, std::memory_order_relaxed);
  g_lb_lookup_diagnostic_render_snapshot_count.store(
      0u, std::memory_order_relaxed);
  g_lb_lookup_diagnostic_down_occ_seq.store(
      g_lb_lookup_diagnostic_occ_seq.load(std::memory_order_relaxed),
      std::memory_order_relaxed);
  g_lb_lookup_diagnostic_down_occ_thread.store(
      g_lb_lookup_diagnostic_occ_thread.load(std::memory_order_relaxed),
      std::memory_order_relaxed);
  g_lb_lookup_diagnostic_physical_left_edge.store(true,
                                                   std::memory_order_relaxed);
  g_lb_lookup_diagnostic_semantic_callsite_seen.store(
      false, std::memory_order_relaxed);
  g_lb_lookup_diagnostic_selector7_queried.store(false,
                                                  std::memory_order_relaxed);
  g_lb_lookup_diagnostic_selector7_result.store(false,
                                                 std::memory_order_relaxed);
  g_lb_lookup_diagnostic_f70a50_called.store(false,
                                              std::memory_order_relaxed);
  g_lb_lookup_diagnostic_script_state_changed.store(
      false, std::memory_order_relaxed);
  g_lb_lookup_diagnostic_semantic_reported.store(false,
                                                 std::memory_order_relaxed);
  g_lb_lookup_diagnostic_script_no_occ_reported.store(false,
                                                       std::memory_order_relaxed);
  RecordLittleBustersLookupReason(
      fushi_voice_hook::kLookupDiagnosticEventOwnership,
      fushi_voice_hook::kLookupDiagnosticProbeP10Ownership,
      fushi_voice_hook::kLbTailOpen,
      fushi_voice_hook::kLookupDiagnosticFlagEdge,
      0u, callsite_rva, surface, value);
  const bool shield_ready =
      (fushi_voice_hook::AtomicLoadShared32(&g_header->lookup_shield_status_flags) &
       fushi_voice_hook::kLookupShieldStatusVerified) != 0u;
  RecordLittleBustersLookupReason(
      fushi_voice_hook::kLookupDiagnosticEventOwnership,
      fushi_voice_hook::kLookupDiagnosticProbeP10Ownership,
      shield_ready ? fushi_voice_hook::kLbShieldReady
                   : fushi_voice_hook::kLbShieldNotReady,
      shield_ready ? fushi_voice_hook::kLookupDiagnosticFlagEdge
                   : fushi_voice_hook::kLookupDiagnosticFlagFailure |
                         fushi_voice_hook::kLookupDiagnosticFlagEdge,
      0u, callsite_rva, surface, value);
  // Diagnostic phase: exact identity/admission/geometry have not armed an
  // owner.  The game therefore remains the owner and receives the down.
  RecordLittleBustersLookupReason(
      fushi_voice_hook::kLookupDiagnosticEventOwnership,
      fushi_voice_hook::kLookupDiagnosticProbeP10Ownership,
      fushi_voice_hook::kLbDownOwnerUnproven,
      fushi_voice_hook::kLookupDiagnosticFlagFailure |
          fushi_voice_hook::kLookupDiagnosticFlagEdge,
      0u, callsite_rva, surface);
  RecordLittleBustersLookupReason(
      fushi_voice_hook::kLookupDiagnosticEventOwnership,
      fushi_voice_hook::kLookupDiagnosticProbeP10Ownership,
      fushi_voice_hook::kLbDownPass,
      fushi_voice_hook::kLookupDiagnosticFlagEdge, 0u, callsite_rva, surface);
}

void EndLittleBustersPhysicalUp(uint32_t surface, uint32_t callsite_rva,
                                uint64_t value) {
  g_lb_lookup_diagnostic_physical_down.store(false,
                                               std::memory_order_relaxed);
  const bool owned = false;  // no production owner is armed in this patch
  if (owned) {
    RecordLittleBustersLookupReason(
        fushi_voice_hook::kLookupDiagnosticEventOwnership,
        fushi_voice_hook::kLookupDiagnosticProbeP10Ownership,
        fushi_voice_hook::kLbUpOwned,
        fushi_voice_hook::kLookupDiagnosticFlagEdge, 0u, callsite_rva, surface,
        value);
  }
  RecordLittleBustersLookupReason(
      fushi_voice_hook::kLookupDiagnosticEventOwnership,
      fushi_voice_hook::kLookupDiagnosticProbeP10Ownership,
      fushi_voice_hook::kLbTailClosed,
      fushi_voice_hook::kLookupDiagnosticFlagEdge, 0u, callsite_rva, surface,
      value);
}

void ObserveLittleBustersInputSurface(uint32_t surface, uint32_t reason_id,
                                      uintptr_t value, uintptr_t callsite) {
  if (g_header == nullptr ||
      g_lb_lookup_diagnostic_identity.load(std::memory_order_relaxed) != 1) {
    return;
  }
  const bool key_sample = surface == fushi_voice_hook::kLookupShieldSurfaceKeyState;
  const bool raw_sample =
      surface == fushi_voice_hook::kLookupShieldSurfaceRawInputData ||
      surface == fushi_voice_hook::kLookupShieldSurfaceRawInputBuffer;
  const bool di_sample =
      surface == fushi_voice_hook::kLookupShieldSurfaceDirectInputImmediate ||
      surface == fushi_voice_hook::kLookupShieldSurfaceDirectInputBuffered;
  const bool down = key_sample ? (value & 0x8000u) != 0u
                               : raw_sample
                                     ? (value & RI_MOUSE_LEFT_BUTTON_DOWN) != 0u
                                     : di_sample ? (value & 0x80u) != 0u : false;
  const bool up = key_sample ? (value & 0x8000u) == 0u
                             : raw_sample
                                   ? (value & RI_MOUSE_LEFT_BUTTON_UP) != 0u
                                   : di_sample ? !down : false;
  if (!down && !up) return;
  uint32_t source_bit = 0u;
  switch (reason_id) {
    case fushi_voice_hook::kLbInputAsync: source_bit = 1u << 0; break;
    case fushi_voice_hook::kLbInputKeyState: source_bit = 1u << 1; break;
    case fushi_voice_hook::kLbInputRaw:
      source_bit = surface == fushi_voice_hook::kLookupShieldSurfaceRawInputBuffer
                       ? (1u << 3)
                       : (1u << 2);
      break;
    case fushi_voice_hook::kLbInputDi:
      source_bit = surface ==
                           fushi_voice_hook::kLookupShieldSurfaceDirectInputBuffered
                       ? (1u << 5)
                       : (1u << 4);
      break;
    default: break;
  }
  bool state_transition = true;
  if (source_bit != 0u) {
    const uint32_t previous = g_lb_lookup_diagnostic_input_state_mask.load(
        std::memory_order_relaxed);
    const bool was_down = (previous & source_bit) != 0u;
    const bool now_down = down && !up;
    state_transition = was_down != now_down || (down && up);
    if (!state_transition) return;
    if (now_down) {
      g_lb_lookup_diagnostic_input_state_mask.fetch_or(
          source_bit, std::memory_order_relaxed);
    } else {
      g_lb_lookup_diagnostic_input_state_mask.fetch_and(
          ~source_bit, std::memory_order_relaxed);
    }
  }
  const ULONGLONG now = GetTickCount64();
  g_lb_lookup_diagnostic_last_input_tick.store(now, std::memory_order_relaxed);
  const uint32_t flags =
      fushi_voice_hook::kLookupDiagnosticFlagEdge |
      (down ? fushi_voice_hook::kLookupDiagnosticFlagPre : 0u) |
      (up ? fushi_voice_hook::kLookupDiagnosticFlagPost : 0u);
  RecordLittleBustersLookupReason(
      fushi_voice_hook::kLookupDiagnosticEventInput,
      fushi_voice_hook::kLookupDiagnosticProbeP8Input, reason_id, flags, 0u,
      LittleBustersLookupDiagnosticModuleRva(callsite), surface, value);
  // A state sample is not itself a physical edge.  Raw/DI and private/WndProc
  // sources are edge-capable; async/key-state are retained as observations.
  if (down && (raw_sample || di_sample)) {
    BeginLittleBustersPhysicalDown(
        surface, LittleBustersLookupDiagnosticModuleRva(callsite), value);
  }
  if (up && (raw_sample || di_sample)) {
    EndLittleBustersPhysicalUp(
        surface, LittleBustersLookupDiagnosticModuleRva(callsite), value);
  }
}

bool LittleBustersLookupHitAt(HWND window, int32_t x, int32_t y,
                              LittleBustersLookupSubmit* submit) {
  if (submit == nullptr || window == nullptr || !IsWindow(window)) return false;
  LittleBustersLookupModel model = {};
  if (!ReadLittleBustersLookupModel(&model) || !model.valid ||
      model.hwnd != reinterpret_cast<uintptr_t>(window)) {
    return false;
  }
  LittleBustersLookupViewSize view_size;
  if (!ReadLittleBustersLookupViewSize(window, &view_size) ||
      view_size.width != model.view_w || view_size.height != model.view_h ||
      x < 0 || y < 0 || x >= model.view_w || y >= model.view_h) {
    return false;
  }

  const LittleBustersLookupGlyph* matched = nullptr;
  for (uint32_t index = 0u; index < model.glyph_count; ++index) {
    const LittleBustersLookupGlyph& glyph = model.glyphs[index];
    if (x >= glyph.x && y >= glyph.y && x < glyph.x + glyph.w &&
        y < glyph.y + glyph.h) {
      // Records are expected to be disjoint.  If a malformed line overlaps,
      // select the smaller engine rectangle deterministically; never use
      // click order or a string search to break the tie.
      if (matched == nullptr || glyph.w * glyph.h < matched->w * matched->h) {
        matched = &glyph;
      }
    }
  }
  if (matched == nullptr) return false;

  *submit = {};
  submit->valid = true;
  submit->text_seq = model.text_seq;
  submit->text_thread = model.text_thread;
  submit->geometry_generation = model.geometry_generation;
  submit->hwnd = model.hwnd;
  submit->view_w = model.view_w;
  submit->view_h = model.view_h;
  submit->char_index = matched->char_index;
  submit->source_length = matched->source_length;
  submit->char_count = model.char_count;
  submit->glyph_x = matched->x;
  submit->glyph_y = matched->y;
  submit->glyph_w = matched->w;
  submit->glyph_h = matched->h;
  std::memcpy(submit->line, model.line, sizeof(submit->line));
  return true;
}

bool LittleBustersLookupSubmitStillCurrent(
    HWND window, const LittleBustersLookupSubmit& submit) {
  if (!submit.valid || window == nullptr ||
      submit.hwnd != reinterpret_cast<uintptr_t>(window) ||
      GetForegroundWindow() != window || IsLookupOverlayInputShieldVisible()) {
    return false;
  }
  LittleBustersLookupModel model = {};
  if (!ReadLittleBustersLookupModel(&model) || !model.valid ||
      model.hwnd != submit.hwnd || model.text_seq != submit.text_seq ||
      model.text_thread != submit.text_thread ||
      model.geometry_generation != submit.geometry_generation ||
      model.view_w != submit.view_w || model.view_h != submit.view_h ||
      model.char_count != submit.char_count ||
      submit.char_index >= model.char_count) {
    return false;
  }
  for (uint32_t index = 0u; index < model.glyph_count; ++index) {
    const LittleBustersLookupGlyph& glyph = model.glyphs[index];
    if (glyph.char_index == submit.char_index &&
        glyph.source_length == submit.source_length &&
        glyph.x == submit.glyph_x && glyph.y == submit.glyph_y &&
        glyph.w == submit.glyph_w && glyph.h == submit.glyph_h) {
      return std::memcmp(model.line, submit.line, sizeof(model.line)) == 0;
    }
  }
  return false;
}

void ResetLittleBustersLookupGesture() {
  if (g_lb_lookup_gesture.owner !=
          fushi_voice_hook::little_busters::kLbDownOwnerPass &&
      g_lb_lookup_diagnostic_subclassed_window != nullptr &&
      GetCapture() == g_lb_lookup_diagnostic_subclassed_window) {
    ReleaseCapture();
  }
  g_lb_lookup_gesture.owner =
      fushi_voice_hook::little_busters::kLbDownOwnerPass;
  g_lb_lookup_gesture.pending = {};
}

bool BeginLittleBustersLookupGesture(HWND window, int32_t x, int32_t y) {
  using namespace fushi_voice_hook::little_busters;
  if (g_lb_lookup_gesture.owner != kLbDownOwnerPass) return true;

  // The bitmap popup is a separate UI surface.  A game-window click while it
  // is visible is an outside-dismiss transaction and must not leak to Luca.
  if (IsLookupOverlayInputShieldVisible()) {
    (void)RequestLookupOverlayOutsideDismiss();
    g_lb_lookup_gesture.owner = kLbDownOwnerDismiss;
    g_lb_lookup_gesture.pending = {};
    SetCapture(window);
    return true;
  }
  if (g_header == nullptr ||
      fushi_voice_hook::AtomicLoadShared32(&g_header->lookup_enabled) == 0 ||
      GetForegroundWindow() != window) {
    return false;
  }

  const bool native_allowed =
      fushi_voice_hook::g_geometry_provider_registry.NativeInputAllowed(
          g_header,
          fushi_voice_hook::kLookupGeometryProviderEngineExactLayout,
          fushi_voice_hook::kLookupGeometryProviderIdLittleBusters);
  LittleBustersLookupSubmit hit = {};
  const bool glyph_hit = native_allowed &&
                         LittleBustersLookupHitAt(window, x, y, &hit);
  const LittleBustersLookupDownOwner owner =
      DecideLittleBustersDownOwner(false, false, glyph_hit, native_allowed,
                                   native_allowed, glyph_hit);
  if (owner != kLbDownOwnerNative) return false;
  g_lb_lookup_gesture.owner = owner;
  g_lb_lookup_gesture.pending = hit;
  SetCapture(window);
  return true;
}

bool FinishLittleBustersLookupGesture(HWND window) {
  using namespace fushi_voice_hook::little_busters;
  const LittleBustersLookupDownOwner owner = g_lb_lookup_gesture.owner;
  if (owner == kLbDownOwnerPass) return false;
  const LittleBustersLookupSubmit pending = g_lb_lookup_gesture.pending;
  const bool publishable =
      owner == kLbDownOwnerNative &&
      fushi_voice_hook::g_geometry_provider_registry.NativeInputAllowed(
          g_header,
          fushi_voice_hook::kLookupGeometryProviderEngineExactLayout,
          fushi_voice_hook::kLookupGeometryProviderIdLittleBusters) &&
      LittleBustersLookupSubmitStillCurrent(window, pending);
  if (publishable) QueueLittleBustersLookupSubmit(pending);
  ResetLittleBustersLookupGesture();
  return true;
}

void ResetLittleBustersLookupShiftState() {
  g_lb_lookup_last_shift_down = false;
}

bool IsLittleBustersLookupAsyncPollerCallsite(uintptr_t return_address) {
  const uint32_t rva = LittleBustersLookupDiagnosticModuleRva(return_address);
  // The call instruction is inside the hydrated F9E2C0 input poller.  The
  // return address differs by a byte or two between the callsite annotation
  // and the post-call address, so admit only this small instruction window,
  // never every GetAsyncKeyState caller in the process.
  return fushi_voice_hook::little_busters::
      LittleBustersInputPollerReturnAddressRva(rva);
}

void ResetLittleBustersLookupAsyncInputState() {
  g_lb_lookup_async_latch = {};
  g_lb_lookup_async_sample_initialized = false;
  g_lb_lookup_async_last_down = false;
}

void HandleLittleBustersLookupAsyncKeyState(SHORT* state,
                                            uintptr_t return_address) {
  if (state == nullptr ||
      !IsLittleBustersLookupAsyncPollerCallsite(return_address) ||
      g_header == nullptr ||
      g_lb_lookup_diagnostic_identity.load(std::memory_order_acquire) != 1 ||
      g_lb_lookup_diagnostic_install.load(std::memory_order_acquire) != 2) {
    return;
  }

  const uint16_t raw = static_cast<uint16_t>(*state);
  const bool down = (raw & 0x8000u) != 0u;
  const bool pressed = (raw & 0x0001u) != 0u;
  const bool was_down = g_lb_lookup_async_sample_initialized &&
                        g_lb_lookup_async_last_down;
  g_lb_lookup_async_sample_initialized = true;
  const bool press_edge = pressed || (down && !was_down);

  if (press_edge &&
      g_lb_lookup_gesture.owner ==
          fushi_voice_hook::little_busters::kLbDownOwnerPass) {
    const HWND window =
        g_lb_lookup_diagnostic_window.load(std::memory_order_acquire);
    POINT cursor = {};
    if (window != nullptr && IsWindow(window) && GetCursorPos(&cursor) &&
        ScreenToClient(window, &cursor)) {
      (void)BeginLittleBustersLookupGesture(window, cursor.x, cursor.y);
    }
  }

  const bool gesture_owned =
      g_lb_lookup_gesture.owner !=
      fushi_voice_hook::little_busters::kLbDownOwnerPass;
  if (gesture_owned && !g_lb_lookup_async_latch.owned) {
    g_lb_lookup_async_latch.owned = true;
    g_lb_lookup_async_latch.release_seen = false;
    g_lb_lookup_async_latch.speculative = false;
  }

  // Use the shared reducer for the exact poller, just as Leaf/Aquaplus does:
  // it clears both GetAsyncKeyState bits and holds ownership through the
  // matching release plus one neutral sample.  Blank dialogue-box clicks
  // never enter this latch and therefore pass through unchanged.
  if (g_lb_lookup_async_latch.owned) {
    fushi_voice_hook::FilterSampledLeftButtonState(
        false, true, reinterpret_cast<int16_t*>(state),
        &g_lb_lookup_async_latch);
  }

  const bool release_edge = !down && (was_down || pressed);
  if (release_edge && gesture_owned) {
    const HWND window =
        g_lb_lookup_diagnostic_window.load(std::memory_order_acquire);
    (void)FinishLittleBustersLookupGesture(window);
  }
  g_lb_lookup_async_last_down = down;
}

LRESULT CALLBACK DetourLittleBustersLookupWndProc(HWND window, UINT message,
                                                  WPARAM wparam,
                                                  LPARAM lparam) {
  if (g_header != nullptr &&
      g_lb_lookup_diagnostic_identity.load(std::memory_order_relaxed) == 1 &&
      (message == WM_LBUTTONDOWN || message == WM_LBUTTONDBLCLK ||
       message == WM_LBUTTONUP || message == WM_CANCELMODE ||
       message == WM_CAPTURECHANGED)) {
    const bool down = message == WM_LBUTTONDOWN || message == WM_LBUTTONDBLCLK;
    const bool up = message == WM_LBUTTONUP;
    const bool cancel = message == WM_CANCELMODE || message == WM_CAPTURECHANGED;
    const uint32_t flags = fushi_voice_hook::kLookupDiagnosticFlagEdge |
                           (down ? fushi_voice_hook::kLookupDiagnosticFlagPre
                                 : fushi_voice_hook::kLookupDiagnosticFlagPost);
    RecordLittleBustersLookupReason(
        fushi_voice_hook::kLookupDiagnosticEventInput,
        fushi_voice_hook::kLookupDiagnosticProbeP8Input,
        fushi_voice_hook::kLbInputWndproc, flags,
        fushi_voice_hook::little_busters::kLittleBustersWndProcRva, 0u,
        fushi_voice_hook::kLookupShieldSurfaceWin32Messages,
        static_cast<uint64_t>(static_cast<int32_t>(GET_X_LPARAM(lparam))),
        static_cast<uint64_t>(static_cast<int32_t>(GET_Y_LPARAM(lparam))),
        reinterpret_cast<uintptr_t>(window), wparam);
    g_lb_lookup_diagnostic_last_input_tick.store(GetTickCount64(),
                                                  std::memory_order_relaxed);
    if (down) {
      if (BeginLittleBustersLookupGesture(
              window, GET_X_LPARAM(lparam), GET_Y_LPARAM(lparam))) {
        return 0;
      }
    } else if (up) {
      if (FinishLittleBustersLookupGesture(window)) return 0;
    } else if (cancel &&
               g_lb_lookup_gesture.owner !=
                   fushi_voice_hook::little_busters::kLbDownOwnerPass) {
      ResetLittleBustersLookupGesture();
      return 0;
    }
  }
  const WNDPROC original = g_lb_lookup_diagnostic_original_wndproc.load(
      std::memory_order_acquire);
  return original != nullptr && original != &DetourLittleBustersLookupWndProc
             ? CallWindowProcW(original, window, message, wparam, lparam)
             : DefWindowProcW(window, message, wparam, lparam);
}

void ReportLittleBustersWndProcState(uint32_t state, uint32_t reason,
                                     HWND window, uintptr_t observed_proc = 0u,
                                     uint64_t detail = 0u) {
  const uint32_t previous = g_lb_lookup_diagnostic_wndproc_state.exchange(
      state, std::memory_order_relaxed);
  if (previous == state) return;
  const uint32_t flags =
      (reason == fushi_voice_hook::kLbWndprocTargetBound ||
       reason == fushi_voice_hook::kLbWndprocSubclassActive)
          ? 0u
          : fushi_voice_hook::kLookupDiagnosticFlagFailure;
  RecordLittleBustersLookupReason(
      fushi_voice_hook::kLookupDiagnosticEventInput,
      fushi_voice_hook::kLookupDiagnosticProbeP8Input, reason, flags,
      fushi_voice_hook::little_busters::kLittleBustersWndProcRva, 0u,
      fushi_voice_hook::kLookupShieldSurfaceWin32Messages,
      reinterpret_cast<uintptr_t>(window), observed_proc, detail, state);
}

void ResetLittleBustersLookupAsyncInputState();

void InstallLittleBustersLookupWndProc(HWND window) {
  if (window == nullptr || !IsWindow(window)) {
    ReportLittleBustersWndProcState(
        5u, fushi_voice_hook::kLbWndprocHwndUnavailable, window);
    return;
  }
  if (g_lb_lookup_diagnostic_subclassed_window == window) {
    ReportLittleBustersWndProcState(
        4u, fushi_voice_hook::kLbWndprocSubclassActive, window,
        reinterpret_cast<uintptr_t>(&DetourLittleBustersLookupWndProc));
    return;
  }
  if (g_lb_lookup_diagnostic_subclassed_window != nullptr) {
    const LONG_PTR current = GetWindowLongPtrW(
        g_lb_lookup_diagnostic_subclassed_window, GWLP_WNDPROC);
    const WNDPROC old = g_lb_lookup_diagnostic_original_wndproc.load(
        std::memory_order_acquire);
    if (current == reinterpret_cast<LONG_PTR>(&DetourLittleBustersLookupWndProc) &&
        old != nullptr) {
      SetWindowLongPtrW(g_lb_lookup_diagnostic_subclassed_window,
                        GWLP_WNDPROC, reinterpret_cast<LONG_PTR>(old));
    }
    g_lb_lookup_diagnostic_subclassed_window = nullptr;
    g_lb_lookup_diagnostic_original_wndproc.store(nullptr,
                                                   std::memory_order_release);
  }
  SetLastError(ERROR_SUCCESS);
  const LONG_PTR previous = GetWindowLongPtrW(window, GWLP_WNDPROC);
  const DWORD previous_error = GetLastError();
  if (previous == reinterpret_cast<LONG_PTR>(&DetourLittleBustersLookupWndProc)) {
    ReportLittleBustersWndProcState(
        4u, fushi_voice_hook::kLbWndprocSubclassActive, window,
        static_cast<uintptr_t>(previous));
    return;
  }
  if (previous_error != ERROR_SUCCESS || previous == 0) {
    ReportLittleBustersWndProcState(
        1u, fushi_voice_hook::kLbWndprocTargetUnbound, window,
        static_cast<uintptr_t>(previous), previous_error);
  } else if (LittleBustersLookupDiagnosticModuleRva(
                 static_cast<uintptr_t>(previous)) ==
             fushi_voice_hook::little_busters::kLittleBustersWndProcRva) {
    ReportLittleBustersWndProcState(
        2u, fushi_voice_hook::kLbWndprocTargetBound, window,
        static_cast<uintptr_t>(previous));
  } else {
    // A valid WndProc from another module/function means the hydrated FB6950
    // candidate has not been bound to this HWND.  Keep this distinct from a
    // missing HWND and from a SetWindowLongPtr installation failure.
    ReportLittleBustersWndProcState(
        1u, fushi_voice_hook::kLbWndprocTargetUnbound, window,
        static_cast<uintptr_t>(previous));
  }
  SetLastError(ERROR_SUCCESS);
  const LONG_PTR replaced = SetWindowLongPtrW(
      window, GWLP_WNDPROC,
      reinterpret_cast<LONG_PTR>(&DetourLittleBustersLookupWndProc));
  const DWORD install_error = GetLastError();
  if (replaced == 0 && install_error != ERROR_SUCCESS) {
    ReportLittleBustersWndProcState(
        3u, fushi_voice_hook::kLbWndprocSubclassInstallFailed, window,
        static_cast<uintptr_t>(replaced), install_error);
    return;
  }
  g_lb_lookup_diagnostic_original_wndproc.store(
      reinterpret_cast<WNDPROC>(replaced), std::memory_order_release);
  g_lb_lookup_diagnostic_subclassed_window = window;
  g_lb_lookup_diagnostic_window.store(window, std::memory_order_relaxed);
  const LONG_PTR current = GetWindowLongPtrW(window, GWLP_WNDPROC);
  if (current == reinterpret_cast<LONG_PTR>(&DetourLittleBustersLookupWndProc)) {
    ReportLittleBustersWndProcState(
        4u, fushi_voice_hook::kLbWndprocSubclassActive, window,
        static_cast<uintptr_t>(current),
        static_cast<uint64_t>(replaced));
  } else {
    ReportLittleBustersWndProcState(
        3u, fushi_voice_hook::kLbWndprocSubclassInstallFailed, window,
        static_cast<uintptr_t>(current), static_cast<uint64_t>(replaced));
  }
}

void RefreshLittleBustersLookupWindow() {
  const ULONGLONG now = GetTickCount64();
  const ULONGLONG previous = g_lb_lookup_diagnostic_last_window_refresh.load(
      std::memory_order_relaxed);
  if (previous != 0u && now - previous < kLbDiagnosticWindowRefreshMs) return;
  g_lb_lookup_diagnostic_last_window_refresh.store(now,
                                                   std::memory_order_relaxed);
  const HWND window = FindGameMainWindow();
  const HWND previous_window =
      g_lb_lookup_diagnostic_window.load(std::memory_order_relaxed);
  if (window != previous_window) {
    g_lb_lookup_diagnostic_window.store(window, std::memory_order_relaxed);
    g_lb_lookup_diagnostic_client_w.store(0, std::memory_order_relaxed);
    g_lb_lookup_diagnostic_client_h.store(0, std::memory_order_relaxed);
    g_lb_lookup_diagnostic_transform_reported.store(
        0u, std::memory_order_relaxed);
    ResetLittleBustersLookupGesture();
    ResetLittleBustersLookupShiftState();
    ResetLittleBustersLookupAsyncInputState();
    ClearLittleBustersLookupModel();
    g_lb_lookup_active_layout_ctext.store(0u, std::memory_order_relaxed);
    g_lb_lookup_active_layout_item.store(0u, std::memory_order_relaxed);
    g_lb_lookup_active_layout_records.store(0u, std::memory_order_relaxed);
    g_lb_lookup_active_layout_record_count.store(
        0u, std::memory_order_relaxed);
    g_lb_lookup_active_layout_seq.store(0u, std::memory_order_relaxed);
    g_lb_lookup_active_layout_thread.store(0u, std::memory_order_relaxed);
  }
  if (window == nullptr) {
    RecordLittleBustersLookupReason(
        fushi_voice_hook::kLookupDiagnosticEventTransform,
        fushi_voice_hook::kLookupDiagnosticProbeP6Transform,
        fushi_voice_hook::kLbXformHwndMissing,
        fushi_voice_hook::kLookupDiagnosticFlagFailure);
    return;
  }
  LittleBustersLookupViewSize view_size;
  const bool client_ok =
      ReadLittleBustersLookupViewSize(window, &view_size);
  g_lb_lookup_diagnostic_client_w.store(
      client_ok ? view_size.width : 0, std::memory_order_relaxed);
  g_lb_lookup_diagnostic_client_h.store(
      client_ok ? view_size.height : 0, std::memory_order_relaxed);
  if (!client_ok) {
    RecordLittleBustersLookupReason(
        fushi_voice_hook::kLookupDiagnosticEventTransform,
        fushi_voice_hook::kLookupDiagnosticProbeP6Transform,
        fushi_voice_hook::kLbXformClientMissing,
        fushi_voice_hook::kLookupDiagnosticFlagFailure, 0u, 0u, 0u,
        reinterpret_cast<uintptr_t>(window));
  } else if (window != previous_window) {
    POINT origin = {0, 0};
    const bool ok = ClientToScreen(window, &origin) != FALSE;
    RecordLittleBustersLookupReason(
        fushi_voice_hook::kLookupDiagnosticEventTransform,
        fushi_voice_hook::kLookupDiagnosticProbeP6Transform,
        fushi_voice_hook::kLbXformClientCaptured,
        ok ? 0u : fushi_voice_hook::kLookupDiagnosticFlagFailure, 0u, 0u, 0u,
        reinterpret_cast<uintptr_t>(window),
        (static_cast<uint64_t>(static_cast<uint32_t>(origin.x)) << 32) |
            static_cast<uint32_t>(origin.y),
        static_cast<uint64_t>(static_cast<uint32_t>(view_size.width)) << 32 |
            static_cast<uint32_t>(view_size.height));
  }
  InstallLittleBustersLookupWndProc(window);
}

void RecordLittleBustersLookupMethodNoCall(uint32_t index) {
  if (index >=
          fushi_voice_hook::little_busters::kLittleBustersConcreteProbeCount ||
      g_lb_lookup_diagnostic_concrete_no_call_reported[index]) {
    return;
  }
  g_lb_lookup_diagnostic_concrete_no_call_reported[index] = true;
  RecordLittleBustersLookupReason(
      fushi_voice_hook::kLookupDiagnosticEventMethod,
      fushi_voice_hook::kLookupDiagnosticProbeP2Vtable,
      fushi_voice_hook::kLbMethodNoCall,
      fushi_voice_hook::kLookupDiagnosticFlagFailure,
      fushi_voice_hook::little_busters::kLittleBustersConcreteProbes[index].rva,
      0u, 0u,
      static_cast<uint64_t>(g_lb_lookup_diagnostic_concrete_calls[index].load(
          std::memory_order_relaxed)),
      g_lb_lookup_diagnostic_concrete_hooked[index] ? 1u : 0u);
  if (fushi_voice_hook::little_busters::kLittleBustersConcreteProbes[index]
          .rva ==
      fushi_voice_hook::little_busters::kLittleBustersParserHandoffRva) {
    const LittleBustersParserPending pending =
        g_lb_lookup_diagnostic_parser_pending;
    if (pending.valid && pending.source_matches_occurrence) {
      RecordLittleBustersExplicitOccurrence(
          fushi_voice_hook::kLookupDiagnosticEventLayout,
          fushi_voice_hook::kLookupDiagnosticProbeP4Layout,
          fushi_voice_hook::kLbProducerHandoffNotObserved, pending,
          fushi_voice_hook::kLookupDiagnosticFlagFailure,
          fushi_voice_hook::little_busters::kLittleBustersParserHandoffRva,
          0u, pending.source, pending.source_length, pending.source_hash,
          pending.ctext);
    }
  }
}

void InstallLittleBustersLookupConcreteProbes() {
#if defined(_MSC_VER) && defined(_M_IX86)
  for (uint32_t index = 0u; index <
       fushi_voice_hook::little_busters::kLittleBustersConcreteProbeCount;
       ++index) {
    const auto& spec =
        fushi_voice_hook::little_busters::kLittleBustersConcreteProbes[index];
    if (spec.kind == kLbConcreteObservationOnly) continue;
    uintptr_t target = 0u;
    if (!ResolveLittleBustersLookupRva(spec.rva, 1u, &target) ||
        !IsLittleBustersLookupExecutableRva(spec.rva)) {
      RecordLittleBustersLookupReason(
          fushi_voice_hook::kLookupDiagnosticEventMethod,
          fushi_voice_hook::kLookupDiagnosticProbeP2Vtable,
          fushi_voice_hook::kLbMethodHookUnavailable,
          fushi_voice_hook::kLookupDiagnosticFlagFailure, spec.rva);
      continue;
    }
    bool hooked = false;
    if (spec.kind == kLbConcreteHitTest) {
      hooked = HookFn(reinterpret_cast<void*>(target),
                      reinterpret_cast<void*>(&DetourLittleBustersHitTest),
                      reinterpret_cast<void**>(
                          &g_lb_lookup_diagnostic_original_hit_test));
    } else if (spec.kind == kLbConcreteSelector) {
      hooked = HookFn(reinterpret_cast<void*>(target),
                      reinterpret_cast<void*>(&DetourLittleBustersSelector),
                      reinterpret_cast<void**>(
                          &g_lb_lookup_diagnostic_original_selector));
    } else if (spec.kind == kLbConcreteScriptRequest) {
      hooked = HookFn(
          reinterpret_cast<void*>(target),
          reinterpret_cast<void*>(&DetourLittleBustersScriptRequest),
          reinterpret_cast<void**>(
              &g_lb_lookup_diagnostic_original_script_request));
    } else if (spec.kind == kLbConcreteParserHandoff) {
      hooked = HookFn(
          reinterpret_cast<void*>(target),
          reinterpret_cast<void*>(&DetourLittleBustersParserHandoff),
          reinterpret_cast<void**>(
              &g_lb_lookup_diagnostic_original_parser_handoff));
    } else if (spec.kind == kLbConcreteLayoutDraw) {
      hooked = HookFn(
          reinterpret_cast<void*>(target),
          reinterpret_cast<void*>(&DetourLittleBustersLayoutDraw),
          reinterpret_cast<void**>(&g_lb_lookup_diagnostic_original_layout_draw));
    } else {
      void** original = g_lb_lookup_diagnostic_original_slots[index];
      LittleBustersLookupDetour detour = g_lb_lookup_diagnostic_detours[index];
      hooked = original != nullptr && detour != nullptr &&
               HookFn(reinterpret_cast<void*>(target),
                      reinterpret_cast<void*>(detour), original);
    }
    g_lb_lookup_diagnostic_concrete_hooked[index] = hooked;
    RecordLittleBustersLookupReason(
        fushi_voice_hook::kLookupDiagnosticEventMethod,
        fushi_voice_hook::kLookupDiagnosticProbeP2Vtable,
        hooked ? fushi_voice_hook::kLbMethodHooked
               : fushi_voice_hook::kLbMethodHookUnavailable,
        hooked ? 0u : fushi_voice_hook::kLookupDiagnosticFlagFailure,
        spec.rva, 0u, 0u, target, spec.internal_label ? 1u : 0u);
  }
#else
  RecordLittleBustersLookupReason(
      fushi_voice_hook::kLookupDiagnosticEventMethod,
      fushi_voice_hook::kLookupDiagnosticProbeP2Vtable,
      fushi_voice_hook::kLbMethodHookUnavailable,
      fushi_voice_hook::kLookupDiagnosticFlagFailure);
#endif
}

bool LittleBustersLookupProductionHooksReady() {
#if defined(_MSC_VER) && defined(_M_IX86)
  // The hydrated runtime's live production bridge is the cText layout seam
  // at F2D580.  The authoritative occurrence comes from the already-running
  // Luna/TextSlot bridge in PublishLittleBustersLookupOccurrence(), so the
  // statically recovered F24D30/F25630 labels are diagnostic-only here: this
  // build does not execute through them on the normal dialogue path.  Making
  // them readiness gates left the provider permanently unavailable even
  // though F2D580 was repeatedly producing complete item/record arrays.
  constexpr uint32_t kRequiredRvas[] = {
      0x0007D580u,  // active cText item/record layout updates
  };
  for (const uint32_t rva : kRequiredRvas) {
    const int index = FindLittleBustersConcreteProbeIndex(rva);
    if (index < 0 ||
        !g_lb_lookup_diagnostic_concrete_hooked[static_cast<size_t>(index)]) {
      return false;
    }
  }
  return true;
#else
  return false;
#endif
}

void ValidateLittleBustersHydratedVtables() {
  if (g_lb_lookup_diagnostic_machine != IMAGE_FILE_MACHINE_I386) return;
  for (uint32_t index = 0u; index <
       fushi_voice_hook::little_busters::kLittleBustersLookupCandidateCount;
       ++index) {
    const auto& spec =
        fushi_voice_hook::little_busters::kLittleBustersLookupCandidates[index];
    uint32_t slot = UINT32_MAX;
    uintptr_t target = 0u;
    uintptr_t rtti = 0u;
    const bool valid = ValidateLittleBustersLookupCandidate(
        spec, &slot, &target, &rtti);
    LookupDiagnosticEvent event = {};
    event.event_kind = fushi_voice_hook::kLookupDiagnosticEventMethod;
    event.probe_id = fushi_voice_hook::kLookupDiagnosticProbeP2Vtable;
    event.reason_id = valid ? fushi_voice_hook::kLbVtableHydrated
                            : fushi_voice_hook::kLbVtableNotHydrated;
    event.flags = valid ? 0u : fushi_voice_hook::kLookupDiagnosticFlagFailure;
    event.candidate_rva = spec.target_rva;
    event.vtable_slot = valid ? slot : UINT32_MAX;
    event.vptr_rva = spec.vtable_rva;
    event.argument0 = LittleBustersLookupDiagnosticModuleRva(rtti);
    event.argument1 = LittleBustersLookupDiagnosticModuleRva(target);
    event.result0 = target;  // live hydrated pointer, retained for correlation
    event.result1 = valid ? 1u : 0u;
    RecordLittleBustersLookupDiagnostic(event);
  }
}

void ProcessLittleBustersSemanticDiagnostics() {
  const uint64_t observed = g_lb_lookup_diagnostic_last_input_tick.load(
      std::memory_order_relaxed);
  if (observed == 0u) return;
  const ULONGLONG now = GetTickCount64();
  if (now < observed || now - observed < kLbDiagnosticSemanticClassifyDelayMs ||
      g_lb_lookup_diagnostic_semantic_reported.exchange(
          true, std::memory_order_relaxed)) {
    return;
  }
  const bool physical = g_lb_lookup_diagnostic_physical_left_edge.load(
      std::memory_order_relaxed);
  const bool selector = g_lb_lookup_diagnostic_selector7_queried.load(
      std::memory_order_relaxed);
  const bool selector_result = g_lb_lookup_diagnostic_selector7_result.load(
      std::memory_order_relaxed);
  const bool callsite = g_lb_lookup_diagnostic_semantic_callsite_seen.load(
      std::memory_order_relaxed);
  const bool script = g_lb_lookup_diagnostic_f70a50_called.load(
      std::memory_order_relaxed);
  if (!physical) {
    RecordLittleBustersLookupReason(
        fushi_voice_hook::kLookupDiagnosticEventSemantic,
        fushi_voice_hook::kLookupDiagnosticProbeP9Semantic,
        fushi_voice_hook::kLbPhysicalLeftEdgeMiss,
        fushi_voice_hook::kLookupDiagnosticFlagFailure);
  }
  // Keep these gates independent.  A missing physical edge must not hide a
  // separate semantic-callsite or selector observation failure in the same
  // bounded runtime window.
  if (!callsite) {
    RecordLittleBustersLookupReason(
        fushi_voice_hook::kLookupDiagnosticEventSemantic,
        fushi_voice_hook::kLookupDiagnosticProbeP9Semantic,
        fushi_voice_hook::kLbSemanticNotSeen,
        fushi_voice_hook::kLookupDiagnosticFlagFailure);
  }
  if (!selector) {
    RecordLittleBustersLookupReason(
        fushi_voice_hook::kLookupDiagnosticEventSemantic,
        fushi_voice_hook::kLookupDiagnosticProbeP9Semantic,
        fushi_voice_hook::kLbSelector7NotQueried,
        fushi_voice_hook::kLookupDiagnosticFlagFailure);
  } else if (!selector_result) {
    // EE4370 emitted the definitive false result; retain it here as the
    // post-window summary as well so it cannot be confused with "not
    // queried" when the callsite is noisy.
    RecordLittleBustersLookupReason(
        fushi_voice_hook::kLookupDiagnosticEventSemantic,
        fushi_voice_hook::kLookupDiagnosticProbeP9Semantic,
        fushi_voice_hook::kLbSelector7False,
        fushi_voice_hook::kLookupDiagnosticFlagFailure);
  } else {
    RecordLittleBustersLookupReason(
        fushi_voice_hook::kLookupDiagnosticEventSemantic,
        fushi_voice_hook::kLookupDiagnosticProbeP9Semantic,
        fushi_voice_hook::kLbSelector7True, 0u);
  }
  if (!script) {
    RecordLittleBustersLookupReason(
        fushi_voice_hook::kLookupDiagnosticEventSemantic,
        fushi_voice_hook::kLookupDiagnosticProbeP9Semantic,
        fushi_voice_hook::kLbF70A50NotCalled,
        fushi_voice_hook::kLookupDiagnosticFlagFailure);
  } else if (!g_lb_lookup_diagnostic_script_state_changed.load(
                 std::memory_order_relaxed)) {
    RecordLittleBustersLookupReason(
        fushi_voice_hook::kLookupDiagnosticEventSemantic,
        fushi_voice_hook::kLookupDiagnosticProbeP9Semantic,
        fushi_voice_hook::kLbScriptStateNoOccurrence,
        fushi_voice_hook::kLookupDiagnosticFlagFailure);
  }
}

void ReportLittleBustersProviderDiagnostics() {
  if (g_lb_lookup_diagnostic_provider_reported.exchange(
          true, std::memory_order_relaxed)) {
    return;
  }
  // This is a one-shot snapshot for the diagnostic surface only.  The
  // production decision is made by OfferReady/Retire below and never by the
  // diagnostic ring.
  const bool model_ready = LittleBustersLookupModelReady();
  RecordLittleBustersLookupReason(
      fushi_voice_hook::kLookupDiagnosticEventProvider,
      fushi_voice_hook::kLookupDiagnosticProbeP7Admission,
      model_ready
          ? fushi_voice_hook::kLbProviderOfferReady
          : fushi_voice_hook::kLbProviderOfferMiss,
      model_ready
          ? 0u
          : fushi_voice_hook::kLookupDiagnosticFlagFailure,
      0u, 0u, 0u,
      fushi_voice_hook::AtomicLoadShared32(&g_header->lookup_enabled),
      fushi_voice_hook::AtomicLoadPreview64(&g_header->lookup_hit_count),
      g_lb_lookup_diagnostic_model_failure.load(std::memory_order_relaxed),
      g_lb_lookup_diagnostic_model_failure_detail.load(
          std::memory_order_relaxed));
  const auto admission = fushi_voice_hook::ReadLookupGeometryAdmission(g_header);
  RecordLittleBustersLookupReason(
      fushi_voice_hook::kLookupDiagnosticEventProvider,
      fushi_voice_hook::kLookupDiagnosticProbeP7Admission,
      admission.valid && admission.native_input_allowed()
          ? fushi_voice_hook::kLbNativePermissionSnapshot
          : fushi_voice_hook::kLbNativeDeny,
      admission.valid && admission.native_input_allowed()
          ? 0u
          : fushi_voice_hook::kLookupDiagnosticFlagFailure,
      0u, 0u, 0u, admission.flags, admission.mode,
      fushi_voice_hook::AtomicLoadShared32(&g_header->lookup_enabled));
  if (fushi_voice_hook::AtomicLoadShared32(&g_header->lookup_enabled) == 0u) {
    RecordLittleBustersLookupReason(
        fushi_voice_hook::kLookupDiagnosticEventProvider,
        fushi_voice_hook::kLookupDiagnosticProbeP7Admission,
        fushi_voice_hook::kLbAdmissionReject,
        fushi_voice_hook::kLookupDiagnosticFlagFailure);
  }
}

bool PublishLittleBustersLookupSubmit(
    const LittleBustersLookupSubmit& submit) {
  if (g_header == nullptr || !submit.valid || submit.text_seq == 0u ||
      submit.text_thread == 0u || submit.geometry_generation == 0u ||
      submit.hwnd == 0u || submit.char_count == 0u ||
      submit.char_count >= kLbDiagnosticMaxTextUnits ||
      submit.char_index >= submit.char_count || submit.source_length == 0u ||
      submit.source_length > submit.char_count - submit.char_index ||
      submit.view_w <= 0 || submit.view_h <= 0 || submit.glyph_x < 0 ||
      submit.glyph_y < 0 || submit.glyph_w <= 0 || submit.glyph_h <= 0 ||
      submit.glyph_x + submit.glyph_w > submit.view_w ||
      submit.glyph_y + submit.glyph_h > submit.view_h ||
      fushi_voice_hook::LookupUtf16SourceLength(
          submit.line, submit.char_count, submit.char_index) !=
          submit.source_length) {
    return false;
  }

  char line_utf8[fushi_voice_hook::kLookupLineBytes] = {};
  const int line_bytes = WideCharToMultiByte(
      CP_UTF8, WC_ERR_INVALID_CHARS, submit.line,
      static_cast<int>(submit.char_count), line_utf8,
      static_cast<int>(sizeof(line_utf8)), nullptr, nullptr);
  if (line_bytes <= 0 ||
      static_cast<uint32_t>(line_bytes) > fushi_voice_hook::kLookupLineBytes) {
    return false;
  }

  fushi_voice_hook::LookupGeometryHitPublication publication;
  publication.provider_kind =
      fushi_voice_hook::kLookupGeometryProviderEngineExactLayout;
  publication.provider_id =
      fushi_voice_hook::kLookupGeometryProviderIdLittleBusters;
  publication.char_index = submit.char_index;
  publication.source_length = submit.source_length;
  publication.char_count = submit.char_count;
  publication.coordinate_space =
      fushi_voice_hook::kLookupCoordinateSpaceClientPhysicalPixels;
  publication.writing_mode = fushi_voice_hook::kLookupWritingModeHorizontal;
  publication.text_generation = submit.text_seq;
  publication.geometry_generation = submit.geometry_generation;
  publication.glyph_x = submit.glyph_x;
  publication.glyph_y = submit.glyph_y;
  publication.glyph_w = submit.glyph_w;
  publication.glyph_h = submit.glyph_h;
  publication.view_w = submit.view_w;
  publication.view_h = submit.view_h;
  publication.flags = fushi_voice_hook::kLookupHitFlagSubmit;
  publication.line_utf8 = reinterpret_cast<const uint8_t*>(line_utf8);
  publication.line_bytes = static_cast<uint32_t>(line_bytes);
  return fushi_voice_hook::g_geometry_provider_registry.PublishHit(
             g_header, publication) != false;
}

void ProcessLittleBustersLookupSubmits() {
  LittleBustersLookupSubmit submit = {};
  if (!ReadLittleBustersLookupSubmit(&submit)) return;
  (void)PublishLittleBustersLookupSubmit(submit);
}

void ProcessLittleBustersLookup() {
  if (g_header == nullptr || !IsLittleBustersLookupNameCandidate()) return;
  const bool matched = IsLittleBustersProfileMatched();
  const int old_identity = g_lb_lookup_diagnostic_identity.exchange(
      matched ? 1 : -1, std::memory_order_relaxed);
  if (old_identity != (matched ? 1 : -1)) {
    ResetLittleBustersLookupDiagnosticThrottle();
  }
  fushi_voice_hook::AtomicStoreShared32(&g_header->lookup_diagnostics_enabled, 1u);
  fushi_voice_hook::AtomicStoreShared32(
      &g_header->lookup_diagnostic_schema_version,
      fushi_voice_hook::kLookupDiagnosticSchemaVersion);
  if (old_identity != (matched ? 1 : -1)) {
    uintptr_t base = 0u;
    size_t image_bytes = 0u;
    uint16_t machine = 0u;
    const bool image_ok = ReadLittleBustersLookupImageInfo(
        GetModuleHandleW(nullptr), &base, &image_bytes, &machine);
    RecordLittleBustersLookupReason(
        fushi_voice_hook::kLookupDiagnosticEventIdentity,
        fushi_voice_hook::kLookupDiagnosticProbeP0Identity,
        matched && image_ok ? fushi_voice_hook::kLbIdMatch
                             : fushi_voice_hook::kLbIdMismatch,
        matched && image_ok ? 0u : fushi_voice_hook::kLookupDiagnosticFlagFailure,
        0u, 0u, 0u, base, image_bytes,
        machine, GetCurrentProcessId());
    if (image_ok) {
      g_lb_lookup_diagnostic_module_base = base;
      g_lb_lookup_diagnostic_image_bytes = image_bytes;
      g_lb_lookup_diagnostic_machine = machine;
    }
  }
  if (!matched) {
    ResetLittleBustersLookupShiftState();
    return;
  }

  RefreshLittleBustersLookupWindow();
  PublishLittleBustersLookupOccurrence();
  // Only one thread may perform the one-time concrete-hook installation.  A
  // plain exchange here used to reset the state from 2 (ready) back to 1 on
  // every subsequent text occurrence, which made the provider permanently
  // unavailable even though all required hooks had already been installed.
  int install_expected = 0;
  if (g_lb_lookup_diagnostic_install.compare_exchange_strong(
          install_expected, 1, std::memory_order_acq_rel,
          std::memory_order_relaxed)) {
    if (g_lb_lookup_diagnostic_module_base == 0u) {
      uintptr_t base = 0u;
      size_t bytes = 0u;
      uint16_t machine = 0u;
      if (ReadLittleBustersLookupImageInfo(GetModuleHandleW(nullptr), &base,
                                           &bytes, &machine)) {
        g_lb_lookup_diagnostic_module_base = base;
        g_lb_lookup_diagnostic_image_bytes = bytes;
        g_lb_lookup_diagnostic_machine = machine;
      }
    }
    if (g_lb_lookup_diagnostic_module_base != 0u) {
      ValidateLittleBustersHydratedVtables();
      InstallLittleBustersLookupConcreteProbes();
      const bool production_hooks_ready =
          LittleBustersLookupProductionHooksReady();
      g_lb_lookup_diagnostic_install.store(
          production_hooks_ready ? 2 : -1, std::memory_order_relaxed);
      if (production_hooks_ready) {
        g_lb_lookup_diagnostic_install_tick = GetTickCount64();
      }
    } else {
      g_lb_lookup_diagnostic_install.store(-1, std::memory_order_relaxed);
    }
  }
  InstallLittleBustersLookupWndProc(
      g_lb_lookup_diagnostic_window.load(std::memory_order_relaxed));
  RetryLittleBustersLookupModelFromActiveLayout();

  const bool runtime_enabled =
      fushi_voice_hook::AtomicLoadShared32(&g_header->lookup_enabled) != 0u;
  const uint16_t shift_state =
      static_cast<uint16_t>(GetAsyncKeyState(VK_SHIFT));
  const bool shift_submit =
      fushi_voice_hook::little_busters::ConsumeLittleBustersLookupShiftSample(
          shift_state, &g_lb_lookup_last_shift_down);
  if (!runtime_enabled) {
    ResetLittleBustersLookupShiftState();
    ClearLittleBustersLookupModel();
  }
  const bool model_ready = runtime_enabled &&
                           g_lb_lookup_diagnostic_install.load(
                               std::memory_order_acquire) == 2 &&
                           LittleBustersLookupModelReady();
  const uint32_t model_failure =
      g_lb_lookup_diagnostic_model_failure.load(std::memory_order_relaxed);
  if (model_failure != 0u) {
    uint32_t expected = 0u;
    if (g_lb_lookup_diagnostic_model_failure_reported.compare_exchange_strong(
            expected, model_failure, std::memory_order_relaxed,
            std::memory_order_relaxed)) {
      RecordLittleBustersLookupReason(
          fushi_voice_hook::kLookupDiagnosticEventProvider,
          fushi_voice_hook::kLookupDiagnosticProbeP7Admission,
          fushi_voice_hook::kLbProviderOfferMiss,
          fushi_voice_hook::kLookupDiagnosticFlagFailure, 0u, 0u, 0u,
          model_failure,
          g_lb_lookup_diagnostic_model_failure_detail.load(
              std::memory_order_relaxed));
    }
  }
  if (model_ready) {
    (void)fushi_voice_hook::g_geometry_provider_registry.OfferReady(
        g_header, fushi_voice_hook::kLookupGeometryProviderEngineExactLayout,
        fushi_voice_hook::kLookupGeometryProviderIdLittleBusters);
  } else {
    (void)fushi_voice_hook::g_geometry_provider_registry.Retire(
        g_header, fushi_voice_hook::kLookupGeometryProviderEngineExactLayout,
        fushi_voice_hook::kLookupGeometryProviderIdLittleBusters);
  }
  ProcessLittleBustersLookupSubmits();

  // Match Anemoi/Siglus: Shift is an explicit lookup intent, and the current
  // cursor is resolved against the exact engine layout.  The submit enters
  // the same queue as a left-click, so popup/window behavior remains shared.
  if (shift_submit && model_ready && !IsLookupOverlayInputShieldVisible()) {
    const HWND window =
        g_lb_lookup_diagnostic_window.load(std::memory_order_acquire);
    POINT cursor = {};
    const bool cursor_ready =
        window != nullptr && IsWindow(window) && GetCursorPos(&cursor);
    const HWND point_window = cursor_ready ? WindowFromPoint(cursor) : nullptr;
    const bool game_point =
        cursor_ready && GetForegroundWindow() == window &&
        point_window != nullptr &&
        (point_window == window || IsChild(window, point_window));
    if (game_point &&
        fushi_voice_hook::g_geometry_provider_registry.NativeInputAllowed(
            g_header,
            fushi_voice_hook::kLookupGeometryProviderEngineExactLayout,
            fushi_voice_hook::kLookupGeometryProviderIdLittleBusters) &&
        ScreenToClient(window, &cursor)) {
      LittleBustersLookupSubmit hit = {};
      if (LittleBustersLookupHitAt(window, cursor.x, cursor.y, &hit) &&
          LittleBustersLookupSubmitStillCurrent(window, hit)) {
        QueueLittleBustersLookupSubmit(hit);
      }
    }
  }

  ProcessLittleBustersSemanticDiagnostics();
  ReportLittleBustersProviderDiagnostics();

  const ULONGLONG now = GetTickCount64();
  const ULONGLONG layout_begin =
      g_lb_lookup_diagnostic_layout_begin_tick.load(std::memory_order_relaxed);
  if (layout_begin != 0u && now >= layout_begin &&
      now - layout_begin >= kLbDiagnosticSemanticClassifyDelayMs &&
      g_lb_lookup_diagnostic_layout_record_seen.load(
          std::memory_order_relaxed) &&
      !g_lb_lookup_diagnostic_layout_sealed.load(
          std::memory_order_relaxed) &&
      !g_lb_lookup_diagnostic_layout_not_sealed_reported.exchange(
          true, std::memory_order_relaxed)) {
    RecordLittleBustersLookupReason(
        fushi_voice_hook::kLookupDiagnosticEventLayout,
        fushi_voice_hook::kLookupDiagnosticProbeP4Layout,
        fushi_voice_hook::kLbLayoutNotSealed,
        fushi_voice_hook::kLookupDiagnosticFlagFailure);
  }
  if (g_lb_lookup_diagnostic_install_tick != 0u &&
      now >= g_lb_lookup_diagnostic_install_tick &&
      now - g_lb_lookup_diagnostic_install_tick >= kLbDiagnosticNoCallDelayMs) {
    for (uint32_t index = 0u; index <
         fushi_voice_hook::little_busters::kLittleBustersConcreteProbeCount;
         ++index) {
      if (g_lb_lookup_diagnostic_concrete_hooked[index] &&
          g_lb_lookup_diagnostic_concrete_calls[index].load(
              std::memory_order_relaxed) == 0) {
        RecordLittleBustersLookupMethodNoCall(index);
      }
    }
    if (!g_lb_lookup_diagnostic_d3d_fallback_reported.exchange(
            true, std::memory_order_relaxed) &&
        GetModuleHandleW(L"d3d11.dll") != nullptr &&
        !g_lb_lookup_diagnostic_layout_draw_seen.load(
            std::memory_order_relaxed)) {
      const uintptr_t d3d_module = reinterpret_cast<uintptr_t>(
          GetModuleHandleW(L"d3d11.dll"));
      RecordLittleBustersLookupReason(
          fushi_voice_hook::kLookupDiagnosticEventMethod,
          fushi_voice_hook::kLookupDiagnosticProbeP3Renderer,
          fushi_voice_hook::kLbD3d11FallbackUnobserved,
          fushi_voice_hook::kLookupDiagnosticFlagFailure, 0u, 0u, 0u,
          d3d_module);
      // This is deliberately not LB_TEXTURE_BLIT_ONLY: without a hydrated
      // D3D command/resource observer we cannot distinguish a texture blit
      // from an unhooked draw path.  The token records that exact blind spot.
      RecordLittleBustersLookupReason(
          fushi_voice_hook::kLookupDiagnosticEventLayout,
          fushi_voice_hook::kLookupDiagnosticProbeP3Renderer,
          fushi_voice_hook::kLbTextureBlitUnobserved,
          fushi_voice_hook::kLookupDiagnosticFlagFailure, 0u, 0u, 0u,
          d3d_module);
    }
    const HMODULE d3d_module = GetModuleHandleW(L"d3d11.dll");
    const uint64_t generation =
        g_lb_lookup_diagnostic_geometry_generation.load(
            std::memory_order_relaxed);
    const bool command_raw_observed =
        generation != 0u &&
        g_lb_lookup_diagnostic_render_snapshot_generation.load(
            std::memory_order_relaxed) == generation;
    if (d3d_module != nullptr &&
        g_lb_lookup_diagnostic_layout_draw_seen.load(
            std::memory_order_relaxed) &&
        !command_raw_observed &&
        !g_lb_lookup_diagnostic_texture_unobserved_reported.exchange(
            true, std::memory_order_relaxed)) {
      RecordLittleBustersLookupReason(
          fushi_voice_hook::kLookupDiagnosticEventLayout,
          fushi_voice_hook::kLookupDiagnosticProbeP3Renderer,
          fushi_voice_hook::kLbTextureBlitUnobserved,
          fushi_voice_hook::kLookupDiagnosticFlagFailure, 0u, 0u, 0u,
          reinterpret_cast<uintptr_t>(d3d_module), generation);
    }
  }
}

void StopLittleBustersLookupDiagnostics() {
  if (g_header != nullptr) {
    fushi_voice_hook::AtomicStoreShared32(
        &g_header->lookup_diagnostics_enabled, 0u);
  }
  const HWND window = g_lb_lookup_diagnostic_subclassed_window;
  if (window != nullptr && IsWindow(window)) {
    const LONG_PTR current = GetWindowLongPtrW(window, GWLP_WNDPROC);
    const WNDPROC original = g_lb_lookup_diagnostic_original_wndproc.load(
        std::memory_order_acquire);
    if (current == reinterpret_cast<LONG_PTR>(&DetourLittleBustersLookupWndProc) &&
        original != nullptr) {
      SetWindowLongPtrW(window, GWLP_WNDPROC,
                        reinterpret_cast<LONG_PTR>(original));
    }
  }
  g_lb_lookup_diagnostic_subclassed_window = nullptr;
  g_lb_lookup_diagnostic_original_wndproc.store(nullptr,
                                                 std::memory_order_release);
  ResetLittleBustersLookupGesture();
  ResetLittleBustersLookupShiftState();
  ResetLittleBustersLookupAsyncInputState();
  ClearLittleBustersLookupModel();
  g_lb_lookup_submit_version.fetch_add(1u, std::memory_order_acq_rel);
  g_lb_lookup_submit = {};
  g_lb_lookup_submit_version.fetch_add(1u, std::memory_order_release);
  g_lb_lookup_submit_consumed_version =
      g_lb_lookup_submit_version.load(std::memory_order_acquire);
  g_lb_lookup_diagnostic_window.store(nullptr, std::memory_order_relaxed);
  g_lb_lookup_diagnostic_last_user32_poll_emit.store(
      0u, std::memory_order_relaxed);
  g_lb_lookup_diagnostic_last_user32_x.store(0u, std::memory_order_relaxed);
  g_lb_lookup_diagnostic_last_user32_y.store(0u, std::memory_order_relaxed);
  g_lb_lookup_diagnostic_render_snapshot_count.store(
      0u, std::memory_order_relaxed);
  g_lb_lookup_diagnostic_input_state_mask.store(0u,
                                                std::memory_order_relaxed);
  g_lb_lookup_diagnostic_last_input_tick.store(0u,
                                                std::memory_order_relaxed);
  g_lb_lookup_diagnostic_last_physical_edge_tick.store(
      0u, std::memory_order_relaxed);
  g_lb_lookup_diagnostic_physical_left_edge.store(
      false, std::memory_order_relaxed);
  g_lb_lookup_diagnostic_physical_down.store(false,
                                               std::memory_order_relaxed);
  g_lb_lookup_diagnostic_wndproc_state.store(0u,
                                             std::memory_order_relaxed);
  g_lb_lookup_diagnostic_identity.store(0, std::memory_order_relaxed);
  g_lb_lookup_diagnostic_install.store(0, std::memory_order_relaxed);
  g_lb_lookup_diagnostic_model_failure.store(0u, std::memory_order_relaxed);
  g_lb_lookup_diagnostic_model_failure_detail.store(
      0u, std::memory_order_relaxed);
  g_lb_lookup_diagnostic_model_failure_reported.store(
      0u, std::memory_order_relaxed);
  g_lb_lookup_active_layout_ctext.store(0u, std::memory_order_relaxed);
  g_lb_lookup_active_layout_item.store(0u, std::memory_order_relaxed);
  g_lb_lookup_active_layout_records.store(0u, std::memory_order_relaxed);
  g_lb_lookup_active_layout_record_count.store(0u,
                                               std::memory_order_relaxed);
  g_lb_lookup_active_layout_seq.store(0u, std::memory_order_relaxed);
  g_lb_lookup_active_layout_thread.store(0u, std::memory_order_relaxed);
  ResetLittleBustersLookupDiagnosticThrottle();
}

}  // namespace
