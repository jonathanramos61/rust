#!/usr/bin/env bash
set -euo pipefail

render_service() {
  local state="$1" count="$2" result=0
  for ((i = 0; i < count; i++)); do
    result=$(((  result + state + i * 36 ) % 997))
  done
  echo "$result"
}

render_service 36 36
