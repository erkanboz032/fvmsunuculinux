
cd /root
clear
echo "---------------------------------------"
echo "Eminmisiniz?"
echo "Lütfen yapmak istediğiniz işlemi seçiniz"
echo -e "\e[38;5;76m
1 - Evet \n
2 - Hayır \n
\033[0m"
echo "---------------------------------------"

read islemler

case $islemler in

1)
	clear
	rm -rf /home/sunucu
	cd /root
	wget http://fivem.erkanboz.com.tr/fvminstaller.sh
	chmod -R 777 /root/fvminstaller.sh
	rm -rf /root/menu
	cd /root
	echo "Başarıyla Silindi ve installer geri yüklendi"
;;

2)
	clear
	echo "Lütfen Bekleyiniz..."
	sleep 2
	sh /root/menu/skur.sh
;;

*)
echo "Hatalı işlem yaptınız"
sleep 2
sh /root/menu/menu.sh
esac
