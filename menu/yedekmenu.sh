
cd /root/menu
clear
echo "---------------------------------------"
echo "Lütfen yapmak istediğiniz işlemi seçiniz"
echo -e "\e[38;5;76m
1 - Yedek Al \n
2 - Yedekleri Listele \n
3 - Tüm Yedekleri Sil \n
4 - Ana Menüye Dön \n
\033[0m"
echo "---------------------------------------"

read islemler

case $islemler in

1)
	clear
	echo "Lütfen Bekleyiniz..."
	sleep 2
	cd /home/sunucu && rm -rf cache
	cd /home/sunucu/server && rm -rf cache && rm -rf autorun.log
	clear
	echo "Loglar silindi!"
	clear
	echo "Yedekler alınıyor..."
	sleep 2
	mkdir /home/sunucu/serveryedekleri
	cd /home/sunucu/serveryedekleri
	mkdir `date +%d.%m.%Y_%H.%m`
	cd `date +%d.%m.%Y_%H.%m`
	tar cfzv server.tar.gz /home/sunucu
	echo "Yedek alnndı!"
	sleep 2 
	sh /root/menu/yedekmenu.sh

;;

2)
	clear
	echo "Yedekler Listeleniyor..."
	sleep 2
	clear
	echo "---------------------------------------"
	ls /home/sunucu/serveryedekleri
	echo "---------------------------------------"
	echo "Yedekler Listelendi..."
	sleep 2
	echo "15 Saniye Sonra Sonra Ana Menüye Geri Döneceksiniz"
	sleep 15
;;

3)
	clear
	echo "Lütfen Bekleyiniz..."
	sleep 2
	sh /root/menu/yedeksil.sh
;;

4)
	clear
	echo "Lütfen Bekleyiniz..."
	sleep 2
	sh /root/menu/menu.sh
;;

*)
echo "Hatalı işlem yaptınız"
sleep 2
sh /root/menu/yedekmenu.sh
esac