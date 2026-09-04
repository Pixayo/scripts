#!/bin/bash

set -euo pipefail

# Opens the default file explorer
#
# Usage: n { URI }
#
# If no extra argument, opens current directory

path=$(realpath -m -- "${1:-.}")

if [[ -d "$path" ]]; then
  xdg-open "$path"
else
  echo "not found: $path" >&2
  echo "nothing was done" >&2
  exit 1
fi

# man: xdg-open opens a file or URL in the user's preferred application. [...]
