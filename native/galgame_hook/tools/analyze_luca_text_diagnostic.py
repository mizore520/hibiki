#!/usr/bin/env python3
"""Summarize a Luca full text-thread diagnostic JSONL capture.

The input is intentionally lossless at capture time.  This tool only adds
reporting tags and never rewrites or drops an event from the source log.
"""

from __future__ import annotations

import argparse
import csv
import json
import statistics
import sys
from collections import Counter, defaultdict
from pathlib import Path
from typing import Any


def as_int(value: Any, default: int = 0) -> int:
    try:
        return int(value)
    except (TypeError, ValueError):
        return default


def percent(value: int, total: int) -> str:
    if total <= 0:
        return "0.0%"
    return f"{100.0 * value / total:.1f}%"


def average_interval(timestamps: list[int]) -> str:
    ordered = sorted(timestamps)
    if len(ordered) < 2:
        return "-"
    return f"{statistics.mean(b - a for a, b in zip(ordered, ordered[1:])):.1f}"


def has_raw_text(record: dict[str, Any]) -> bool:
    """Count non-empty callback payloads even when UTF-8 conversion failed."""
    if "raw_text_present" not in record and "raw_utf16_units" not in record:
        # Keep older diagnostic captures readable without treating their
        # legacy meta flags as installation/completion evidence.
        return bool(record.get("raw_text")) or bool(record.get("raw_text_utf16_hex"))
    return bool(record.get("raw_text_present")) or as_int(
        record.get("raw_utf16_units")
    ) > 0


def raw_text_key(record: dict[str, Any]) -> str:
    """Use the lossless UTF-16 fallback when the display string is unavailable."""
    if record.get("raw_text_conversion_ok") is False:
        return "utf16:" + str(record.get("raw_text_utf16_hex", ""))
    if "raw_text_conversion_ok" not in record and not record.get("raw_text"):
        return "utf16:" + str(record.get("raw_text_utf16_hex", ""))
    return "utf8:" + str(record.get("raw_text", ""))


def fmt_set(values: set[Any], address: bool = False) -> str:
    if not values:
        return "-"
    ordered = sorted(values)
    if address:
        return ",".join(f"0x{int(value):x}" for value in ordered)
    return ",".join(str(value) for value in ordered)


