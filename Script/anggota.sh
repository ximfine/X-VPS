#!/bin/bash
#Created By ࿔iᎷ•ƒiηeX

echo "================================"
echo "* USERNAME          EXP DATE   *"
echo "================================"
while read expired
do
        AKUN="$(echo $expired | cut -d: -f1)"
        ID="$(echo $expired | grep -v nobody | cut -d: -f3)"
        exp="$(chage -l $AKUN | grep "Account expired" | awk -F": " '{print $2}')"
        if [[ $ID -ge 1000 ]]; then
        printf "%-17s %2s\n" "$AKUN" "$exp"
        fi
done < /etc/passwd
JUMLAH="$(awk -F: '$3 >= 1000 && $1 != "nobody" {print $1}' /etc/passwd | wc -l)"
echo -e "===================== Total =========================="
echo "         Total Semua Anggota Di Server : $JUMLAH "
echo -e "===================== Total =========================="
echo -e ""
echo -e "=================== Informasi ========================"
echo -e "*                                                    *"
echo -e "*           Script Created By ࿔iᎷ•ƒiηeX               *"
echo -e "*            Telegram : t.me/X_ImFine                *"
echo -e "*                                                    *"
echo -e "=================== Informasi ========================"
