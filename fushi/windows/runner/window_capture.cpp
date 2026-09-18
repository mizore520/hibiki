#include "window_capture.h"

#include <windows.h>

#include <dwmapi.h>
#include <d3d11.h>
#include <dxgi.h>
#include <wincodec.h>
#include <shlwapi.h>

#include <wrl/client.h>
#include <wrl/event.h>

#include <windows.foundation.h>
#include <windows.graphics.h>
#include <windows.graphics.capture.h>
#include <windows.graphics.capture.interop.h>
#include <windows.graphics.directx.h>
#include <windows.graphics.directx.direct3d11.h>
#include <windows.graphics.directx.direct3d11.interop.h>

#include "wgc_interop.h"

#include <atomic>
#include <cstdio>
#include <limits>

namespace fushi {

namespace {

// Bound each BGRA frame before allocating the WGC pool or CPU staging copy.
// The Dart calibration boundary uses the same 32-megapixel image limit.
constexpr bool CaptureSizeWithinBudget(uint64_t width, uint64_t height) {
  constexpr uint64_t kMaximumFrameBytes = 128ULL * 1024 * 1024;
  return width > 0 && height > 0 &&
         width <= (kMaximumFrameBytes / 4) / height;
}
static_assert(CaptureSizeWithinBudget(7680, 4320));
static_assert(!CaptureSizeWithinBudget(0, 1080));
static_assert(!CaptureSizeWithinBudget(65536, 65536));
static_assert(!CaptureSizeWithinBudget(UINT64_MAX, UINT64_MAX));

bool ReadCaptureClient(HWND hwnd, WindowCaptureMetadata* metadata) {
  RECT client{};
  POINT origin{};
  if (!metadata || !IsWindow(hwnd) || IsIconic(hwnd) ||
      !GetClientRect(hwnd, &client) || !ClientToScreen(hwnd, &origin)) {
    return false;
  }
  POINT end{client.right, client.bottom};
  DWORD pid = 0;
  if (!ClientToScreen(hwnd, &end) ||
      !GetWindowThreadProcessId(hwnd, &pid) || pid == 0 ||
      end.x <= origin.x || end.y <= origin.y) {
    return false;
  }
  const UINT dpi = GetDpiForWindow(hwnd);
  if (dpi == 0) return false;
  metadata->captured_hwnd = reinterpret_cast<int64_t>(hwnd);
  metadata->captured_pid = pid;
  metadata->client_left_px = origin.x;
  metadata->client_top_px = origin.y;
  metadata->client_width_px = end.x - origin.x;
  metadata->client_height_px = end.y - origin.y;
  metadata->dpi = dpi;
  return true;
}

bool SameCaptureClient(const WindowCaptureMetadata& a,
                       const WindowCaptureMetadata& b) {
  return a.captured_hwnd == b.captured_hwnd &&
         a.captured_pid == b.captured_pid &&
         a.client_left_px == b.client_left_px &&
         a.client_top_px == b.client_top_px &&
         a.client_width_px == b.client_width_px &&
         a.client_height_px == b.client_height_px && a.dpi == b.dpi;
}

bool RectHasArea(const RECT& rect) {
  return rect.right > rect.left && rect.bottom > rect.top;
}

bool RectWithin(const RECT& inner, const RECT& outer) {
  return RectHasArea(inner) && RectHasArea(outer) &&
         inner.left >= outer.left && inner.top >= outer.top &&
         inner.right <= outer.right && inner.bottom <= outer.bottom;
}

bool SameRect(const RECT& a, const RECT& b) {
  return a.left == b.left && a.top == b.top && a.right == b.right &&
         a.bottom == b.bottom;
}

int RectWidth(const RECT& rect) {
  return rect.right > rect.left ? rect.right - rect.left : 0;
}

int RectHeight(const RECT& rect) {
  return rect.bottom > rect.top ? rect.bottom - rect.top : 0;
}

uint32_t ReadWindowPid(HWND hwnd) {
  DWORD pid = 0;
  if (hwnd != nullptr) {
    GetWindowThreadProcessId(hwnd, &pid);
  }
  return static_cast<uint32_t>(pid);
}

void SetRectMetadata(const RECT& source_rect, const RECT& destination_rect,
                     WindowCaptureMetadata* metadata) {
  if (metadata == nullptr) {
    return;
  }
  metadata->source_viewport_left_px = source_rect.left;
  metadata->source_viewport_top_px = source_rect.top;
  metadata->source_viewport_width_px = RectWidth(source_rect);
  metadata->source_viewport_height_px = RectHeight(source_rect);
  metadata->destination_viewport_left_px = destination_rect.left;
  metadata->destination_viewport_top_px = destination_rect.top;
  metadata->destination_viewport_width_px = RectWidth(destination_rect);
  metadata->destination_viewport_height_px = RectHeight(destination_rect);
}

void SetCaptureProvenance(WindowCaptureMetadata* metadata, HWND captured_hwnd,
                          HWND source_hwnd,
                          const MagpiePresentationMapping* mapping) {
  if (metadata == nullptr) {
    return;
  }
  if (source_hwnd == nullptr) {
    source_hwnd = captured_hwnd;
  }
  metadata->source_hwnd = reinterpret_cast<int64_t>(source_hwnd);
  metadata->source_pid = ReadWindowPid(source_hwnd);
  metadata->presentation_hwnd = reinterpret_cast<int64_t>(captured_hwnd);
  metadata->presentation_pid = ReadWindowPid(captured_hwnd);
  metadata->used_presentation_capture = mapping != nullptr;
  metadata->presentation_viewport_complete = false;

  RECT source_rect{};
  RECT destination_rect{};
  if (mapping != nullptr) {
    source_rect = mapping->source_rect_screen;
    destination_rect = mapping->destination_rect_screen;
  } else {
    source_rect.left = metadata->client_left_px;
    source_rect.top = metadata->client_top_px;
    source_rect.right = source_rect.left + metadata->client_width_px;
    source_rect.bottom = source_rect.top + metadata->client_height_px;
    destination_rect = source_rect;
  }
  SetRectMetadata(source_rect, destination_rect, metadata);
}

using Microsoft::WRL::ComPtr;
using Microsoft::WRL::Callback;
namespace WGC = ABI::Windows::Graphics::Capture;
namespace WGDX = ABI::Windows::Graphics::DirectX;
namespace WGDXD3D = ABI::Windows::Graphics::DirectX::Direct3D11;

using wgc::GetActivationFactory;
using wgc::IDxgiInterfaceAccessLocal;
using wgc::CloseIfClosable;

std::string WideToUtf8(const std::wstring& w) {
  if (w.empty()) {
    return std::string();
  }
  int size = WideCharToMultiByte(CP_UTF8, 0, w.data(),
                                 static_cast<int>(w.size()), nullptr, 0,
                                 nullptr, nullptr);
  if (size <= 0) {
    return std::string();
  }
  std::string out(static_cast<size_t>(size), '\0');
  WideCharToMultiByte(CP_UTF8, 0, w.data(), static_cast<int>(w.size()),
                      out.data(), size, nullptr, nullptr);
  return out;
}

// BUG-1096：把一次「成功但值得记录」的事实追加进 diagnostics（多条以 "; " 相连）。
// [hr] 为 S_OK 时不附 HRESULT（纯陈述），否则附十六进制码。
void AppendDiagnostic(WindowCaptureResult* out, const char* note, HRESULT hr) {
  if (out == nullptr || note == nullptr) {
    return;
  }
  std::string line = note;
  if (hr != S_OK) {
    char hr_buf[16];
    _snprintf_s(hr_buf, sizeof(hr_buf), _TRUNCATE, "0x%08lX",
                static_cast<unsigned long>(hr));
    line += " hr=";
    line += hr_buf;
  }
  if (!out->diagnostics.empty()) {
    out->diagnostics += "; ";
  }
  out->diagnostics += line;
}

// Keep the capture reason bounded and machine-readable. The human-readable
// error remains useful to the immediate caller, but must not be persisted into
// calibration diagnostics.
void SetCaptureFailure(WindowCaptureResult* out, const char* reason,
                       const char* error) {
  if (out == nullptr) {
    return;
  }
  out->capture_reason = reason == nullptr ? "capture_failed" : reason;
  out->error = error == nullptr ? "capture failed" : error;
}

void SetCaptureReason(WindowCaptureResult* out, const char* reason) {
  if (out != nullptr && reason != nullptr) {
    out->capture_reason = reason;
  }
}

}  // namespace

// BUG-1854：把 WGC 整窗纹理裁到窗口**客户区**。
//
// `CreateForWindow` 拿到的 item 覆盖窗口的整个 DWM 视觉（= DWMWA_EXTENDED_FRAME_BOUNDS），
// 标题栏 / 菜单栏 / 边框全在里面，窗口化跑的 galgame 制卡必然把标题栏拍进卡片。
// 裁剪原点 = 客户区屏幕原点（ClientToScreen）− 扩展框架原点：不能用 GetWindowRect
// 的 left/top，Win10+ 的不可见 resize 边框会让它比 DWM 视觉原点偏出几像素（OBS 的
// 「Client Area」选项是同一套算法）。
//
// **两个角都必须经 ClientToScreen**，不能拿屏幕空间的原点去加 GetClientRect 的宽高。
// 本进程是 PerMonitorV2（runner.exe.manifest），ClientToScreen / 扩展框架原点 / WGC
// 纹理三者同为物理像素；但 `GetClientRect` 返回的是**目标窗口自己坐标空间**里的尺寸，
// 而老 galgame 大量是 DPI-unaware 进程 —— 在缩放屏上 DWM 会把它整窗放大，纹理是放大
// 后的物理尺寸，GetClientRect 却仍是放大前的逻辑尺寸。两者直接相加会把裁剪框算小，
// 而且 right/bottom 仍然大于 left/top，走不到下面的失败回退，是一次**静默**的错裁。
// 把右下角也过一遍 ClientToScreen，两个角就落在同一个坐标系里，缩放与否都对。
//
// 返回 true 时 [box] 是 [width]×[height] 纹理内的一个非空子矩形（已与纹理求交）；
// 任何一步失败（窗口最小化 / API 失败 / 退化成空矩形）返回 false，调用方回退整窗——
// 宁可多一条标题栏，也不能因为裁剪把卡片图弄丢。
bool ComputeClientCropBox(HWND hwnd, UINT width, UINT height, RECT* box) {
  if (hwnd == nullptr || box == nullptr || width == 0 || height == 0) {
    return false;
  }
  RECT client{};
  RECT frame{};
  POINT origin{0, 0};
  if (!GetClientRect(hwnd, &client) || client.right <= 0 ||
      client.bottom <= 0 ||
      FAILED(DwmGetWindowAttribute(hwnd, DWMWA_EXTENDED_FRAME_BOUNDS, &frame,
                                   sizeof(frame))) ||
      !ClientToScreen(hwnd, &origin)) {
    return false;
  }
  // 右下角走同一条换算，别用 origin + GetClientRect 的宽高（见函数头注释）。
  POINT far_corner{client.right, client.bottom};
  if (!ClientToScreen(hwnd, &far_corner)) {
    return false;
  }
  const LONG left = std::max<LONG>(0, origin.x - frame.left);
  const LONG top = std::max<LONG>(0, origin.y - frame.top);
  if (left >= static_cast<LONG>(width) || top >= static_cast<LONG>(height)) {
    return false;
  }
  const LONG right =
      std::min<LONG>(static_cast<LONG>(width), far_corner.x - frame.left);
  const LONG bottom =
      std::min<LONG>(static_cast<LONG>(height), far_corner.y - frame.top);
  if (right <= left || bottom <= top) {
    return false;
  }
  box->left = left;
  box->top = top;
  box->right = right;
  box->bottom = bottom;
  return true;
}

// Convert a screen-space Magpie viewport into the WGC texture's coordinates.
// Magpie publishes physical screen pixels, while CreateForWindow starts at
// the DWM extended frame.  The caller must still verify that the returned box
// was not clipped and that its dimensions equal the published destination
// viewport; this helper only computes the intersection with the texture.
bool ComputeScreenCropBox(HWND hwnd, const RECT& screen_rect, UINT width,
                          UINT height, RECT* box) {
  if (hwnd == nullptr || box == nullptr || width == 0 || height == 0 ||
      !RectHasArea(screen_rect)) {
    return false;
  }
  RECT frame{};
  if (FAILED(DwmGetWindowAttribute(hwnd, DWMWA_EXTENDED_FRAME_BOUNDS, &frame,
                                   sizeof(frame)))) {
    return false;
  }
  const LONG left = std::max<LONG>(0, screen_rect.left - frame.left);
  const LONG top = std::max<LONG>(0, screen_rect.top - frame.top);
  if (left >= static_cast<LONG>(width) || top >= static_cast<LONG>(height)) {
    return false;
  }
  const LONG right = std::min<LONG>(static_cast<LONG>(width),
                                    screen_rect.right - frame.left);
  const LONG bottom = std::min<LONG>(static_cast<LONG>(height),
                                     screen_rect.bottom - frame.top);
  if (right <= left || bottom <= top) {
    return false;
  }
  box->left = left;
  box->top = top;
  box->right = right;
  box->bottom = bottom;
  return true;
}

namespace {

// 读窗口标题（无标题返回空串）。
std::wstring ReadWindowTitle(HWND hwnd) {
  const int len = GetWindowTextLengthW(hwnd);
  if (len <= 0) {
    return std::wstring();
  }
  std::wstring title(static_cast<size_t>(len) + 1, L'\0');
  const int got = GetWindowTextW(hwnd, title.data(), len + 1);
  title.resize(got > 0 ? static_cast<size_t>(got) : 0);
  return title;
}

struct EnumContext {
  HWND self;
  std::vector<ExternalWindow>* out;
};

BOOL CALLBACK EnumProc(HWND hwnd, LPARAM lparam) {
  auto* ctx = reinterpret_cast<EnumContext*>(lparam);
  if (hwnd == ctx->self || !IsWindowVisible(hwnd)) {
    return TRUE;
  }
  // 跳过 cloaked 窗口（UWP 挂起 / 其它虚拟桌面的隐藏窗口）。
  BOOL cloaked = FALSE;
  if (SUCCEEDED(DwmGetWindowAttribute(hwnd, DWMWA_CLOAKED, &cloaked,
                                      sizeof(cloaked))) &&
      cloaked) {
    return TRUE;
  }
  // 跳过工具窗口（浮动工具条等，非用户内容窗口）。
  const LONG ex_style = GetWindowLong(hwnd, GWL_EXSTYLE);
  if (ex_style & WS_EX_TOOLWINDOW) {
    return TRUE;
  }
  std::wstring title = ReadWindowTitle(hwnd);
  if (title.empty()) {
    return TRUE;
  }
  // BUG-1096：Magpie 缩放窗口在这里就换成它正在缩放的**源窗口**——否则用户选中的
  // 是「游戏画面 + Magpie 补画的第二个光标」那一层，PID 也是 Magpie.exe 而不是游戏
  // （voice hook 的注入目标同样会错）。拿不到属性时保持原窗口不变。
  HWND target = hwnd;
  if (const HWND source = ResolveScalingSourceWindow(hwnd)) {
    target = source;
    std::wstring source_title = ReadWindowTitle(source);
    if (!source_title.empty()) {
      title = std::move(source_title);
    }
  }
  // 重定向后可能与单独枚举到的源窗口重合（Z 序谁先到都可能），按 hwnd 去重。
  for (const ExternalWindow& existing : *ctx->out) {
    if (existing.hwnd == target) {
      return TRUE;
    }
  }
  ExternalWindow w;
  w.hwnd = target;
  w.title = WideToUtf8(title);
  // 所属进程 PID（供 galgame 引擎级 voice hook 注入目标；纯读，不改窗口）。
  GetWindowThreadProcessId(target, &w.pid);
  ctx->out->push_back(std::move(w));
  return TRUE;
}

// BGRA 像素缓冲 -> PNG 字节（WIC）。stride 为源每行字节数（可含行尾 padding）。
std::vector<uint8_t> EncodeBgraToPng(const uint8_t* pixels, UINT width,
                                     UINT height, UINT stride,
                                     std::string* error) {
  std::vector<uint8_t> result;
  ComPtr<IWICImagingFactory> factory;
  HRESULT hr = CoCreateInstance(CLSID_WICImagingFactory, nullptr,
                                CLSCTX_INPROC_SERVER, IID_PPV_ARGS(&factory));
  if (FAILED(hr)) {
    *error = "WIC factory create failed";
    return result;
  }
  ComPtr<IStream> stream;
  stream.Attach(SHCreateMemStream(nullptr, 0));
  if (!stream) {
    *error = "memory stream alloc failed";
    return result;
  }
  ComPtr<IWICBitmapEncoder> encoder;
  hr = factory->CreateEncoder(GUID_ContainerFormatPng, nullptr, &encoder);
  if (SUCCEEDED(hr)) {
    hr = encoder->Initialize(stream.Get(), WICBitmapEncoderNoCache);
  }
  ComPtr<IWICBitmapFrameEncode> frame;
  ComPtr<IPropertyBag2> props;
  if (SUCCEEDED(hr)) {
    hr = encoder->CreateNewFrame(&frame, &props);
  }
  if (SUCCEEDED(hr)) {
    hr = frame->Initialize(props.Get());
  }
  if (SUCCEEDED(hr)) {
    hr = frame->SetSize(width, height);
  }
  WICPixelFormatGUID fmt = GUID_WICPixelFormat32bppBGRA;
  if (SUCCEEDED(hr)) {
    hr = frame->SetPixelFormat(&fmt);
  }
  if (SUCCEEDED(hr)) {
    const UINT buf_size = stride * height;
    hr = frame->WritePixels(height, stride, buf_size,
                            const_cast<BYTE*>(pixels));
  }
  if (SUCCEEDED(hr)) {
    hr = frame->Commit();
  }
  if (SUCCEEDED(hr)) {
    hr = encoder->Commit();
  }
  if (FAILED(hr)) {
    *error = "PNG encode failed";
    return result;
  }
  // 把内存流回读进 vector。
  STATSTG stat = {};
  if (FAILED(stream->Stat(&stat, STATFLAG_NONAME))) {
    *error = "stream stat failed";
    return result;
  }
  const ULONG size = static_cast<ULONG>(stat.cbSize.QuadPart);
  LARGE_INTEGER zero = {};
  stream->Seek(zero, STREAM_SEEK_SET, nullptr);
  result.resize(size);
  ULONG read = 0;
  if (size > 0 && FAILED(stream->Read(result.data(), size, &read))) {
    *error = "stream read failed";
    result.clear();
    return result;
  }
  result.resize(read);
  return result;
}

}  // namespace

// D3D11 设备（BGRA 支持），硬件失败回退 WARP。
ComPtr<ID3D11Device> CreateD3DDevice() {
  ComPtr<ID3D11Device> device;
  const UINT flags = D3D11_CREATE_DEVICE_BGRA_SUPPORT;
  HRESULT hr = D3D11CreateDevice(nullptr, D3D_DRIVER_TYPE_HARDWARE, nullptr,
                                 flags, nullptr, 0, D3D11_SDK_VERSION,
                                 device.GetAddressOf(), nullptr, nullptr);
  if (FAILED(hr)) {
    device.Reset();
    D3D11CreateDevice(nullptr, D3D_DRIVER_TYPE_WARP, nullptr, flags, nullptr, 0,
                      D3D11_SDK_VERSION, device.GetAddressOf(), nullptr,
                      nullptr);
  }
  return device;
}

// BUG-1096：Magpie 缩放窗 -> 源窗口。判定契约是**窗口属性** `Magpie.SrcHWND`
// （Magpie 在缩放窗上 SetProp 的公开标记），不是类名——类名里的 GUID 属于实现细节，
// 属性名才是跨版本稳定的那一条。属性缺失 / 指向自身 / 句柄已失效都返回 nullptr，
// 调用方原样保留传入窗口（Never break：没装 Magpie 的用户走的路径与以前逐字相同）。
HWND ResolveScalingSourceWindow(HWND hwnd) {
  if (hwnd == nullptr || !IsWindow(hwnd)) {
    return nullptr;
  }
  const HANDLE prop = GetPropW(hwnd, L"Magpie.SrcHWND");
  if (prop == nullptr) {
    return nullptr;
  }
  HWND source = static_cast<HWND>(prop);
  if (source == hwnd || !IsWindow(source)) {
    return nullptr;
  }
  return source;
}

namespace {

struct WindowPropertyLookup {
  const wchar_t* name = nullptr;
  HANDLE value = nullptr;
  bool found = false;
};

BOOL CALLBACK FindWindowPropertyProc(HWND, LPWSTR name, HANDLE value,
                                     ULONG_PTR data) {
  auto* lookup = reinterpret_cast<WindowPropertyLookup*>(data);
  if (lookup == nullptr || name == nullptr || IS_INTRESOURCE(name) ||
      lookup->name == nullptr || lstrcmpW(name, lookup->name) != 0) {
    return TRUE;
  }
  lookup->value = value;
  lookup->found = true;
  return FALSE;
}

bool ReadWindowPropertyInt32(HWND hwnd, const wchar_t* name, LONG* value) {
  if (hwnd == nullptr || name == nullptr || value == nullptr) {
    return false;
  }
  WindowPropertyLookup lookup{name};
  if (EnumPropsExW(hwnd, FindWindowPropertyProc,
                   reinterpret_cast<ULONG_PTR>(&lookup)) == -1 ||
      !lookup.found) {
    return false;
  }
  const INT_PTR raw = reinterpret_cast<INT_PTR>(lookup.value);
  if (raw < static_cast<INT_PTR>(std::numeric_limits<LONG>::min()) ||
      raw > static_cast<INT_PTR>(std::numeric_limits<LONG>::max())) {
    return false;
  }
  *value = static_cast<LONG>(raw);
  return true;
}

bool ReadMagpieRect(HWND hwnd, const wchar_t* left_name,
                    const wchar_t* top_name, const wchar_t* right_name,
                    const wchar_t* bottom_name, RECT* rect) {
  if (rect == nullptr ||
      !ReadWindowPropertyInt32(hwnd, left_name, &rect->left) ||
      !ReadWindowPropertyInt32(hwnd, top_name, &rect->top) ||
      !ReadWindowPropertyInt32(hwnd, right_name, &rect->right) ||
      !ReadWindowPropertyInt32(hwnd, bottom_name, &rect->bottom)) {
    return false;
  }
  return rect->right > rect->left && rect->bottom > rect->top;
}

}  // namespace

bool ReadMagpiePresentationMapping(HWND presentation_hwnd,
                                    HWND expected_source_hwnd,
                                    MagpiePresentationMapping* mapping) {
  if (mapping == nullptr || presentation_hwnd == nullptr ||
      expected_source_hwnd == nullptr || !IsWindow(presentation_hwnd) ||
      !IsWindow(expected_source_hwnd)) {
    return false;
  }
  *mapping = MagpiePresentationMapping{};
  const HWND source_hwnd = ResolveScalingSourceWindow(presentation_hwnd);
  if (source_hwnd == nullptr || source_hwnd != expected_source_hwnd) {
    return false;
  }
  RECT source_rect{};
  RECT destination_rect{};
  if (!ReadMagpieRect(presentation_hwnd, L"Magpie.SrcLeft",
                      L"Magpie.SrcTop", L"Magpie.SrcRight",
                      L"Magpie.SrcBottom", &source_rect) ||
      !ReadMagpieRect(presentation_hwnd, L"Magpie.DestLeft",
                      L"Magpie.DestTop", L"Magpie.DestRight",
                      L"Magpie.DestBottom", &destination_rect)) {
    return false;
  }
  mapping->presentation_hwnd = presentation_hwnd;
  mapping->source_hwnd = source_hwnd;
  mapping->source_rect_screen = source_rect;
  mapping->destination_rect_screen = destination_rect;
  return true;
}

namespace {

struct PresentationEnumContext {
  HWND source_hwnd = nullptr;
  std::vector<MagpiePresentationMapping>* mappings = nullptr;
};

BOOL CALLBACK FindMagpiePresentationProc(HWND hwnd, LPARAM lparam) {
  auto* context = reinterpret_cast<PresentationEnumContext*>(lparam);
  if (context == nullptr || context->mappings == nullptr ||
      hwnd == nullptr || hwnd == context->source_hwnd ||
      !IsWindowVisible(hwnd) || IsIconic(hwnd)) {
    return TRUE;
  }
  BOOL cloaked = FALSE;
  if (SUCCEEDED(DwmGetWindowAttribute(hwnd, DWMWA_CLOAKED, &cloaked,
                                      sizeof(cloaked))) &&
      cloaked) {
    return TRUE;
  }
  MagpiePresentationMapping mapping;
  if (ReadMagpiePresentationMapping(hwnd, context->source_hwnd, &mapping)) {
    context->mappings->push_back(mapping);
  }
  return TRUE;
}

std::vector<MagpiePresentationMapping> EnumerateMagpiePresentations(
    HWND source_hwnd) {
  std::vector<MagpiePresentationMapping> mappings;
  if (source_hwnd == nullptr || !IsWindow(source_hwnd)) {
    return mappings;
  }
  PresentationEnumContext context{source_hwnd, &mappings};
  EnumWindows(&FindMagpiePresentationProc,
              reinterpret_cast<LPARAM>(&context));
  return mappings;
}

}  // namespace

std::vector<ExternalWindow> EnumerateTopLevelWindows(HWND self) {
  std::vector<ExternalWindow> out;
  EnumContext ctx{self, &out};
  EnumWindows(&EnumProc, reinterpret_cast<LPARAM>(&ctx));
  return out;
}

namespace {

// 单帧捕获核心（假定调用线程已 RoInitialize）。任何失败写 out->error 并返回。
// [source_hwnd] is the logical game window. When [presentation_mapping] is
// present, [hwnd] is a verified Magpie output window and the encoded image is
// restricted to its published destination viewport.
void CaptureCore(HWND hwnd, WindowCaptureResult* out,
                 HWND source_hwnd = nullptr,
                 const MagpiePresentationMapping* presentation_mapping =
                     nullptr) {
  const HWND source_identity = source_hwnd != nullptr ? source_hwnd : hwnd;
  WindowCaptureMetadata initial_client;
  const bool initial_client_valid = ReadCaptureClient(hwnd, &initial_client);
  WindowCaptureMetadata initial_source_client;
  const bool initial_source_client_valid =
      source_identity == hwnd
          ? initial_client_valid
          : ReadCaptureClient(source_identity, &initial_source_client);
  if (presentation_mapping != nullptr &&
      (presentation_mapping->presentation_hwnd != hwnd ||
       presentation_mapping->source_hwnd != source_identity ||
       !initial_client_valid || !initial_source_client_valid)) {
    SetCaptureFailure(out, "presentation_viewport_unavailable",
                      "Magpie presentation viewport unavailable");
    return;
  }
  if (presentation_mapping != nullptr) {
    RECT presentation_client{
        initial_client.client_left_px,
        initial_client.client_top_px,
        initial_client.client_left_px + initial_client.client_width_px,
        initial_client.client_top_px + initial_client.client_height_px};
    RECT source_client{
        initial_source_client.client_left_px,
        initial_source_client.client_top_px,
        initial_source_client.client_left_px +
            initial_source_client.client_width_px,
        initial_source_client.client_top_px +
            initial_source_client.client_height_px};
    if (!RectWithin(presentation_mapping->destination_rect_screen,
                    presentation_client) ||
        !SameRect(presentation_mapping->source_rect_screen, source_client)) {
      SetCaptureFailure(out, "presentation_viewport_invalid",
                        "Magpie presentation viewport is outside its client");
      return;
    }
  }
  if (initial_client_valid) {
    SetCaptureProvenance(&initial_client, hwnd, source_identity,
                         presentation_mapping);
    // Keep the initial geometry even when WGC times out or the final client
    // read fails. It is the only bounded evidence available for those paths.
    out->metadata = initial_client;
    out->has_metadata = true;
  } else {
    SetCaptureReason(out, "initial_client_unavailable");
  }
  ComPtr<WGC::IGraphicsCaptureSessionStatics> session_statics;
  if (FAILED(GetActivationFactory(
          RuntimeClass_Windows_Graphics_Capture_GraphicsCaptureSession,
          session_statics.GetAddressOf()))) {
    SetCaptureFailure(out, "wgc_activation_unavailable",
                      "graphics capture unavailable");
    return;
  }
  boolean supported = false;
  session_statics->IsSupported(&supported);
  if (!supported) {
    SetCaptureFailure(out, "wgc_unsupported",
                      "graphics capture not supported (Windows 10 1903+ required)");
    return;
  }

  ComPtr<ID3D11Device> d3d = CreateD3DDevice();
  if (!d3d) {
    SetCaptureFailure(out, "d3d_device_unavailable", "D3D11 device create failed");
    return;
  }
  ComPtr<IDXGIDevice> dxgi;
  if (FAILED(d3d.As(&dxgi))) {
    SetCaptureFailure(out, "dxgi_device_query_failed",
                      "IDXGIDevice query failed");
    return;
  }
  ComPtr<IInspectable> inspectable;
  if (FAILED(CreateDirect3D11DeviceFromDXGIDevice(dxgi.Get(),
                                                  inspectable.GetAddressOf()))) {
    SetCaptureFailure(out, "d3d_interop_unavailable",
                      "CreateDirect3D11DeviceFromDXGIDevice failed");
    return;
  }
  ComPtr<WGDXD3D::IDirect3DDevice> device;
  if (FAILED(inspectable.As(&device))) {
    SetCaptureFailure(out, "direct3d_device_query_failed",
                      "IDirect3DDevice query failed");
    return;
  }

  ComPtr<IGraphicsCaptureItemInterop> interop;
  if (FAILED(GetActivationFactory(
          RuntimeClass_Windows_Graphics_Capture_GraphicsCaptureItem,
          interop.GetAddressOf()))) {
    SetCaptureFailure(out, "wgc_item_interop_unavailable",
                      "capture item interop unavailable");
    return;
  }
  ComPtr<WGC::IGraphicsCaptureItem> item;
  if (FAILED(interop->CreateForWindow(
          hwnd, __uuidof(WGC::IGraphicsCaptureItem),
          reinterpret_cast<void**>(item.GetAddressOf()))) ||
      !item) {
    SetCaptureFailure(out, "wgc_item_create_failed",
                      "CreateForWindow failed (window not capturable)");
    return;
  }
  ABI::Windows::Graphics::SizeInt32 size = {};
  if (FAILED(item->get_Size(&size)) || size.Width <= 0 || size.Height <= 0) {
    SetCaptureFailure(out, "wgc_item_size_invalid", "window has zero size");
    return;
  }
  if (!CaptureSizeWithinBudget(size.Width, size.Height)) {
    SetCaptureFailure(out, "capture_size_limit", "capture exceeds frame budget");
    return;
  }

  ComPtr<WGC::IDirect3D11CaptureFramePoolStatics2> pool_statics;
  if (FAILED(GetActivationFactory(
          RuntimeClass_Windows_Graphics_Capture_Direct3D11CaptureFramePool,
          pool_statics.GetAddressOf()))) {
    SetCaptureFailure(out, "wgc_frame_pool_unavailable",
                      "frame pool statics unavailable");
    return;
  }
  ComPtr<WGC::IDirect3D11CaptureFramePool> frame_pool;
  if (FAILED(pool_statics->CreateFreeThreaded(
          device.Get(), WGDX::DirectXPixelFormat_B8G8R8A8UIntNormalized, 2,
          size, frame_pool.GetAddressOf())) ||
      !frame_pool) {
    SetCaptureFailure(out, "wgc_frame_pool_create_failed",
                      "frame pool create failed");
    return;
  }
  ComPtr<WGC::IGraphicsCaptureSession> session;
  if (FAILED(frame_pool->CreateCaptureSession(item.Get(),
                                              session.GetAddressOf()))) {
    SetCaptureFailure(out, "wgc_session_create_failed",
                      "capture session create failed");
    return;
  }
  // BUG-1096：关闭 WGC 合成光标。IGraphicsCaptureSession2 需要 Win10 build 19041+，
  // 以前 QI 的失败和 put_ 的 HRESULT **两处都被静默丢掉**——「用户机器上到底关掉了
  // 没有」是个彻底的盲区。现在两条路径都写进 diagnostics（经 channel 回到 Dart 日志），
  // 成不成立变成可证的事实，而不是靠推断。注意：游戏**自绘**的光标是画面内容本身，
  // 任何捕获 API 都剥不掉，这里只负责不再由 WGC 额外合成一个。
  ComPtr<WGC::IGraphicsCaptureSession2> session2;
  const HRESULT cursor_qi = session.As(&session2);
  if (SUCCEEDED(cursor_qi) && session2) {
    const HRESULT cursor_hr = session2->put_IsCursorCaptureEnabled(false);
    if (FAILED(cursor_hr)) {
      AppendDiagnostic(out, "put_IsCursorCaptureEnabled(false) failed",
                       cursor_hr);
    }
  } else {
    AppendDiagnostic(out,
                     "IGraphicsCaptureSession2 unavailable (needs Windows 10 "
                     "build 19041+); WGC cursor NOT suppressed",
                     SUCCEEDED(cursor_qi) ? E_POINTER : cursor_qi);
  }
  ComPtr<WGC::IGraphicsCaptureSession3> session3;
  if (SUCCEEDED(session.As(&session3))) {
    session3->put_IsBorderRequired(false);
  }

  std::atomic<bool> grabbed{false};
  ComPtr<WGC::IDirect3D11CaptureFrame> frame;
  HANDLE frame_event = CreateEventW(nullptr, TRUE, FALSE, nullptr);
  if (frame_event == nullptr) {
    SetCaptureFailure(out, "frame_event_create_failed", "event create failed");
    return;
  }
  // 免线程（agile）委托：FreeThreaded 帧池会在任意线程池线程回调 FrameArrived。
  // 聚合 FtmBase 让委托 agile，避免非 agile 委托被 add_FrameArrived 拒绝
  // （RO_E_MUST_BE_AGILE，见 texture_bridge.cc 对 timer 委托的同款处理）。
  auto handler = Callback<Microsoft::WRL::Implements<
      Microsoft::WRL::RuntimeClassFlags<Microsoft::WRL::ClassicCom>,
      ABI::Windows::Foundation::ITypedEventHandler<
          WGC::Direct3D11CaptureFramePool*, IInspectable*>,
      Microsoft::WRL::FtmBase>>(
      [&grabbed, &frame, frame_event](WGC::IDirect3D11CaptureFramePool* pool,
                                      IInspectable*) -> HRESULT {
        bool expected = false;
        if (grabbed.compare_exchange_strong(expected, true)) {
          pool->TryGetNextFrame(frame.GetAddressOf());
          SetEvent(frame_event);
        }
        return S_OK;
      });
  EventRegistrationToken token = {};
  if (FAILED(frame_pool->add_FrameArrived(handler.Get(), &token))) {
    CloseHandle(frame_event);
    SetCaptureFailure(out, "frame_arrived_registration_failed",
                      "add_FrameArrived failed");
    return;
  }
  if (FAILED(session->StartCapture())) {
    frame_pool->remove_FrameArrived(token);
    CloseHandle(frame_event);
    SetCaptureFailure(out, "wgc_start_failed", "StartCapture failed");
    return;
  }

  const DWORD wait = WaitForSingleObject(frame_event, 1500);
  frame_pool->remove_FrameArrived(token);
  CloseHandle(frame_event);

  if (wait != WAIT_OBJECT_0 || !frame) {
    CloseIfClosable(session);
    CloseIfClosable(frame_pool);
    SetCaptureFailure(
        out, "no_frame",
        "capture timed out (no frame; DRM-protected windows yield no frame)");
    return;
  }

  ComPtr<WGDXD3D::IDirect3DSurface> surface;
  ComPtr<IDxgiInterfaceAccessLocal> access;
  ComPtr<ID3D11Texture2D> texture;
  if (SUCCEEDED(frame->get_Surface(surface.GetAddressOf())) &&
      SUCCEEDED(surface.As(&access))) {
    access->GetInterface(__uuidof(ID3D11Texture2D),
                         reinterpret_cast<void**>(texture.GetAddressOf()));
  }
  if (!texture) {
    CloseIfClosable(frame);
    CloseIfClosable(session);
    CloseIfClosable(frame_pool);
    SetCaptureFailure(out, "frame_surface_unavailable",
                      "frame surface unavailable");
    return;
  }
  const uint64_t captured_at_tick_ms = GetTickCount64();
  ABI::Windows::Graphics::SizeInt32 content_size{};
  const bool content_size_valid =
      SUCCEEDED(frame->get_ContentSize(&content_size)) &&
      content_size.Width > 0 && content_size.Height > 0;

  D3D11_TEXTURE2D_DESC desc = {};
  texture->GetDesc(&desc);
  if (!CaptureSizeWithinBudget(desc.Width, desc.Height)) {
    CloseIfClosable(frame);
    CloseIfClosable(session);
    CloseIfClosable(frame_pool);
    SetCaptureFailure(out, "capture_size_limit", "texture exceeds frame budget");
    return;
  }
  if (out->has_metadata) {
    out->metadata.content_width_px =
        content_size_valid ? content_size.Width : 0;
    out->metadata.content_height_px =
        content_size_valid ? content_size.Height : 0;
    out->metadata.texture_width_px = static_cast<int>(desc.Width);
    out->metadata.texture_height_px = static_cast<int>(desc.Height);
  }
  D3D11_TEXTURE2D_DESC staging_desc = desc;
  staging_desc.Usage = D3D11_USAGE_STAGING;
  staging_desc.BindFlags = 0;
  staging_desc.CPUAccessFlags = D3D11_CPU_ACCESS_READ;
  staging_desc.MiscFlags = 0;
  ComPtr<ID3D11Texture2D> staging;
  if (FAILED(d3d->CreateTexture2D(&staging_desc, nullptr,
                                  staging.GetAddressOf()))) {
    CloseIfClosable(frame);
    CloseIfClosable(session);
    CloseIfClosable(frame_pool);
    SetCaptureFailure(out, "staging_texture_create_failed",
                      "staging texture create failed");
    return;
  }
  ComPtr<ID3D11DeviceContext> context;
  d3d->GetImmediateContext(context.GetAddressOf());
  context->CopyResource(staging.Get(), texture.Get());
  D3D11_MAPPED_SUBRESOURCE mapped = {};
  if (SUCCEEDED(context->Map(staging.Get(), 0, D3D11_MAP_READ, 0, &mapped))) {
    // BUG-1854：直接捕获时只编码客户区子矩形（标题栏 / 菜单栏 / 边框不进卡片）。
    // Magpie fallback 则只能编码已验证的 DestRect；未知 viewport 时 fail closed，
    // 绝不能把整个 presentation client 当作游戏图像。
    RECT crop{};
    const uint8_t* pixels = static_cast<const uint8_t*>(mapped.pData);
    UINT encode_w = 0;
    UINT encode_h = 0;
    const bool using_presentation = presentation_mapping != nullptr;
    const bool crop_valid = using_presentation
                                ? ComputeScreenCropBox(
                                      hwnd,
                                      presentation_mapping->destination_rect_screen,
                                      desc.Width, desc.Height, &crop)
                                : ComputeClientCropBox(hwnd, desc.Width,
                                                       desc.Height, &crop);
    const int requested_destination_width =
        using_presentation
            ? RectWidth(presentation_mapping->destination_rect_screen)
            : 0;
    const int requested_destination_height =
        using_presentation
            ? RectHeight(presentation_mapping->destination_rect_screen)
            : 0;
    const bool crop_matches_destination =
        using_presentation && crop_valid &&
        static_cast<int>(crop.right - crop.left) ==
            requested_destination_width &&
        static_cast<int>(crop.bottom - crop.top) ==
            requested_destination_height;
    const bool crop_inside_content =
        crop_valid && content_size_valid && crop.left >= 0 && crop.top >= 0 &&
        crop.right <= content_size.Width && crop.bottom <= content_size.Height;
    const bool encode_allowed =
        crop_valid && (!using_presentation ||
                       (crop_matches_destination && crop_inside_content));
    if (encode_allowed) {
      pixels += static_cast<size_t>(crop.top) * mapped.RowPitch +
                static_cast<size_t>(crop.left) * 4;
      encode_w = static_cast<UINT>(crop.right - crop.left);
      encode_h = static_cast<UINT>(crop.bottom - crop.top);
    } else if (using_presentation) {
      SetCaptureFailure(out, "presentation_viewport_unavailable",
                        "Magpie destination viewport could not be captured");
    } else {
      // If the regular client crop is unavailable, preserve the historical
      // fail-open behavior for ordinary windows. This branch is deliberately
      // unreachable for a presentation fallback.
      encode_w = desc.Width;
      encode_h = desc.Height;
      AppendDiagnostic(out,
                       "client-area crop unavailable; encoded the whole "
                       "window (title bar included)",
                       S_OK);
    }
    if (encode_w > 0 && encode_h > 0) {
      out->png = EncodeBgraToPng(pixels, encode_w, encode_h, mapped.RowPitch,
                                 &out->error);
    }
    if (out->png.empty()) {
      SetCaptureReason(out, "png_encode_failed");
    }
    WindowCaptureMetadata final_client;
    if (ReadCaptureClient(hwnd, &final_client)) {
      final_client.image_width_px = static_cast<int>(encode_w);
      final_client.image_height_px = static_cast<int>(encode_h);
      final_client.captured_at_tick_ms = captured_at_tick_ms;
      final_client.content_width_px =
          content_size_valid ? content_size.Width : 0;
      final_client.content_height_px =
          content_size_valid ? content_size.Height : 0;
      final_client.texture_width_px = static_cast<int>(desc.Width);
      final_client.texture_height_px = static_cast<int>(desc.Height);
      final_client.client_area_complete =
          !using_presentation && initial_client_valid &&
          SameCaptureClient(initial_client, final_client) && content_size_valid &&
          crop.right <= content_size.Width && crop.bottom <= content_size.Height &&
          crop.right > crop.left && crop.bottom > crop.top &&
          static_cast<int>(encode_w) == final_client.client_width_px &&
          static_cast<int>(encode_h) == final_client.client_height_px;
      SetCaptureProvenance(&final_client, hwnd, source_identity,
                           presentation_mapping);
      if (using_presentation) {
        WindowCaptureMetadata final_source_client;
        const bool final_source_client_valid =
            ReadCaptureClient(source_identity, &final_source_client);
        MagpiePresentationMapping final_mapping;
        const bool final_mapping_valid = ReadMagpiePresentationMapping(
            hwnd, source_identity, &final_mapping);
        const RECT presentation_client{
            final_client.client_left_px,
            final_client.client_top_px,
            final_client.client_left_px + final_client.client_width_px,
            final_client.client_top_px + final_client.client_height_px};
        const bool destination_still_inside =
            final_mapping_valid &&
            RectWithin(final_mapping.destination_rect_screen,
                       presentation_client);
        const bool source_still_inside =
            final_mapping_valid && final_source_client_valid &&
            SameRect(final_mapping.source_rect_screen,
                       RECT{final_source_client.client_left_px,
                            final_source_client.client_top_px,
                            final_source_client.client_left_px +
                                final_source_client.client_width_px,
                            final_source_client.client_top_px +
                                final_source_client.client_height_px});
        const bool mapping_stable =
            final_mapping_valid &&
            SameRect(final_mapping.source_rect_screen,
                     presentation_mapping->source_rect_screen) &&
            SameRect(final_mapping.destination_rect_screen,
                     presentation_mapping->destination_rect_screen);
        final_client.presentation_viewport_complete =
            !out->png.empty() && initial_client_valid &&
            initial_source_client_valid && final_source_client_valid &&
            SameCaptureClient(initial_client, final_client) &&
            SameCaptureClient(initial_source_client, final_source_client) &&
            content_size_valid && crop_inside_content &&
            crop_matches_destination && destination_still_inside &&
            source_still_inside && mapping_stable &&
            static_cast<int>(encode_w) ==
                RectWidth(presentation_mapping->destination_rect_screen) &&
            static_cast<int>(encode_h) ==
                RectHeight(presentation_mapping->destination_rect_screen);
      }
      out->metadata = final_client;
      out->has_metadata = true;
      if (out->png.empty()) {
        SetCaptureReason(out, "png_encode_failed");
      } else if (using_presentation && !content_size_valid) {
        SetCaptureReason(out, "presentation_content_size_invalid");
      } else if (using_presentation && !crop_matches_destination) {
        SetCaptureReason(out, "presentation_destination_size_mismatch");
      } else if (using_presentation && !crop_inside_content) {
        SetCaptureReason(out, "presentation_viewport_outside_content");
      } else if (using_presentation) {
        SetCaptureReason(out, final_client.presentation_viewport_complete
                                ? "presentation_complete"
                                : "presentation_viewport_incomplete");
      } else if (!initial_client_valid) {
        SetCaptureReason(out, "initial_client_unavailable");
      } else if (!content_size_valid) {
        SetCaptureReason(out, "content_size_invalid");
      } else if (!crop_valid) {
        SetCaptureReason(out, "client_crop_unavailable");
      } else if (crop.right > content_size.Width ||
                 crop.bottom > content_size.Height) {
        SetCaptureReason(out, "client_crop_outside_content");
      } else if (!SameCaptureClient(initial_client, final_client)) {
        SetCaptureReason(out, "client_changed_during_capture");
      } else if (static_cast<int>(encode_w) != final_client.client_width_px ||
                 static_cast<int>(encode_h) != final_client.client_height_px) {
        SetCaptureReason(out, "client_image_size_mismatch");
      } else if (!final_client.client_area_complete) {
        SetCaptureReason(out, "client_area_incomplete");
      } else {
        SetCaptureReason(out, "complete");
      }
    } else if (!out->png.empty()) {
      SetCaptureReason(out, "final_client_unavailable");
    }
    context->Unmap(staging.Get(), 0);
  } else {
    SetCaptureFailure(out, "staging_map_failed", "map staging texture failed");
  }

  CloseIfClosable(frame);
  CloseIfClosable(session);
  CloseIfClosable(frame_pool);
  if (presentation_mapping != nullptr && out->has_metadata &&
      !out->metadata.presentation_viewport_complete) {
    out->png.clear();
    SetCaptureFailure(out, "presentation_viewport_incomplete",
                      "Magpie presentation viewport changed during capture");
  }
  out->ok = out->error.empty() && !out->png.empty();
  if (!out->ok && out->error.empty()) {
    SetCaptureFailure(out, "capture_failed", "capture produced no pixels");
  } else if (out->ok && out->capture_reason.empty()) {
    SetCaptureReason(out, "complete");
  }
}

}  // namespace

WindowCaptureResult CaptureWindowPng(HWND hwnd) {
  if (hwnd == nullptr || !IsWindow(hwnd)) {
    WindowCaptureResult out;
    SetCaptureFailure(&out, "invalid_window_handle", "window handle invalid");
    return out;
  }
  // BUG-2541：Magpie 在用户点下“采集”后可能刚好重建输出窗口，第一帧会
  // 看到旧的源/客户区尺寸。Dart 侧必须继续 fail-closed，native 侧则在同一
  // 请求内重新解析一次源 HWND 并重试，避免把一次可恢复的切换误报成永久
  // 不兼容。最多两次，避免把 WGC/DRM 的真正失败拖成无界等待。
  const HWND requested_hwnd = hwnd;
  const HRESULT ro = RoInitialize(RO_INIT_MULTITHREADED);
  // RPC_E_CHANGED_MODE = 本线程已按其它套间初始化；照常用、但不由我们反初始化。
  if (FAILED(ro) && ro != RPC_E_CHANGED_MODE) {
    WindowCaptureResult out;
    SetCaptureFailure(&out, "ro_initialize_failed", "RoInitialize failed");
    return out;
  }
  WindowCaptureResult out;
  constexpr int kMaximumAttempts = 2;
  for (int attempt = 0; attempt < kMaximumAttempts; ++attempt) {
    WindowCaptureResult candidate;
    HWND source_hwnd = requested_hwnd;
    // Dart 侧可能拿的是**上一次枚举缓存**的句柄，或者 Magpie 是在选窗
    // 之后才起来的，所以每次尝试都重新解析，而不是只在枚举时解析一次。
    if (const HWND source = ResolveScalingSourceWindow(source_hwnd)) {
      AppendDiagnostic(&candidate,
                       "capture target redirected: Magpie scaling window -> "
                       "source window (Magpie.SrcHWND)",
                       S_OK);
      source_hwnd = source;
    }
    CaptureCore(source_hwnd, &candidate);

    // A source HWND can be visible and valid while WGC refuses to create an
    // item for it (for example when Magpie owns the presentation path). Only
    // then look for an output window, and only accept candidates whose
    // SrcHWND plus all eight viewport properties validate against this exact
    // source. Capturing the whole output client would shift calibration boxes
    // whenever Magpie letterboxes or crops the source.
    if (candidate.capture_reason == "wgc_item_create_failed") {
      std::vector<MagpiePresentationMapping> mappings;
      MagpiePresentationMapping requested_mapping;
      if (requested_hwnd != source_hwnd &&
          ReadMagpiePresentationMapping(requested_hwnd, source_hwnd,
                                        &requested_mapping)) {
        mappings.push_back(requested_mapping);
      }
      std::vector<MagpiePresentationMapping> discovered =
          EnumerateMagpiePresentations(source_hwnd);
      for (const MagpiePresentationMapping& discovered_mapping : discovered) {
        bool duplicate = false;
        for (const MagpiePresentationMapping& existing : mappings) {
          if (existing.presentation_hwnd ==
              discovered_mapping.presentation_hwnd) {
            duplicate = true;
            break;
          }
        }
        if (!duplicate) {
          mappings.push_back(discovered_mapping);
        }
      }
      constexpr size_t kMaximumPresentationAttempts = 2;
      WindowCaptureResult fallback_failure;
      bool attempted_presentation = false;
      for (size_t i = 0;
           i < mappings.size() && i < kMaximumPresentationAttempts; ++i) {
        const MagpiePresentationMapping& mapping = mappings[i];
        WindowCaptureResult presentation_candidate;
        AppendDiagnostic(
            &presentation_candidate,
            "source WGC item unavailable; tried verified Magpie presentation",
            S_OK);
        CaptureCore(mapping.presentation_hwnd, &presentation_candidate,
                    source_hwnd, &mapping);
        attempted_presentation = true;
        if (presentation_candidate.ok &&
            presentation_candidate.has_metadata &&
            presentation_candidate.metadata.presentation_viewport_complete) {
          AppendDiagnostic(&presentation_candidate,
                           "captured Magpie DestRect viewport", S_OK);
          candidate = std::move(presentation_candidate);
          break;
        }
        if (!fallback_failure.has_metadata ||
            fallback_failure.capture_reason.empty()) {
          fallback_failure = std::move(presentation_candidate);
        }
      }
      if (attempted_presentation &&
          candidate.capture_reason == "wgc_item_create_failed" &&
          !fallback_failure.capture_reason.empty()) {
        candidate = std::move(fallback_failure);
      }
    }
    const bool complete =
        candidate.ok && candidate.has_metadata &&
        (candidate.metadata.client_area_complete ||
         candidate.metadata.presentation_viewport_complete);
    const bool geometry_changed =
        candidate.capture_reason == "client_changed_during_capture" ||
        candidate.capture_reason == "client_image_size_mismatch" ||
        candidate.capture_reason == "client_crop_outside_content" ||
        candidate.capture_reason == "presentation_viewport_incomplete" ||
        // A game can recreate its swap chain between the window selection and
        // WGC item creation.  Treat this single bounded failure like the
        // existing resize/rebind cases; the next attempt re-resolves the
        // source/presentation HWND and never reuses the failed capture item.
        candidate.capture_reason == "wgc_item_create_failed";
    if (complete || !geometry_changed || attempt + 1 == kMaximumAttempts) {
      out = std::move(candidate);
      break;
    }
    // A transient resize/rebind is the only condition worth retrying here.
    // Keep this delay short; CaptureCore already bounds the WGC wait at 1.5 s.
    Sleep(40);
    out = std::move(candidate);
  }
  if (SUCCEEDED(ro)) {
    RoUninitialize();
  }
  return out;
}

}  // namespace fushi
