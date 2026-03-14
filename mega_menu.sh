#!/bin/bash

# --- الألوان (تشتغل على كالي وتيرمينال ويندوز الحديث) ---
R='\033[0;31m'
G='\033[0;32m'
B='\033[0;34m'
Y='\033[1;33m'
C='\033[0;36m'
NC='\033[0m'

# --- دالة لتثبيت الرسمة في أعلى الشاشة ---
refresh() { echo -ne "\033[H"; }

# 1. أنميشن الرجل الراقص (مطول)
dance_action() {
    clear
    for i in {1..20}; do
        refresh; echo -e "${G}  (o_o)  \n  <) )>  \n  /  \\   ${NC}"; sleep 0.2
        refresh; echo -e "${G}  \\(o_o)/ \n    ) )   \n   /  \\   ${NC}"; sleep 0.2
    done
}

# 2. أنميشن السيارة (تتحرك)
car_animation() {
    clear
    for i in {1..40}; do
        refresh; echo -e "${Y}"
        printf "%${i}s" " " ; echo "      ______"
        printf "%${i}s" " " ; echo "    _/  |_ \_ "
        printf "%${i}s" " " ; echo "   |  _     _ |"
        printf "%${i}s" " " ; echo "   '-(_)---(_)-'"
        sleep 0.05
    done
}

# 3. أنميشن الطائرة (إقلاع)
plane_fly() {
    clear
    for i in {1..25}; do
        echo -e "${C}"
        printf "%${i}s" " " ; echo "      |"
        printf "%${i}s" " " ; echo "    --+--"
        printf "%${i}s" " " ; echo "     * *"
        sleep 0.1; clear
    done
}

# 4. مصفوفة الهكر (Matrix)
matrix_rain() {
    clear; echo -e "${G}"
    for i in {1..100}; do
        echo "$((RANDOM%2)) $((RANDOM%9)) $((RANDOM%2)) $((RANDOM%9)) $((RANDOM%2)) $((RANDOM%9)) $((RANDOM%2))"
        sleep 0.03
    done
    echo -e "${NC}"
}

# 5. أنميشن الانفجار
boom() {
    clear; echo -e "${R}"
    echo "      ( )      "; sleep 0.2; clear
    echo "     (***)     "; sleep 0.2; clear
    echo "    (*****)    "; sleep 0.2; clear
    echo "   (  BOOM  )  "; sleep 0.3; clear
    echo "    (*****)    "; sleep 0.2; clear
    echo "      ( )      "; sleep 0.2
}

# 6. معلومات النظام (تشتغل على كالي وويندوز)
sys_info() {
    clear
    echo -e "${B}--- معلومات جهازك الحالي ---${NC}"
    echo "النظام: $(uname -o 2>/dev/null || echo Windows)"
    echo "المستخدم: $(whoami)"
    echo "الوقت: $(date)"
    echo "--------------------------"
    sleep 4
}

# --- القائمة الرئيسية الكبيرة ---
while true; do
    clear
    echo -e "${C}################################################"
    echo -e "##                                            ##"
    echo -e "##     MAZEN ASAD - MULTI-SYSTEM MENU         ##"
    echo -e "##        (KALI LINUX & WINDOWS CMD)          ##"
    echo -e "##                                            ##"
    echo -e "################################################${NC}"
    echo ""
    echo -e "${G} 1)${NC} رقصة الرجل الراقص (Dance)"
    echo -e "${G} 2)${NC} حركة السيارة السريعة (Car)"
    echo -e "${G} 3)${NC} إقلاع الطائرة (Airplane)"
    echo -e "${G} 4)${NC} مصفوفة الأرقام (Matrix)"
    echo -e "${G} 5)${NC} تأثير الانفجار (Explosion)"
    echo -e "${G} 6)${NC} فحص الشبكة (Ping Google)"
    echo -e "${G} 7)${NC} معرفة الـ IP الخاص بك"
    echo -e "${G} 8)${NC} معلومات النظام (System Info)"
    echo -e "${G} 9)${NC} عرض رسالة ترحيب عملاقة"
    echo -e "${R} 10) خروج (Exit)${NC}"
    echo ""
    echo -n "اختار رقم العملية (1-10): "
    read choice

    case $choice in
        1) dance_action ;;
        2) car_animation ;;
        3) plane_fly ;;
        4) matrix_rain ;;
        5) boom ;;
        6) clear; ping -c 4 google.com || ping google.com -n 4; sleep 2 ;;
        7) clear; curl -s https://ifconfig.me || echo "خطأ في الاتصال"; echo ""; sleep 4 ;;
        8) sys_info ;;
        9) clear; echo -e "${Y}WELCOME TO MAZEN'S TERMINAL!${NC}"; sleep 3 ;;
        10) echo "مع السلامة!"; exit 0 ;;
        *) echo "رقم غلط يا بطل.. جرب تاني"; sleep 1 ;;
    esac
    echo -e "\n${B}اضغط Enter للرجوع للقائمة...${NC}"
    read
done
