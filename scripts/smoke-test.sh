#!/usr/bin/env bash
set -euo pipefail

root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

required=(
  "$root/index.html"
  "$root/styles.css"
  "$root/CNAME"
)

for f in "${required[@]}"; do
  if [[ ! -f "$f" ]]; then
    echo "Mangler fil: $f"
    exit 1
  fi
done

count="$(find "$root/assets/images" -maxdepth 1 -type f -name 'product-*.svg' | wc -l)"
if [[ "$count" -lt 12 ]]; then
  echo "For fa produktbilder: fant $count, forventet minst 12"
  exit 1
fi

echo "Smoke test OK: filer og placeholder-bilder er pa plass."

