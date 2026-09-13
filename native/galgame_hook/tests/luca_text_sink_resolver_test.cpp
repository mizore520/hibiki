// Release builds define NDEBUG; keep this native test's assertions live.
#undef NDEBUG

#include "luca_text_sink_resolver.h"

#include <algorithm>
#include <cstdio>
#include <initializer_list>
#include <utility>
#include <vector>

using namespace fushi_voice_hook;

namespace {
int failures = 0;

void Check(bool condition, const char* name) {
  if (!condition) {
    std::fprintf(stderr, "FAIL: %s\n", name);
    ++failures;
  }
}

void PutBytes(std::vector<uint8_t>& bytes, size_t offset,
              std::initializer_list<uint8_t> values) {
  std::copy(values.begin(), values.end(), bytes.begin() + offset);
}

std::vector<uint8_t> Fixture(size_t signature_offset) {
  const size_t size = signature_offset + sizeof(kLucaTextSinkSignature) + 8;
  std::vector<uint8_t> bytes(size, 0xcc);
  const size_t entry = signature_offset - kLucaTextSinkEntryOffset;
  PutBytes(bytes, entry, {0x55, 0x8b, 0xec, 0x6a, 0xff});
  std::copy(std::begin(kLucaTextSinkSignature),
            std::end(kLucaTextSinkSignature), bytes.begin() + signature_offset);
  return bytes;
}
}  // namespace

int main() {
  for (uint64_t base : {uint64_t(0x401000), uint64_t(0x21731000)}) {
    for (size_t signature_offset : {size_t(0x31), size_t(0x47),
                                    size_t(0x1fb)}) {
      const auto bytes = Fixture(signature_offset);
      LucaTextSinkMatches matches;
      ScanLucaTextSink(bytes.data(), bytes.size(), base, &matches);
      Check(matches.count == 1 &&
                matches.signature_address == base + signature_offset &&
                matches.entry_address ==
                    base + signature_offset - kLucaTextSinkEntryOffset,
            "unique text sink resolves relative function entry");
      Check(LucaTextSinkSignatureAt(bytes.data(), bytes.size(),
                                    signature_offset),
            "synthetic text sink signature accepted");
    }
  }

  auto bytes = Fixture(0x47);
  for (size_t offset = 0; offset < sizeof(kLucaTextSinkSignature); ++offset) {
    auto changed = bytes;
    changed[0x47 + offset] ^= 1;
    Check(!LucaTextSinkSignatureAt(changed.data(), changed.size(), 0x47),
          "changed text sink signature byte rejected");
  }
  bytes = Fixture(0x47);
  bytes[0x47 - kLucaTextSinkEntryOffset] ^= 1;
  Check(!LucaTextSinkSignatureAt(bytes.data(), bytes.size(), 0x47),
        "changed text sink prologue rejected");

  bytes = Fixture(0x47);
  const auto second = Fixture(0x117);
  bytes.insert(bytes.end(), second.begin(), second.end());
  LucaTextSinkMatches matches;
  ScanLucaTextSink(bytes.data(), bytes.size(), 0x1000, &matches);
  Check(matches.count == 2, "ambiguous text sink signatures are observable");

  bytes = Fixture(0x47);
  matches = {};
  ScanLucaTextSink(bytes.data(), 0x47 + sizeof(kLucaTextSinkSignature) - 1,
                   0x1000, &matches);
  Check(matches.count == 0, "truncated text sink signature rejected");
  matches = {};
  ScanLucaTextSink(nullptr, bytes.size(), 0x1000, &matches);
  Check(matches.count == 0, "null text sink scanner input rejected");
  matches = {};
  ScanLucaTextSink(bytes.data(), bytes.size(),
                   UINT64_MAX - bytes.size() + 1, &matches);
  Check(matches.count == 0, "text sink address overflow rejected");

  std::fprintf(stdout, "luca_text_sink_resolver_test: %d failures\n",
               failures);
  return failures == 0 ? 0 : 1;
}
