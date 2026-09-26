// Exact, build-pinned TextShow bridge for totsulover.exe.
// The script interpreter passes body offset, speaker offset and voice key in
// one invocation. The detour only copies four scalars; worker resolves PAC
// members and publishes the body/OGG with the same committed text event ID.
#include "softpal_profile.h"

struct SoftpalArchive {
  std::wstring path;
  std::vector<fushi_voice_hook::SoftpalPacEntry> entries;
  BY_HANDLE_FILE_INFORMATION identity = {};
  bool ready = false;
};

struct SoftpalTextTask {
  uint32_t body_offset = 0;
  uint32_t speaker_offset = 0;
  uint32_t voice_key = 0;
  uint64_t tick_ms = 0;
};

constexpr uint32_t kSoftpalNoVoice = 0x0fffffffu;
constexpr size_t kSoftpalTaskSlots = 64;
constexpr uint32_t kSoftpalMaxOggBytes = 1024 * 1024;
SoftpalArchive g_softpal_voice, g_softpal_patch;
std::vector<uint8_t> g_softpal_text, g_softpal_files;
std::vector<uint32_t> g_softpal_text_offsets;
SoftpalTextTask g_softpal_tasks[kSoftpalTaskSlots] = {};
size_t g_softpal_head = 0, g_softpal_tail = 0;
CRITICAL_SECTION g_softpal_task_cs;
std::atomic<bool> g_softpal_task_cs_ready{false};
bool g_softpal_hook_installed = false;
int g_softpal_profile_state = 0;
uint32_t g_softpal_install_flags = 0;
using SoftpalTextShowFn = int(__cdecl*)(void*);
SoftpalTextShowFn g_softpal_original_text_show = nullptr;

HANDLE SoftpalOpenRead(const wchar_t* path) {
  const auto open = g_orig_CreateFileW != nullptr ? g_orig_CreateFileW : &CreateFileW;
  return open(path, GENERIC_READ, FILE_SHARE_READ | FILE_SHARE_WRITE |
              FILE_SHARE_DELETE, nullptr, OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL,
              nullptr);
}

void SoftpalClose(HANDLE file) {
  if (file == INVALID_HANDLE_VALUE) return;
  const auto close = g_orig_CloseHandle != nullptr ? g_orig_CloseHandle : &CloseHandle;
  close(file);
}

bool SoftpalReadAt(HANDLE file, uint64_t offset, void* data, uint32_t bytes) {
  if (file == INVALID_HANDLE_VALUE || !data || bytes == 0) return false;
  LARGE_INTEGER position = {};
  position.QuadPart = static_cast<LONGLONG>(offset);
  if (!SetFilePointerEx(file, position, nullptr, FILE_BEGIN)) return false;
  const auto read = g_orig_ReadFile != nullptr ? g_orig_ReadFile : &ReadFile;
  uint8_t* target = static_cast<uint8_t*>(data);
  uint32_t done = 0;
  while (done < bytes) {
    DWORD got = 0;
    if (!read(file, target + done, bytes - done, &got, nullptr) || got == 0)
      return false;
    done += got;
  }
  return true;
}

bool SoftpalSameFile(const BY_HANDLE_FILE_INFORMATION& a,
                     const BY_HANDLE_FILE_INFORMATION& b) {
  return a.dwVolumeSerialNumber == b.dwVolumeSerialNumber &&
         a.nFileIndexHigh == b.nFileIndexHigh &&
         a.nFileIndexLow == b.nFileIndexLow &&
         a.nFileSizeHigh == b.nFileSizeHigh &&
         a.nFileSizeLow == b.nFileSizeLow &&
         a.ftLastWriteTime.dwHighDateTime == b.ftLastWriteTime.dwHighDateTime &&
         a.ftLastWriteTime.dwLowDateTime == b.ftLastWriteTime.dwLowDateTime;
}

