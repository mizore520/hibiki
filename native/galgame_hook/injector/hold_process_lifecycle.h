#pragma once

#include <windows.h>

namespace hibiki_voice_hook {

// `--hold` owns the shared-memory session only while the target game is alive.
// Every launch mode must pass a synchronizable target-process handle; treating
// a missing handle as "run forever" is unsafe because an abruptly closed host
// then leaves an injector executable locked until the next reboot.
inline bool HoldTargetIsRunning(HANDLE target_process) {
  if (target_process == nullptr || target_process == INVALID_HANDLE_VALUE) {
    return false;
  }
  return WaitForSingleObject(target_process, 0) == WAIT_TIMEOUT;
}

}  // namespace hibiki_voice_hook
