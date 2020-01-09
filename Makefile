# The shell we use
SHELL := /bin/bash

# We like colors
# From: https://coderwall.com/p/izxssa/colored-makefile-for-golang-projects
RED=`tput setaf 1`
GREEN=`tput setaf 2`
RESET=`tput sgr0`
YELLOW=`tput setaf 3`

VERSION := $(shell cat VERSION)

.PHONY: help
help: ## This help message
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

.PHONY: tag_github
tag_github: ## Tag the commit on GitHub with version nr.
	#@echo "$(VERSION) -m  chore(release): $(VERSION)"
	@git tag -a $(VERSION) -m "chore(release): $(VERSION)" || true
	@git push origin $(VERSION)

.PHONY: check_release_version
check_release_version: ## Get latest release from GitHub
	$(shell ./release_version.sh)

.PHONY: release
release: check_release_version tag_github ## Tag with release nr and push tag to GitHub
