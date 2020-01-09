#!/bin/bash

# This script checks the status code
# of links included in all pur yaml files.
# It checks ONLY https based links!

# Dependencies: silver-searcher (ag)

set -eo pipefail

# Vars
ESC_SEQ="\x1b["
COL_RESET=$ESC_SEQ"39;49;00m"
COL_YELLOW=$ESC_SEQ"33;01m"
COL_RED=$ESC_SEQ"31;01m"
#COL_GREEN=$ESC_SEQ"32;01m"


# Getting list of links

echo -en "$COL_YELLOW Running linkcheck $COL_RESET\n"
ag --yaml https | awk '{ print $2 }' | \
	while IFS= read -r i; do
	echo "Checking $i"
	STATUS=$(curl -Is "$i" | head -1 | awk '{print $2}')
	if [[ $STATUS == 404 ]]; then
		echo -en "$COL_RED [404] $COL_RESET $i"
	fi
	echo ""
 	done
exit 0
