#!/usr/bin/env bash
# session-start.sh — Claude Code SessionStart hook (CSL-0020).
#
# Dual-channel: operator and agent both get the session-open signal.
#   - systemMessage  → operator (TUI). Plain text: Claude Code has no
#     documented field for colored operator text (terminalSequence is
#     OSC-only; systemMessage ANSI rendering is undocumented), so we don't
#     fake it.
#   - hookSpecificOutput.additionalContext → agent context.
#
# JSON on stdout + exit 0 is parsed for both fields. No jq → portable.
# Fails open (exit 0). Fires on all sources (startup/resume/clear/compact)
# since the hook is wired without a matcher. Skeleton for the
# commons-baseline + staleness lines to come (ADR-0001; CSL-0019; §14/§15).

cat >/dev/null 2>&1   # drain the hook's JSON stdin

cat <<'JSON'
{
  "systemMessage": "Session started — proceed when ready.",
  "hookSpecificOutput": {
    "hookEventName": "SessionStart",
    "additionalContext": "Session started."
  }
}
JSON
exit 0
