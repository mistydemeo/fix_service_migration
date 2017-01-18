#!/bin/bash

set -euo pipefail

which brew >/dev/null || {
  echo "Homebrew is not installed or not in the PATH!"
  exit 1
}

function headline() {
  printf "$(tput setaf 4)==>$(tput sgr0)$(tput bold) ${1:-}$(tput sgr0)\n"
}

# It's okay for this to exit non-zero
headline "Removing leftovers under the old name"
launchctl stop homebrew.mxcl.mysql56 || true
rm -f ~/Library/LaunchAgents/homebrew.mxcl.mysql56.plist
if [ -d $(brew --prefix)/Cellar/mysql56 ]; then
  brew unlink mysql56
fi
headline "Making sure the new service is running"
brew link mysql@5.6
brew services restart mysql@5.6
