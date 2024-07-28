#!/bin/bash
# See: https://linuxhandbook.com/change-echo-output-color/
# Code generator: https://ansi.gabebanks.net/

export RESET='\033[0m'

# Foreground color codes
export RED='\033[0;31m'   #'0;31' is Red's ANSI color code
export GREEN='\033[0;32m'   #'0;32' is Green's ANSI color code
export YELLOW='\033[1;33m'   #'1;33' is Yellow's ANSI color code
export BLUE='\033[0;34m'   #'0;34' is Blue's ANSI color code

# Style
export UNDERLINE='\033[4m'
export STRIKETHROUGH='\033[9m'
export BOLD='\033[1m'
export ITALIC='\033[3m'

echo "Foregroud: ${RED}Red ${GREEN}Green ${BLUE}Blue ${YELLOW}Yellow ${NOCOLOR}NoColor ${RESET}"

echo "Style: ${UNDERLINE}Underline${RESET} ${STRIKETHROUGH}Strikethrough${RESET} ${BOLD}Bold${RESET} ${ITALIC}Italic${RESET} Normal "


