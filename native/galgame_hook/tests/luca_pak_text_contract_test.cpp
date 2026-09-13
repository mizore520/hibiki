// Release builds define NDEBUG; keep this native test's assertions live.
#undef NDEBUG

#include "luca_pak_text_contract.h"

#include <algorithm>
#include <cstdio>
#include <iterator>
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
void Put32(std::vector<uint8_t>& bytes, size_t offset, uint32_t value) {
  for (size_t i = 0; i < 4; ++i) bytes[offset + i] = uint8_t(value >> (i * 8));
}
std::vector<uint8_t> Index() {
  std::vector<uint8_t> bytes(64, 0);
  Put32(bytes, 0, 64);
  Put32(bytes, 4, 2);
  Put32(bytes, 8, 1);
  Put32(bytes, 12, 4);
  Put32(bytes, 32, 512);
  Put32(bytes, 36, 56);
  Put32(bytes, 40, 16);
  Put32(bytes, 44, 4);
  Put32(bytes, 48, 17);
  Put32(bytes, 52, 8);
  bytes[56] = 'a';
  bytes[58] = 'b';
  return bytes;
}
bool Valid(const std::vector<uint8_t>& bytes, uint64_t file_size = 76) {
  return LucaNamedScriptIndexValid(bytes.data(), bytes.size(), file_size);
}
void InvalidField(size_t offset, uint32_t value, const char* name) {
  auto bytes = Index();
  Put32(bytes, offset, value);
  Check(!Valid(bytes), name);
}
std::vector<uint8_t> Code(size_t prefix, size_t suffix = 0) {
  std::vector<uint8_t> bytes(prefix + sizeof(kLucaTextCopyContract) + suffix,
                             0xcc);
  std::copy(std::begin(kLucaTextCopyContract), std::end(kLucaTextCopyContract),
            bytes.begin() + prefix);
  return bytes;
}
}  // namespace

int main() {
  Check(Valid(Index()), "synthetic named index accepted");
  Check(!LucaNamedScriptIndexValid(nullptr, 64, 76), "null index");
  auto bytes = Index();
  Check(!LucaNamedScriptIndexValid(bytes.data(), 39, 76), "short header");
  Check(!LucaNamedScriptIndexValid(bytes.data(), 4 * 1024 * 1024 + 1, 76),
        "oversized index rejected before reading");
  Check(!Valid(bytes, 63), "header exceeds file");
  Check(!Valid(bytes, 75), "last resource exceeds file by one");
  InvalidField(0, 60, "header size mismatch");
  InvalidField(4, 0, "empty entry count");
  InvalidField(4, UINT32_MAX, "entry count overflow rejected");
  InvalidField(4, 65536, "bounded count still exceeds available table");
  InvalidField(8, 0, "named layout flag");
  InvalidField(12, 0, "zero block rejected before modulo");
  InvalidField(12, 512, "unsupported block size");
  for (size_t offset = 16; offset < 32; offset += 4)
    InvalidField(offset, 1, "reserved field");
  InvalidField(32, 0, "layout constant");
  InvalidField(36, 55, "name table overlaps entries");
  InvalidField(36, UINT32_MAX, "name offset out of range");
  InvalidField(40, 17, "first resource must start at index end");
  InvalidField(44, 0, "zero resource length");
  InvalidField(48, 16, "overlapping resources");
  InvalidField(48, UINT32_MAX, "resource offset multiplication does not wrap");
  InvalidField(52, UINT32_MAX, "resource length does not wrap");
  bytes = Index();
  bytes[56] = 0;
  Check(!Valid(bytes), "empty name");
  bytes = Index();
  bytes[56] = 0x1f;
  Check(!Valid(bytes), "control in name");
  bytes = Index();
  bytes[56] = 0x80;
  Check(!Valid(bytes), "non ASCII name");
  bytes = Index();
  std::fill(bytes.begin() + 58, bytes.end(), 'x');
  Check(!Valid(bytes), "unterminated name");
  bytes = Index();
  bytes.back() = 1;
  Check(!Valid(bytes), "nonzero trailing padding");
  bytes = Index();
  Put32(bytes, 48, 18);
  Check(Valid(bytes, 80), "aligned gap between resources permitted");
  bytes = Index();
  Put32(bytes, 48, UINT32_MAX);
  Check(Valid(bytes, uint64_t(UINT32_MAX) * 4 + 8),
        "64 bit resource offset");

  for (uint64_t base : {uint64_t(0x401000), uint64_t(0x21731000)}) {
    for (size_t prefix : {size_t(0), size_t(7), size_t(251)}) {
      auto code = Code(prefix);
      LucaTextMatches matches;
      ScanLucaTextContract(code.data(), code.size(), base, &matches);
      Check(matches.count == 1 &&
                matches.address == base + prefix + kLucaTextReadOffset,
            "relocated signature at arbitrary section offset");
    }
  }
  auto code = Code(0);
  LucaTextMatches matches;
  ScanLucaTextContract(code.data(), code.size() - 1, 0x1000, &matches);
  Check(matches.count == 0, "truncated signature");
  ScanLucaTextContract(nullptr, code.size(), 0x1000, &matches);
  ScanLucaTextContract(code.data(), code.size(), 0x1000, nullptr);
  Check(matches.count == 0, "null scanner inputs");
  ScanLucaTextContract(code.data(), code.size(), UINT64_MAX - code.size() + 1,
                       &matches);
  Check(matches.count == 0, "section address overflow");
  ScanLucaTextContract(code.data(), code.size(), UINT64_MAX - code.size(),
                       &matches);
  Check(matches.count == 1, "highest admitted address range");

  code = Code(3, sizeof(kLucaTextCopyContract) + 4);
  std::copy(std::begin(kLucaTextCopyContract), std::end(kLucaTextCopyContract),
            code.end() - sizeof(kLucaTextCopyContract));
  matches = {};
  ScanLucaTextContract(code.data(), code.size(), 0x1000, &matches);
  Check(matches.count == 2, "two signatures remain ambiguous");
  code = Code(5);
  matches = {};
  ScanLucaTextContract(code.data(), code.size(), 0x1000, &matches);
  ScanLucaTextContract(code.data(), code.size(), 0x9000, &matches);
  Check(matches.count == 2, "matches accumulate across sections");

  for (size_t offset = 0; offset < sizeof(kLucaTextCopyContract); ++offset) {
    code = Code(0);
    code[offset] ^= 1;
    matches = {};
    ScanLucaTextContract(code.data(), code.size(), 0x1000, &matches);
    Check(matches.count == 0, "changed instruction or field rejected");
  }
  std::fprintf(stdout, "luca_pak_text_contract_test: %d failures\n", failures);
  return failures == 0 ? 0 : 1;
}
