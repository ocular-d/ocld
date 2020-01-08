#!/bin/bash

set -eo pipefail

# Vars
ESC_SEQ="\x1b["
COL_RESET=$ESC_SEQ"39;49;00m"
#COL_YELLOW=$ESC_SEQ"33;01m"
COL_RED=$ESC_SEQ"31;01m"
#COL_GREEN=$ESC_SEQ"32;01m"

VERSION=$(cat VERSION)
CURRENT_RELEASE=$(curl --silent "https://github.com/ocular-d/ocld/releases/latest" | sed 's#.*tag/\(.*\)\".*#\1#')

if [ "$VERSION" == "$CURRENT_RELEASE" ]; then
    echo -en "$COL_RED A release with version nr $VERSION already exits!$COL_RESET\n"
    exit 1
else
    :
fi
exit 0
