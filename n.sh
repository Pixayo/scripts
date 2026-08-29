#!/bin/bash

# Opens the default file explorer
#
# Usage: n { URI }
#
# If no extra argument, opens current directory

if xdg-open $1; then
  printf "opening: %s\n" $1
else
  printf "opening: %s as default\n" $(pwd)
  xdg-open .
fi;

# man: xdg-open opens a file or URL in the user's preferred application. [...]