def load_records(path: Path) -> list[dict[str, Any]]:
    records: list[dict[str, Any]] = []
    with path.open("r", encoding="utf-8") as handle:
        for line_number, line in enumerate(handle, 1):
            if not line.strip():
                continue
            try:
                record = json.loads(line)
            except json.JSONDecodeError as exc:
                raise SystemExit(f"{path}:{line_number}: invalid JSON: {exc}")
            if isinstance(record, dict):
                records.append(record)
    return records


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("log", type=Path)
    args = parser.parse_args()

    records = load_records(args.log)
    meta_records = [r for r in records if r.get("record_kind") == "meta"]
    schemas = sorted({str(r.get("record_schema", "")) for r in records})
    find_starts = [
        r for r in records if r.get("record_kind") == "find_search_start"
    ]
    find_candidates = [
        r for r in records if r.get("record_kind") == "find_candidate"
    ]
    find_duplicates = [r for r in find_candidates if r.get("duplicate")]
    find_assumed_completion = [
        r
        for r in records
        if r.get("record_kind") == "find_search_completion_assumed"
    ]
    find_cancelled = [
        r for r in records if r.get("record_kind") == "find_search_cancelled"
    ]
    find_not_dispatched = [
        r for r in records if r.get("record_kind") == "find_search_not_dispatched"
    ]
    find_call_entered = [
        r for r in records if r.get("record_kind") == "find_search_call_entered"
    ]
    find_dispatch_failed = [
        r
        for r in records
        if r.get("record_kind") == "find_search_dispatch_failed"
    ]
    find_real_completion = [
        r
        for r in records
        if r.get("record_kind")
        in {"find_search_completion", "find_search_end", "find_end"}
    ]
    find_dispatched = [
        r for r in records if r.get("record_kind") == "find_search_dispatched"
    ]
    find_abi_gates = [
        r for r in records if r.get("record_kind") == "find_abi_gate"
    ]
    dll_identity_records = [
        r for r in records if r.get("record_kind") == "luna_dll_identity"
    ]
    insert_api_true = [
        r
        for r in records
        if r.get("record_kind") == "insert_hook_code"
        and r.get("status") == "returned_true"
    ]
    hook_insert_callbacks = [
        r for r in records if r.get("record_kind") == "auto_hook_insert"
    ]
    legacy_all_hook_flags = [
        r
        for r in meta_records
        if "all_hook_candidates_installed" in r
    ]
    creates = [r for r in records if r.get("record_kind") == "thread_create"]
    outputs = [r for r in records if r.get("record_kind") == "output"]
    nonempty_outputs = [r for r in outputs if has_raw_text(r)]
    by_thread: dict[int, list[dict[str, Any]]] = defaultdict(list)
    for record in records:
        if record.get("record_kind") in {
            "thread_create",
            "output",
            "thread_remove",
        }:
            by_thread[as_int(record.get("thread_id"))].append(record)

    text_thread_ids = {
        as_int(record.get("thread_id")) for record in nonempty_outputs
    }
    output_timestamps = [
        as_int(record.get("timestamp_ms")) for record in outputs
        if "timestamp_ms" in record
    ]
    record_sequences = sorted(
        as_int(record.get("seq"))
        for record in records
        if as_int(record.get("seq")) > 0
    )
    duplicate_record_sequences = sum(
        count - 1 for count in Counter(record_sequences).values() if count > 1
    )
    callback_sequences = sorted(
        as_int(record.get("callback_seq"))
        for record in find_candidates
        if as_int(record.get("callback_seq")) > 0
    )
    meta_preflight = [
        record.get("find_abi_preflight")
        for record in meta_records
        if "find_abi_preflight" in record
    ]
    max_records_values = {
        as_int(record.get("search_param", {}).get("maxRecords"))
        for record in find_starts
        if isinstance(record.get("search_param"), dict)
        and "maxRecords" in record.get("search_param", {})
    }
    max_records = max(max_records_values) if max_records_values else 0
    candidates_at_cap = [
        record
        for record in find_candidates
        if max_records > 0
        and as_int(record.get("callback_seq")) >= max_records
    ]
    saturated_duplicate_indexes = [
        record for record in find_candidates if record.get("duplicate_tracking_saturated")
    ]
    conversion_failures = [
        record
        for record in records
        if record.get("raw_text_conversion_ok") is False
        or record.get("hookcode_conversion_ok") is False
    ]
    truncated_records = [
        record for record in records if record.get("raw_text_truncated") is True
    ]
    thread_create_ids = {
        as_int(record.get("thread_id")) for record in creates
    }

    print(f"source: {args.log}")
    print(f"records: {len(records)}")
    print(f"record schemas: {', '.join(schemas) if schemas else '-'}")
    print(f"ThreadCreate callbacks: {len(creates)}")
    print(f"ThreadCreate unique thread IDs: {len(thread_create_ids)}")
    print(f"Output callbacks: {len(outputs)}")
    print(f"non-empty Output records: {len(nonempty_outputs)}")
    print(f"actual text threads: {len(text_thread_ids)}")
    print(f"FindHooks searches started: {len(find_starts)}")
    print(f"FindHooks dispatch records: {len(find_dispatched)}")
    print(f"FindHooks candidate callbacks: {len(find_candidates)}")
    print(f"FindHooks duplicate candidate callbacks: {len(find_duplicates)}")
    print(f"FindHooks call-entered records: {len(find_call_entered)}")
    print(
        "FindHooks real completion records: "
        f"{len(find_real_completion)} (completion_assumed is not counted)"
    )
    print(
        "FindHooks completion_assumed records: "
        f"{len(find_assumed_completion)}"
    )
    print(f"FindHooks shutdown/cancel records: {len(find_cancelled)}")
    print(f"FindHooks not-dispatched records: {len(find_not_dispatched)}")
    print(f"FindHooks dispatch-failed records: {len(find_dispatch_failed)}")
    print(
        "FindHooks ABI gate records: "
        f"{len(find_abi_gates)}; exact matches: "
        f"{sum(r.get('status') == 'exact_runtime_match' for r in find_abi_gates)}"
    )
    print(
        "meta find_abi_preflight values: "
        f"{', '.join(str(value) for value in meta_preflight) if meta_preflight else '-'}"
    )
    print(f"Luna DLL identity records: {len(dll_identity_records)}")
    print(
        "Luna_InsertHookCode returned_true records: "
        f"{len(insert_api_true)} (API result only; not installed)"
    )
    print(
        "LunaHookInsert callback records: "
        f"{len(hook_insert_callbacks)} (callback observed; not ThreadCreate)"
    )
    print(
        "legacy all_hook_candidates_installed flags: "
        f"{len(legacy_all_hook_flags)} (ignored; never evidence)"
    )
    if find_assumed_completion:
        print(
            "FindHooks completion verdict: no real end callback exists in "
            "this schema; only an assumed quiet-period boundary is present."
        )
    elif find_real_completion:
        print(
            "FindHooks completion verdict: a real completion-looking event "
            "was present; verify it against the v10.16 ABI before trusting it."
        )
    else:
        print(
            "FindHooks completion verdict: no completion evidence; the "
            "search may still be active or the run ended before the boundary."
        )
    if record_sequences:
        expected = set(range(record_sequences[0], record_sequences[-1] + 1))
        missing_sequences = sorted(expected - set(record_sequences))
        print(
            "JSONL record sequence range: "
            f"{record_sequences[0]}..{record_sequences[-1]} "
            f"(missing: {len(missing_sequences)}, duplicate: "
            f"{duplicate_record_sequences})"
        )
    else:
        print("JSONL record sequence range: - (missing: 0, duplicate: 0)")
    if callback_sequences:
        expected_callbacks = set(
            range(callback_sequences[0], callback_sequences[-1] + 1)
        )
        missing_callbacks = sorted(expected_callbacks - set(callback_sequences))
        print(
            "FindHooks callback_seq range: "
            f"{callback_sequences[0]}..{callback_sequences[-1]} "
            f"(missing in retained records: {len(missing_callbacks)})"
        )
    else:
        print("FindHooks callback_seq range: - (missing in retained records: 0)")
    print(
        "FindHooks maxRecords cap observations: "
        f"{len(candidates_at_cap)}; duplicate-index saturation observations: "
        f"{len(saturated_duplicate_indexes)}"
    )
    print(
        "raw conversion failures: "
        f"{len(conversion_failures)}; raw_text_truncated=true records: "
        f"{len(truncated_records)}"
    )
    print(
        "global average Output arrival interval (ms): "
        f"{average_interval(output_timestamps)}"
    )
    print()

    columns = [
        "thread_id",
        "thread_create",
        "output_callbacks",
        "nonempty_outputs",
        "hook_codes",
        "hook_names",
        "hook_addresses",
        "contexts",
        "ctx2_split_values",
        "source_kinds",
        "origins",
        "jp_records",
        "jp_pct",
        "en_records",
        "en_pct",
        "mixed_records",
        "role_marker",
        "narration_no_marker",
        "dollar_control",
        "percent_control",
        "hash_control",
        "system_api_tagged",
        "artifact_tagged",
        "duplicate_raw_texts",
        "first_timestamp_ms",
        "last_timestamp_ms",
        "avg_arrival_interval_ms",
    ]
    writer = csv.writer(sys.stdout, delimiter="\t", lineterminator="\n")
    print("complete thread table (diagnostic tags only; no source record was filtered)")
    writer.writerow(columns)
    for thread_id in sorted(by_thread):
        thread_records = by_thread[thread_id]
        thread_outputs = [
            r for r in thread_records if r.get("record_kind") == "output"
        ]
        text_outputs = [
            r
            for r in thread_outputs
            if has_raw_text(r)
        ]
        jp = sum(bool(r.get("has_japanese")) for r in text_outputs)
        en = sum(bool(r.get("has_english")) for r in text_outputs)
        mixed = sum(
            bool(r.get("has_japanese")) and bool(r.get("has_english"))
            for r in text_outputs
        )
        role = sum(bool(r.get("has_speaker_marker")) for r in text_outputs)
        timestamps = [
            as_int(r.get("timestamp_ms"))
            for r in thread_outputs
            if "timestamp_ms" in r
        ]
        raw_texts = [raw_text_key(r) for r in text_outputs]
        duplicate_count = sum(
            count - 1 for count in Counter(raw_texts).values() if count > 1
        )
        hook_codes = {
            str(r.get("hook_code", ""))
            for r in thread_records
            if r.get("hook_code", "") != ""
        }
        hook_names = {
            str(r.get("hook_name", ""))
            for r in thread_records
            if r.get("hook_name", "") != ""
        }
        hook_addresses = {
            as_int(r.get("hook_address"))
            for r in thread_records
            if "hook_address" in r
        }
        contexts = {
            as_int(r.get("context"))
            for r in thread_records
            if "context" in r
        }
        subcontexts = {
            as_int(r.get("subcontext"))
            for r in thread_records
            if "subcontext" in r
        }
        source_kinds = {
            str(r.get("source_kind", "unknown"))
            for r in thread_records
            if r.get("source_kind", "") != ""
        }
        origins = {
            str(r.get("origin", "unknown"))
            for r in thread_records
            if r.get("origin", "") != ""
        }
        first_timestamp = min(timestamps) if timestamps else "-"
        last_timestamp = max(timestamps) if timestamps else "-"
        row = [
            thread_id,
            sum(r.get("record_kind") == "thread_create" for r in thread_records),
            len(thread_outputs),
            len(text_outputs),
            fmt_set(hook_codes),
            fmt_set(hook_names),
            fmt_set(hook_addresses, address=True),
            fmt_set(contexts, address=True),
            fmt_set(subcontexts, address=True),
            fmt_set(source_kinds),
            fmt_set(origins),
            jp,
            percent(jp, len(text_outputs)),
            en,
            percent(en, len(text_outputs)),
            mixed,
            role,
            len(text_outputs) - role,
            sum(bool(r.get("has_dollar_control")) for r in text_outputs),
            sum(bool(r.get("has_percent_control")) for r in text_outputs),
            sum(bool(r.get("has_hash_control")) for r in text_outputs),
            sum(bool(r.get("system_api_hook_tag")) for r in text_outputs),
            sum(bool(r.get("artifact_tag")) for r in text_outputs),
            duplicate_count,
            first_timestamp,
            last_timestamp,
            average_interval(timestamps),
        ]
        writer.writerow(row)

    print()
    print("FindHooks candidate table (all callback records; duplicates retained)")
    writer.writerow(
        [
            "callback_seq",
            "seq",
            "callback_thread_id",
            "hook_code",
            "hook_address_from_code",
            "raw_text",
            "jp",
            "en",
            "mixed",
            "duplicate",
            "first_duplicate_callback_seq",
        ]
    )
    for record in find_candidates:
        has_japanese = bool(record.get("has_japanese"))
        has_english = bool(record.get("has_english"))
        writer.writerow(
            [
                record.get("callback_seq", ""),
                record.get("seq", ""),
                record.get("callback_thread_id", ""),
                record.get("hook_code", ""),
                record.get("hook_address_from_code", ""),
                record.get("raw_text", ""),
                has_japanese,
                has_english,
                has_japanese and has_english,
                bool(record.get("duplicate")),
                record.get("first_duplicate_callback_seq", ""),
            ]
        )
    print()
    print(
        "Interpretation: jp/en are record-level tags; role_marker is the raw "
        "@ marker heuristic, and narration_no_marker is only the complementary "
        "no-marker count, not a claim about engine semantics."
    )
    print(
        "Installation interpretation: resolver/queue, API return, HookInsert "
        "callback, ThreadCreate, and Output are independent evidence layers; "
        "this report never upgrades an API true or completion_assumed into "
        "installed or completed."
    )
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
