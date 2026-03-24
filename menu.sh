#!/bin/bash
# =============================================================
# menu.sh — Linux Lab Toolkit Startup Menu
# Runs automatically when the Docker container starts.
# Author: Deseray Ruiz — IT135 Introduction to Linux, NSC WN26
# =============================================================

# --- COLORS ---
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
CYAN='\033[0;36m'
BOLD='\033[1m'
RESET='\033[0m'

# --- MAIN MENU LOOP ---
# A while loop keeps the menu alive after returning from a tool
while true; do
    clear
    echo -e "${CYAN}"
    echo "  ██╗      █████╗ ██████╗     ████████╗ ██████╗  ██████╗ ██╗     "
    echo "  ██║     ██╔══██╗██╔══██╗       ██╔══╝██╔═══██╗██╔═══██╗██║     "
    echo "  ██║     ███████║██████╔╝       ██║   ██║   ██║██║   ██║██║     "
    echo "  ██║     ██╔══██║██╔══██╗       ██║   ██║   ██║██║   ██║██║     "
    echo "  ███████╗██║  ██║██████╔╝       ██║   ╚██████╔╝╚██████╔╝███████╗"
    echo "  ╚══════╝╚═╝  ╚═╝╚═════╝        ╚═╝    ╚═════╝  ╚═════╝ ╚══════╝"
    echo -e "${RESET}"
    echo -e "${BOLD}  Linux Lab Toolkit — North Seattle College IT135${RESET}"
    echo -e "  ${YELLOW}Running inside Docker — works anywhere!${RESET}"
    echo ""
    echo "  ┌─────────────────────────────────────────┐"
    echo "  │  What would you like to do?             │"
    echo "  │                                         │"
    echo "  │  1)  Launch Terminal Screensaver        │"
    echo "  │  2)  Run Docker Project Setup Tool      │"
    echo "  │  q)  Exit                               │"
    echo "  └─────────────────────────────────────────┘"
    echo ""
    read -p "  Select an option [1-2, q]: " choice

    # --- CASE STATEMENT handles each menu choice ---
    case $choice in
        1)
            clear
            echo -e "${GREEN}Launching screensaver menu...${RESET}"
            sleep 1
            bbash /workspaces/WN2026-IT135-Final-Project/screensaver.sh
            ;;
        2)
            clear
            echo -e "${GREEN}Launching Docker Project Setup...${RESET}"
            sleep 1
            bash /app/docker-setup.sh
            ;;
        q|Q)
            clear
            echo -e "${CYAN}Thanks for using Linux Lab Toolkit. Goodbye!${RESET}"
            echo ""
            exit 0
            ;;
        *)
            echo -e "${RED}  Invalid choice. Please try again.${RESET}"
            sleep 1
            ;;
    esac
done