bool SoftpalLoadArchive(const std::wstring& path, SoftpalArchive* result) {
  if (!result) return false;
  HANDLE file = SoftpalOpenRead(path.c_str());
  if (file == INVALID_HANDLE_VALUE) return false;
  LARGE_INTEGER size = {};
  BY_HANDLE_FILE_INFORMATION identity = {};
  uint8_t header[12] = {};
  bool ok = GetFileSizeEx(file, &size) && size.QuadPart >= 0x804 &&
      size.QuadPart <= UINT32_MAX &&
      GetFileInformationByHandle(file, &identity) &&
      SoftpalReadAt(file, 0, header, sizeof(header)) &&
      std::memcmp(header, "PAC ", 4) == 0;
  uint32_t count = ok ? fushi_voice_hook::SoftpalLe32(header + 8) : 0;
  const uint64_t index_bytes = 0x804ull + uint64_t(count) * 40;
  ok = ok && count > 0 && count <= 30000 &&
       index_bytes <= static_cast<uint64_t>(size.QuadPart);
  std::vector<uint8_t> index;
  if (ok) {
    index.resize(static_cast<size_t>(index_bytes));
    ok = SoftpalReadAt(file, 0, index.data(),
                       static_cast<uint32_t>(index.size())) &&
         fushi_voice_hook::ParseSoftpalPacIndex(
             index.data(), index.size(), static_cast<uint64_t>(size.QuadPart),
             &result->entries);
  }
  SoftpalClose(file);
  if (!ok) return false;
  result->path = path;
  result->identity = identity;
  result->ready = true;
  return true;
}

bool SoftpalReadMember(const SoftpalArchive& archive,
                       const fushi_voice_hook::SoftpalPacEntry& entry,
                       std::vector<uint8_t>* result) {
  if (!archive.ready || !result || entry.size > 16 * 1024 * 1024)
    return false;
  HANDLE file = SoftpalOpenRead(archive.path.c_str());
  if (file == INVALID_HANDLE_VALUE) return false;
  BY_HANDLE_FILE_INFORMATION current = {};
  const bool same = GetFileInformationByHandle(file, &current) &&
                    SoftpalSameFile(archive.identity, current);
  std::vector<uint8_t> bytes;
  if (same) bytes.resize(entry.size);
  const bool ok = same && SoftpalReadAt(file, entry.offset,
                                        bytes.data(), entry.size);
  SoftpalClose(file);
  if (ok) *result = std::move(bytes);
  return ok;
}

bool SoftpalLoadResources() {
  wchar_t executable[MAX_PATH] = {};
  const DWORD n = GetModuleFileNameW(nullptr, executable, MAX_PATH);
  if (n == 0 || n >= MAX_PATH) return false;
  wchar_t* slash = wcsrchr(executable, L'\\');
  if (!slash) return false;
  *(slash + 1) = 0;
  const std::wstring root(executable);
  std::array<uint8_t, 32> digest = {};
  if (!Sha256FileForLeafAquaplus((root + L"data.pac").c_str(), &digest) ||
      digest != fushi_voice_hook::kTotsuloverDataPacSha256 ||
      !Sha256FileForLeafAquaplus((root + L"dll\\Pal.dll").c_str(), &digest) ||
      digest != fushi_voice_hook::kTotsuloverPalDllSha256) return false;
  SoftpalArchive data;
  if (!SoftpalLoadArchive(root + L"data.pac", &data) ||
      !SoftpalLoadArchive(root + L"voice.pac", &g_softpal_voice) ||
      !SoftpalLoadArchive(root + L"patch.pac", &g_softpal_patch)) return false;
  const auto* text = fushi_voice_hook::FindSoftpalPacMember(
      data.entries, "TEXT.DAT");
  const auto* files = fushi_voice_hook::FindSoftpalPacMember(
      data.entries, "FILE.DAT");
  if (!text || !files || !SoftpalReadMember(data, *text, &g_softpal_text) ||
      !SoftpalReadMember(data, *files, &g_softpal_files) ||
      g_softpal_text.size() < 16 || g_softpal_files.size() < 16 ||
      std::memcmp(g_softpal_text.data(), "_TEXT_LIST__", 12) != 0 ||
      std::memcmp(g_softpal_files.data(), "_FILE_LIST__", 12) != 0 ||
      g_softpal_files.size() !=
          16ull + uint64_t(fushi_voice_hook::SoftpalLe32(
                      g_softpal_files.data() + 12)) * 32ull ||
      !fushi_voice_hook::ParseSoftpalTextRecordOffsets(
          g_softpal_text.data(), g_softpal_text.size(),
          &g_softpal_text_offsets)) return false;
  return true;
}

