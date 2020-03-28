
cd /root/home
clear
echo "---------------------------------------"
echo "Lütfen yapmak istediğiniz işlemi seçiniz"
echo -e "\e[38;5;76m
1 - Sunucuyu Başlat \n
2 - Sunucuyu Kapat \n
3 - Sunucuya Reset At
4 - Sunucu Konsolunu Aç \n
5 - Sunucuya Komut Gönder \n
6 - Sunucu Loglarını Temizle \n
7 - Sunucu Kur \n
\033[0m"
echo "---------------------------------------"

read islemler

case $islemler in

1)
    clear
    echo "Loglar Siliniyor"
    sleep 2
    cd /home/sunucu && rm -rf cache
    cd /home/sunucu/server && rm -rf cache && rm -rf autorun.log
    echo "Loglar Silindi"
    sleep 2
    cd /home/sunucu/server
    sleep 2
    screen -dms Fivem sh /home/sunucu/surum/run.sh +exec server.cfg
    clear
    echo "Sunucu Açıldı"
    sleep 2
    sh /root/menu/sunucumenu.sh
;;

2)
    clear
    sleep 1
    screen -s Fivem -X quit
    echo "Sunucu kapatıldı"
    sleep 2
    sh /root/menu/sunucumenu.sh
;;

3)
    clear
    sleep 1
    screen -s Fivem -X quit
    echo "Sunucu kapatıldı"
    sleep 2
    clear
    echo "Loglar Siliniyor"
    sleep 2
    cd /home/sunucu && rm -rf cache
    cd /home/sunucu/server && rm -rf cache && rm -rf autorun.log
    echo "Loglar Silindi"
    sleep 2
    cd /home/sunucu/server
    sleep 2
    screen -dms Fivem sh /home/sunucu/surum/run.sh +exec server.cfg
    clear
    echo "Sunucu Açıldı"
    sleep 2
    sh /root/menu/sunucumenu.sh


;;

4)
    clear
    echo "Sunucu konsolu açılıyor."
    sleep 2
    echo "Sunucu konsolunu kapatmak için yukarıdan x işaretine basabilirsiniz"
    sleep 2
    echo "Dikkat: ctrl +c işlemi yaptığınızda sunucu kapatalacaktır!!"
    sleep 2
    screen -r -d Fivem
;;

5)
clear
echo "Lütfen göndereceğiniz komutu yazınız."
read com
echo "screen -s Fivem -p 0 -X stuff '$com'" >> /root/menu/komutgonder.sh
echo "screen -s Fivem -p 0 -X stuff `echo -ne '\015'`" >> /root/menu/komutgonder.sh
echo ''>> /root/menu/komutgonder.sh
sh /root/menu/komutgonder.sh
rm -rf /root/menu/komutgonder.sh
echo -e "\e[38;5;46mKomut sunucuya gönderildi.\033[0m"
echo -e "\e[38;5;46m2 Saniye içinde yönlendiriyoruz..\033[0m"
sleep 2
sh /root/menu/menu.sh
;;

6)
    clear
    echo "Loglar Siliniyor"
    sleep 2
    cd /home/sunucu && rm -rf cache
    cd /home/sunucu/server && rm -rf cache && rm -rf autorun.log
    echo "Loglar Silindi"
;;

7)
clear
sh /root/menu/sunucukur.sh

;; 

*)
echo "Hatalı işlem yaptınız"
sleep 2
sh /root/menu/sunucumenu.sh
esac
