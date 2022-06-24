#!/usr/bin/env bash

echo "Update brew cache..."
brew update
echo "Upgrade formula(s) ..."
brew upgrade `brew list --formula` 2>/dev/null
echo "Upgrading cask ..."
brew upgrade --cask `brew list --cask`