bool SoftpalMeasuredBuild() {
  if (g_softpal_profile_state != 0) return g_softpal_profile_state > 0;
  wchar_t executable[MAX_PATH] = {};
  const DWORD n = GetModuleFileNameW(nullptr, executable, MAX_PATH);
  if (n == 0 || n >= MAX_PATH) {
    g_softpal_profile_state = -1;
    return false;
  }
  const wchar_t* slash = wcsrchr(executable, L'\\');
  const wchar_t* name = slash ? slash + 1 : executable;
  if (_wcsicmp(name, L"totsulover.exe") != 0) {
    g_softpal_profile_state = -1;
    return false;
  }
  std::array<uint8_t, 32> digest = {};
  const bool hashed = Sha256FileForLeafAquaplus(executable, &digest);
  if (hashed)
    fushi_voice_hook::PublishHostExecutableSha256(digest.data(), digest.size());
  g_softpal_profile_state =
      hashed && fushi_voice_hook::MatchesSoftpalProfile(digest) ? 1 : -1;
  if (g_softpal_profile_state > 0) g_softpal_install_flags |= 1u;
  return g_softpal_profile_state > 0;
}

int __cdecl SoftpalTextShowDetour(void* context) {
  if (g_capture_enabled &&
      g_softpal_task_cs_ready.load(std::memory_order_acquire) && context) {
    SoftpalTextTask task;
    bool valid = false;
    __try {
      const auto* bytes = static_cast<const uint8_t*>(context);
      const uint32_t count = *reinterpret_cast<const uint32_t*>(bytes + 0x45e90);
      if (count >= 4 && count <= 4096) {
        const auto* values = reinterpret_cast<const uint32_t*>(bytes + 0x3f178);
        const uint32_t* args = values + count - 4;
        task.body_offset = args[1];
        task.speaker_offset = args[2];
        task.voice_key = args[3];
        task.tick_ms = GetTickCount64();
        valid = args[0] == 0 && task.body_offset >= 16 &&
                task.body_offset < g_softpal_text.size() &&
                (task.voice_key == kSoftpalNoVoice ||
                 task.voice_key <
                     fushi_voice_hook::SoftpalLe32(g_softpal_files.data() + 12));
      }
    } __except (EXCEPTION_EXECUTE_HANDLER) {
      valid = false;
    }
    if (valid && TryEnterCriticalSection(&g_softpal_task_cs)) {
      const size_t next = (g_softpal_tail + 1) % kSoftpalTaskSlots;
      if (next != g_softpal_head) {
        g_softpal_tasks[g_softpal_tail] = task;
        g_softpal_tail = next;
      }
      LeaveCriticalSection(&g_softpal_task_cs);
    }
  }
  return g_softpal_original_text_show
      ? g_softpal_original_text_show(context) : 0;
}

bool SoftpalInstallTextShow() {
  if (g_softpal_hook_installed) return true;
  if (!SoftpalMeasuredBuild() || !SoftpalLoadResources()) return false;
  g_softpal_install_flags |= 2u;
  HMODULE host = GetModuleHandleW(nullptr);
  if (!host) return false;
  auto* target = reinterpret_cast<uint8_t*>(
      reinterpret_cast<uintptr_t>(host) +
      fushi_voice_hook::kTotsuloverTextShowRva);
  if (std::memcmp(target,
                  fushi_voice_hook::kTotsuloverTextShowPrologue.data(),
                  fushi_voice_hook::kTotsuloverTextShowPrologue.size()) != 0)
    return false;
  g_softpal_install_flags |= 4u;
  InitializeCriticalSection(&g_softpal_task_cs);
  g_softpal_task_cs_ready.store(true, std::memory_order_release);
  g_softpal_hook_installed = HookFn(
      target, reinterpret_cast<void*>(&SoftpalTextShowDetour),
      reinterpret_cast<void**>(&g_softpal_original_text_show));
  if (g_softpal_hook_installed) g_softpal_install_flags |= 8u;
  if (!g_softpal_hook_installed) {
    g_softpal_task_cs_ready.store(false, std::memory_order_release);
    DeleteCriticalSection(&g_softpal_task_cs);
  }
  return g_softpal_hook_installed;
}

