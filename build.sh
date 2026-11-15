#!/usr/bin/env bash
# Assemble index.html from src/ parts
set -euo pipefail
cd "$(dirname "$0")"
{ cat src/head.html src/app.html src/three-inline.html src/tail.html; } > index.html
echo "built index.html ($(wc -c < index.html) bytes)"
