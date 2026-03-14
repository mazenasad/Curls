#!/bin/bash

# --- Colors for Professional Look ---
G='\033[0;32m'
R='\033[0;31m'
Y='\033[1;33m'
C='\033[0;36m'
NC='\033[0m'

# Function to keep animation at top
refresh() { echo -ne "\033[H"; }

# --- Animation Functions ---

# 1. Dancing Man
action_dance() {
    clear
    for i in {1..20}; do
        refresh; echo -e "${G}   (o_o)   \n   <) )>   \n   /   \\   ${NC}"; sleep 0.2
        refresh; echo -e "${G}    \\(o_o)/ \n      ) )   \n     /   \\  ${NC}"; sleep 0.2
    done
}

# 2. Flying Plane
action_fly() {
    clear
    for i in {1..30}; do
        refresh; echo -e "${C}"
        printf "%${i}s" " " ; echo "      |      "
        printf "%${i}s" " " ; echo "    --+--    "
        printf "%${i}s" " " ; echo "     * * "
        sleep 0.1
    done
}

# 3. Jumping Man
action_jump() {
    clear
    for i in {1..15}; do
        clear; echo -e "${Y}\n\n\n   (o_o)\n   <) )>\n   /   \\ ${NC}"; sleep 0.2
        clear; echo -e "${Y}   (o_o)\n   <) )>\n   /   \\ ${NC}"; sleep 0.2
    done
}

# --- Main Menu ---
while true; do
    clear
    echo -e "${C}=========================================="
    echo -e "      ULTIMATE ASCII MASTER MENU          "
    echo -e "=========================================="
    echo -e "${G} 1) Dance Animation${NC}"
    echo -e "${G} 2) Flying Plane${NC}"
    echo -e "${G} 3) Jumping Man${NC}"
    echo -e "${G} 4) System Information${NC}"
    echo -e "${R} 5) Exit${NC}"
    echo -e "${C}=========================================="
    echo -n "Choose an option (1-5): "
    read choice

    case $choice in
        1) action_dance ;;
        2) action_fly ;;
        3) action_jump ;;
        4) clear; echo "User: $(whoami)"; echo "OS: $(uname)"; sleep 3 ;;
        5) echo "Goodbye!"; exit 0 ;;
        *) echo "Invalid choice!"; sleep 1 ;;
    esac
    echo -e "\n${Y}Press Enter to return to menu...${NC}"
    read
done