void ProcessSoftpalTextTasks() {
  if (!g_softpal_hook_installed || !g_capture_enabled ||
      !g_text_cs_ready) return;
  for (size_t i = 0; i < kSoftpalTaskSlots; ++i) {
    SoftpalTextTask task;
    EnterCriticalSection(&g_softpal_task_cs);
    const bool has_task = g_softpal_head != g_softpal_tail;
    if (has_task) {
      task = g_softpal_tasks[g_softpal_head];
      g_softpal_head = (g_softpal_head + 1) % kSoftpalTaskSlots;
    }
    LeaveCriticalSection(&g_softpal_task_cs);
    if (!has_task) break;

    if (!std::binary_search(g_softpal_text_offsets.begin(),
                            g_softpal_text_offsets.end(), task.body_offset))
      continue;
    char cp932[4096] = {};
    size_t length = 0;
    if (!fushi_voice_hook::SoftpalDialogueBytes(
            g_softpal_text.data(), g_softpal_text.size(), task.body_offset,
            cp932, sizeof(cp932), &length)) continue;
    wchar_t dialogue[512] = {};
    const int units = MultiByteToWideChar(
        932, MB_ERR_INVALID_CHARS, cp932, static_cast<int>(length),
        dialogue, static_cast<int>(std::size(dialogue) - 1));
    if (units <= 0 || units > 500) continue;
    EnterCriticalSection(&g_text_cs);
    uint64_t committed_tick = 0;
    const uint64_t event_id = WriteTextRingEntryLocked(
        dialogue, units, 0x534f465450414c01ull,
        fushi_voice_hook::kTotsuloverTextShowRva, 0,
        fushi_voice_hook::kTextSourceSoftpal, "Softpal TextShow", nullptr,
        &committed_tick);
    if (event_id && g_header) g_header->luna_active = 1;
    LeaveCriticalSection(&g_text_cs);
    if (!event_id || task.voice_key == kSoftpalNoVoice) continue;

    char member[33] = {};
    if (!fushi_voice_hook::SoftpalVoiceMemberName(
            g_softpal_files.data(), g_softpal_files.size(),
            task.voice_key, member)) continue;
    const SoftpalArchive* archive = &g_softpal_patch;
    const auto* entry = fushi_voice_hook::FindSoftpalPacMember(
        archive->entries, member);
    if (!entry) {
      archive = &g_softpal_voice;
      entry = fushi_voice_hook::FindSoftpalPacMember(
          archive->entries, member);
    }
    if (!entry || entry->size > kSoftpalMaxOggBytes) continue;
    std::vector<uint8_t> ogg;
    if (!SoftpalReadMember(*archive, *entry, &ogg) ||
        fushi_voice_hook::siglus::CompleteOggBytes(
            ogg.data(), static_cast<uint32_t>(ogg.size())) != ogg.size())
      continue;
    wchar_t wide_member[33] = {};
    const int member_units = MultiByteToWideChar(
        CP_ACP, 0, member, -1, wide_member, static_cast<int>(std::size(wide_member)));
    if (member_units <= 0) continue;
    WriteVoiceOggAt(ogg.data(), static_cast<uint32_t>(ogg.size()),
                    wide_member, committed_tick ? committed_tick : task.tick_ms,
                    event_id);
  }
}

void ShutdownSoftpalTextShow() {
  // Global capture is disabled before registry shutdown. Keep MinHook's
  // trampoline alive until the shared hook teardown has completed.
  g_softpal_hook_installed = false;
  // Registry shutdown precedes MH_DisableHook. Leave the tiny lock allocated
  // until DLL unload so an in-flight detour cannot touch a deleted lock.
  g_softpal_task_cs_ready.store(false, std::memory_order_release);
  // A detour that passed g_capture_enabled immediately before shutdown may
  // still be reading the immutable tables. Retain them until DLL unload.
  g_softpal_head = g_softpal_tail = 0;
}

class SoftpalAdapter final : public fushi_voice_hook::EngineAdapter {
 public:
  const char* id() const override { return "softpal"; }
  bool probe() const override { return SoftpalMeasuredBuild(); }
  bool install() override {
    installed_ = SoftpalInstallTextShow();
    return installed_;
  }
  void ProcessPendingEvents() { ProcessSoftpalTextTasks(); }
  fushi_voice_hook::AdapterCapability capabilities() const override {
    return fushi_voice_hook::AdapterCapability::kText |
           fushi_voice_hook::AdapterCapability::kResourceAudio;
  }
  void onModuleLoaded(const wchar_t*) override {}
  void shutdown() override {
    ShutdownSoftpalTextShow();
    installed_ = false;
  }
  fushi_voice_hook::AdapterDiagnostics diagnostics() const override {
    return {id(), probe(), installed_, g_softpal_install_flags};
  }
 private:
  bool installed_ = false;
};
