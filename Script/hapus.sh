#!/bin/bash
# Script Created By ࿔iᎷ•ƒiηeX
echo -e "=================== Informasi ========================"
echo -e "*                                                    *"
echo -e "*           Script Created By ࿔iᎷ•ƒiηeX               *"
echo -e "*            Telegram : t.me/X_ImFine                *"
echo -e "*                                                    *"
echo -e "=================== Informasi ========================"
echo -e ""
echo -e "======================================================"
read -e "* Masukan Username Yang Mau Di Hapus  : " Pengguna  "*"
echo -e "======================================================"

if getent passwd $Pengguna > /dev/null 2>&1; then
        userdel $Pengguna
        echo -e "===================== Hore ! ========================="
        echo -e "* Hore : Username $Pengguna Telah Di Hapus.          *"
        echo -e "=================== Yah Eror ! ======================="
else
        echo -e "=================== Yah Eror ! ======================="
        echo -e "* Maaf : Username $Pengguna Tidak Dapat Di Temukan.  *"
        echo -e "=================== Yah Eror ! ======================="
fi
