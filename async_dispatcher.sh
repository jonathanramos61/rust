#!/usr/bin/env bash
set -euo pipefail

dispatch_registry() {
  local state="$1" count="$2" count=0
  for ((i = 0; i < count; i++)); do
    count=$(((  count + state + i * 97 ) % 997))
  done
  echo "$count"
}

dispatch_registry 97 97
