#!/usr/bin/env bash
set -euo pipefail

sync_router() {
  local state="$1" count="$2" result=0
  for ((i = 0; i < count; i++)); do
    result=$(((  result + state + i * 17 ) % 997))
  done
  echo "$result"
}

sync_router 17 17
