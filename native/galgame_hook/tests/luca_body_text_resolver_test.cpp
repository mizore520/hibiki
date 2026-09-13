// Release builds define NDEBUG; keep this native test's assertions live.
#undef NDEBUG

#include "luca_body_text_resolver.h"

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

void PutPattern(std::vector<uint8_t>& bytes, size_t offset) {
  std::fill(bytes.begin() + offset,
            bytes.begin() + offset + kLucaBodyParserSignatureSpan, 0xcc);
  PutBytes(bytes, offset + 0x00, {0x84, 0xdb, 0x0f, 0x84});
  PutBytes(bytes, offset + 0x08, {0x83, 0xf8, 0x40, 0x75});
  PutBytes(bytes, offset + 0x0d,
           {0x6a, 0x01, 0x8d, 0x4c, 0x24, 0x18, 0xe8});
  PutBytes(bytes, offset + 0x18, {0x8d, 0x4c, 0x24, 0x14, 0xe8});
  PutBytes(bytes, offset + 0x21,
           {0x8b, 0x44, 0x24, 0x24, 0xb9, 0x01, 0x00, 0x00, 0x00,
            0x8d, 0x9b, 0x00, 0x00, 0x00, 0x00, 0x49, 0x66, 0x83,
            0x38, 0x00, 0x74});
  PutBytes(bytes, offset + 0x37,
           {0x83, 0xc0, 0x02, 0x89, 0x44, 0x24, 0x24, 0x85, 0xc9,
            0x75});
  PutBytes(bytes, offset + 0x42,
           {0x80, 0xbf, 0xdf, 0x01, 0x00, 0x00, 0x00, 0x89, 0x44,
            0x24, 0x28, 0x74});
  PutBytes(bytes, offset + 0x4f,
           {0x68, 0x84, 0x46, 0xb7, 0x00, 0x8d, 0x4c, 0x24, 0x18,
            0xe8});
  PutBytes(bytes, offset + 0x5d,
           {0x68, 0xb8, 0x46, 0xb7, 0x00, 0x8d, 0x4c, 0x24, 0x18,
            0xe8});
  PutBytes(bytes, offset + 0x6b, {0x83, 0x7f, 0x44, 0x00, 0x74});
}

std::vector<uint8_t> Fixture(size_t prefix, size_t suffix = 0) {
  std::vector<uint8_t> bytes(prefix + kLucaBodyParserSignatureSpan + suffix,
                             0xaa);
  PutPattern(bytes, prefix);
  return bytes;
}
}  // namespace

int main() {
  for (uint64_t base : {uint64_t(0x401000), uint64_t(0x21731000)}) {
    for (size_t prefix : {size_t(0), size_t(7), size_t(251)}) {
      const auto bytes = Fixture(prefix);
      LucaBodyParserMatches matches;
      ScanLucaBodyParser(bytes.data(), bytes.size(), base, &matches);
      Check(matches.count == 1 &&
                matches.function_address == base + prefix &&
                matches.hook_address ==
                    base + prefix + kLucaBodyParserHookOffset,
            "unique structural body parser resolves relative hook");
      Check(LucaBodyParserSignatureAt(bytes.data(), bytes.size(), prefix),
            "synthetic body parser signature accepted");
    }
  }

  auto bytes = Fixture(3);
  const std::vector<std::pair<size_t, size_t>> fixed_ranges = {
      {0x00, 0x03}, {0x08, 0x0b}, {0x0d, 0x13}, {0x18, 0x1c},
      {0x21, 0x35}, {0x37, 0x40}, {0x42, 0x4d}, {0x4f, 0x58},
      {0x5d, 0x66}, {0x6b, 0x6f},
  };
  for (const auto& [first, last] : fixed_ranges) {
    for (size_t fixed_offset = first; fixed_offset <= last; ++fixed_offset) {
      auto changed = bytes;
      changed[3 + fixed_offset] ^= 1;
      Check(!LucaBodyParserSignatureAt(changed.data(), changed.size(), 3),
            "changed body parser fixed byte rejected");
    }
  }
  bytes = Fixture(3);
  bytes[3 + 0x04] = 0x37;
  bytes[3 + 0x05] = 0x91;
  bytes[3 + 0x0c] = 0x55;
  bytes[3 + 0x15] = 0xe8;
  bytes[3 + 0x16] = 0x12;
  bytes[3 + 0x17] = 0x34;
  Check(LucaBodyParserSignatureAt(bytes.data(), bytes.size(), 3),
        "relative body parser operands are wildcarded");

  bytes = Fixture(0, kLucaBodyParserSignatureSpan + 9);
  PutPattern(bytes, kLucaBodyParserSignatureSpan + 3);
  LucaBodyParserMatches matches;
  ScanLucaBodyParser(bytes.data(), bytes.size(), 0x1000, &matches);
  Check(matches.count == 2, "ambiguous body parser signatures rejected later");

  bytes = Fixture(0);
  matches = {};
  ScanLucaBodyParser(bytes.data(), bytes.size() - 1, 0x1000, &matches);
  Check(matches.count == 0, "truncated body parser signature rejected");
  ScanLucaBodyParser(nullptr, bytes.size(), 0x1000, &matches);
  Check(matches.count == 0, "null body parser scanner input rejected");
  ScanLucaBodyParser(bytes.data(), bytes.size(), UINT64_MAX - bytes.size() + 1,
                     &matches);
  Check(matches.count == 0, "body parser address overflow rejected");

  std::fprintf(stdout, "luca_body_text_resolver_test: %d failures\n",
               failures);
  return failures == 0 ? 0 : 1;
}
