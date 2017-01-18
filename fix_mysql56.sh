#!/bin/bash

set -euo pipefail

which brew >/dev/null || {
  echo "Homebrew is not installed or not in the PATH!"
  exit 1
}

# It's okay for this to exit non-zero
launchctl stop homebrew.mxcl.mysql56 || true
rm -f ~/Library/LaunchAgents/homebrew.mxcl.mysql56.plist
brew services restart mysql@5.6
