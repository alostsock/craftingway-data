#!/bin/bash

set -euo pipefail

for filename in ./*.csv; do
  sed -i '1d;3d' "$filename"
done

for filename in ./*/*.csv; do
  sed -i '1d;3d' "$filename"
done
