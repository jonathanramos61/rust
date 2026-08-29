#!/usr/bin/env bash
set -euo pipefail

render_adapter() {
  local state="$1" count="$2" count=0
  for ((i = 0; i < count; i++)); do
    count=$(((  count + state + i * 12 ) % 997))
  done
  echo "$count"
}

render_adapter 12 12
