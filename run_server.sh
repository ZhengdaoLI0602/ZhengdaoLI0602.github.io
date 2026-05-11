#!/usr/bin/env bash
# Git Bash picks the extensionless `bundle` stub first; its shebang (`#! ruby`) fails under bash.
# Running bundler via Ruby (`ruby -S bundle`) executes the same script correctly.
set -e
cd "$(dirname "$0")"

if command -v ruby >/dev/null 2>&1; then
  exec ruby -S bundle exec jekyll liveserve
fi
exec bundle exec jekyll liveserve
