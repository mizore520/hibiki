#ifdef NDEBUG
#undef NDEBUG
#endif

#include <cassert>

#include "hold_process_lifecycle.h"

using fushi_voice_hook::HoldTargetIsRunning;

int main() {
  assert(!HoldTargetIsRunning(nullptr));
  assert(!HoldTargetIsRunning(INVALID_HANDLE_VALUE));

  HANDLE target = CreateEventW(nullptr, TRUE, FALSE, nullptr);
  assert(target != nullptr);
  assert(HoldTargetIsRunning(target));
  assert(SetEvent(target) != FALSE);
  assert(!HoldTargetIsRunning(target));
  CloseHandle(target);
  return 0;
}
