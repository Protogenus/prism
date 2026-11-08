#!/usr/bin/env bash
# Regenerate AGENTS.md from skills/prism/SKILL.md so the two never drift.
# AGENTS.md must stay self-contained: agents that only read AGENTS.md
# (no plugin install) get the full method from it.
#
# Usage: scripts/sync-agents.sh          write AGENTS.md
#        scripts/sync-agents.sh --check  exit 1 if AGENTS.md is out of date
set -euo pipefail

root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
src="$root/skills/prism/SKILL.md"
out="$root/AGENTS.md"

# Drop the YAML frontmatter (everything up to and including the second ---).
body="$(awk 'BEGIN{n=0} n>=2{print; next} /^---[[:space:]]*$/{n++}' "$src")"

generated="<!-- Generated from skills/prism/SKILL.md by scripts/sync-agents.sh. Do not edit by hand. -->
$body
"

if [ "${1:-}" = "--check" ]; then
  if [ "$(cat "$out")" = "$(printf '%s' "$generated")" ]; then
    echo "AGENTS.md is up to date"
  else
    echo "AGENTS.md is out of date; run scripts/sync-agents.sh" >&2
    exit 1
  fi
else
  printf '%s' "$generated" > "$out"
  echo "Wrote $out"
fi
