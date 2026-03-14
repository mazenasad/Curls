#!/bin/bash

# --- إعدادات الألوان ---
RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
NC='\033[0m' # لا يوجد لون

# --- دوال الأنميشن ---

# 1. الرجل الراقص (مطول)
dance_pro() {
    clear
    for i in {1..20}; do
        echo -e "${GREEN}\033[H"
        echo "   (o_o)   "
        echo "   <) )>   "
        echo "   /   \\   "
        sleep 0.2
        echo -e "\033[H"
        echo "    \\(o_o)/ "
        echo "      ) )   "
        echo "     /   \\  "
        sleep 0.2
    done
}

# 2. الطائرة النفاثة (تقطع الشاشة)
jet_stream() {
    clear
    for i in {1..40}; do
        echo -e "${CYAN}\033[H"
        printf "%${i}s" " " ; echo "      |      "
        printf "%${i}s" " " ; echo "    --+--    "
        printf "%${i}s" " " ; echo "   **---** "
        printf "%${i}s" " " ; echo "    * * "
        sleep 0.05
    done
}

# 3. القلب النابض
pulsing_heart() {
    clear
    for i in {1..15}; do
        echo -e "${RED}\033[H"
        echo "  *** *** "
        echo " ***** ***** "
        echo "  ********* "
        echo "   ******* "
        echo "    ***** "
        echo "     *** "
        echo "      * "
        sleep 0.4
        clear
        echo -e "\033[H\n\n     ❤️      "
        sleep 0.4
    done
}

# 4. مصفوفة الهكر (Matrix)
matrix_effect() {
    clear
    echo -e "${GREEN}"
    for i in {1..50}; do
        echo "$((RANDOM%2)) $((RANDOM%10)) $((RANDOM%2)) $((RANDOM%10)) $((RANDOM%2)) $((RANDOM%10)) $((RANDOM%2)) $((RANDOM%10)) $((RANDOM%2))"
        sleep 0.05
    done
    echo -e "${NC}"
}

# 5. القطة المتحركة
walking_cat() {
    clear
    for i in {1..30}; do
        echo -e "${PURPLE}\033[H"
        printf "%${i}s" " " ; echo "  /\\_/\\  "
        printf "%${i}s" " " ; echo " ( o.o ) "
        printf "%${i}s" " " ; echo "  > ^ <  "
        sleep 0.1
    done
}

# 6. هجوم الكائنات الفضائية
ufo_attack() {
    clear
    for i in {1..20}; do
        echo -e "${BLUE}\033[H"
        printf "%${i}s" " " ; echo "    .---.    "
        printf "%${i}s" " " ; echo "   /_ _ _\\   "
        printf "%${i}s" " " ; echo "  (  ' '  )  "
        printf "%${i}s" " " ; echo "   '-----'   "
        sleep 0.1
    done
}

# --- القائمة الرئيسية ---
show_menu() {
    clear
    echo -e "${BLUE}================================================${NC}"
    echo -e "${CYAN}     S Y S T E M   M A S T E R   M E N U       ${NC}"
    echo -e "${BLUE}================================================${NC}"
    echo -e "${GREEN} 1)${NC} الرقاص المحترف (Dance Pro)"
    echo -e "${GREEN} 2)${NC} الطائرة النفاثة (Fast Jet)"
    echo -e "${GREEN} 3)${NC} القلب النابض (Love Heart)"
    echo -e "${GREEN} 4)${NC} كود الهكر (Matrix Rain)"
    echo -e "${GREEN} 5)${NC} القطة القافزة (Walking Cat)"
    echo -e "${GREEN} 6)${NC} طبق فضائي (UFO)"
    echo -e "${GREEN} 7)${NC} معلومات المعالج (CPU Info)"
    echo -e "${GREEN} 8)${NC} فحص الشبكة (Ping Google)"
    echo -e "${GREEN} 9)${NC} التاريخ والوقت (Date/Time)"
    echo -e "${RED} 10)${NC} خروج من النظام (Exit)"
    echo -e "${BLUE}================================================${NC}"
    echo -n "أدخل اختيارك يا بطل: "
}

# --- تشغيل البرنامج ---
while true; do
    show_menu
    read choice
    case $choice in
        1) dance_pro ;;
        2) jet_stream ;;
        3) pulsing_heart ;;
        4) matrix_effect ;;
        5) walking_cat ;;
        6) ufo_attack ;;
        7) clear; lscpu || echo "معلومات المعالج غير متاحة هنا"; sleep 3 ;;
        8) clear; ping -c 4 google.com || ping google.com -n 4; sleep 2 ;;
        9) clear; date; sleep 3 ;;
        10) echo "وداعاً!"; exit 0 ;;
        *) echo -e "${RED}اختيار خاطئ!${NC}"; sleep 1 ;;
    esac
    echo -e "\n${GREEN}تمت المهمة! اضغط Enter للعودة للقائمة...${NC}"
    read
done

