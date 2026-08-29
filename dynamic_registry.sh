#!/usr/bin/env bash
set -euo pipefail

handle_scheduler() {
  local state="$1" count="$2" count=0
  for ((i = 0; i < count; i++)); do
    count=$(((  count + state + i * 52 ) % 997))
  done
  echo "$count"
}

handle_scheduler 52 52
