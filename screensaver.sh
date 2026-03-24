#!/bin/bash
# =============================================================
# screensaver.sh — Linux Lab Ambiance Selector
# IT135 Introduction to Linux — North Seattle College WN26
# Author: [Your Name]
#
# CREDITS:
#   Screensaver animations sourced from the open source project:
#   attogram/bash-screensavers — https://github.com/attogram/bash-screensavers
#   Licensed under MIT License. All visual animation code belongs
#   to the original authors. This launcher script is original work.
# =============================================================

# --- CONFIGURATION ---
# Path is set for the Docker container environment (/app)
# Change BASE_DIR if running outside of Docker
BASE_DIR="/app/bash-screensavers"
REPO_URL="https://github.com/attogram/bash-screensavers.git"

# --- COLORS ---
GREEN='\033[0;32m'
CYAN='\033[0;36m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
RESET='\033[0m'

# --- AUTO-INSTALLER ---
# if/then — only download the repo if it isn't already present
if [ ! -f "$BASE_DIR/screensaver.sh" ]; then
    clear
    echo -e "${CYAN}"
    echo "  ======================================"
    echo "    LINUX LAB AMBIANCE SELECTOR"
    echo "  ======================================"
    echo -e "${RESET}"
    echo -e "  ${YELLOW}Screensavers not found. Downloading...${RESET}"
    echo "  This will only happen once!"
    echo ""
    git clone "$REPO_URL" "$BASE_DIR"

    # if/then — check the download actually worked
    if [ ! -f "$BASE_DIR/screensaver.sh" ]; then
        echo -e "${RED}  Error: Download failed. Check your internet connection.${RESET}"
        exit 1
    fi
    echo -e "  ${GREEN}Download complete! Starting in 3 seconds...${RESET}"
    sleep 3
fi

# --- ENSURE CORRECT DIRECTORY ---
cd "$BASE_DIR"

# --- THE MENU ---
clear
echo -e "${CYAN}"
echo "  ======================================"
echo "    LINUX LAB AMBIANCE SELECTOR"
echo "  ======================================"
echo -e "${RESET}"
echo "  1)  The Matrix"
echo "  2)  Heavy Rain"
echo "  3)  Growing Pipes"
echo "  4)  Starfield"
echo "  5)  Classic Menu (Full List)"
echo "  q)  Back to Main Menu"
echo ""
echo -e "  ${YELLOW}TIP: Press [Ctrl+C] to exit any screensaver${RESET}"
echo "  --------------------------------------"
echo ""
read -p "  Select your vibe [1-5, q]: " choice

# --- LAUNCH LOGIC ---
case $choice in
    1) clear; echo "Launching Matrix... Press [Ctrl+C] to exit."; sleep 2; bash "$BASE_DIR/gallery/matrix/matrix.sh" ;;
    2) clear; echo "Launching Heavy Rain... Press [Ctrl+C] to exit."; sleep 2; bash "$BASE_DIR/gallery/rain/rain.sh" ;;
    3) clear; echo "Launching Growing Pipes... Press [Ctrl+C] to exit."; sleep 2; bash "$BASE_DIR/gallery/pipes/pipes.sh" ;;
    4) clear; echo "Launching Starfield... Press [Ctrl+C] to exit."; sleep 2; bash "$BASE_DIR/gallery/stars/stars.sh" ;;
    5) bash "$BASE_DIR/screensaver.sh" ;;
    q|Q) clear; echo -e "${GREEN}Returning to main menu...${RESET}"; sleep 1; exit 0 ;;
    *) echo -e "${RED}  Invalid choice!${RESET}"; sleep 1; bash "$0" ;;
esac
