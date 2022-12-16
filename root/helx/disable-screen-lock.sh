#!/bin/bash

set -eoux pipefail

# Disable the screen lock and idle screensaver.
dconf write /org/mate/screensaver/lock-enabled false
dconf write /org/mate/screensaver/idle-activation-enabled false
