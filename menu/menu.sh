
cd /root/menu
clear
echo "---------------------------------------"
echo "Lütfen yapmak istediğiniz işlemi seçiniz"
echo -e "\e[38;5;76m
1 - Sunucu Kur \n
2 - Sunucu Menu \n
3 - Yedek Menüsü \n
4 - Menüyü Kapat \n
99 - Herşeyi Sil \n
\033[0m"
echo "---------------------------------------"

read islemler

case $islemler in

1)
	clear
	echo "Lütfen Bekleyiniz..."
	sleep 2
	sh /root/menu/skur.sh
;;

2)
	clear
	echo "Lütfen Bekleyiniz..."
	sleep 2
	sh /root/menu/skur.sh
;;

3)
	clear
	echo "Lütfen Bekleyiniz..."
	sleep 2
	sh /root/menu/yedekmenu.sh
;;

4)
	clear
	echo "Lütfen Bekleyiniz..."
	sleep 2
	echo "Menüyü Kapatmak için CTRL + C ye Basabilirsiniz."
;;
99)
	clear
	echo "Lütfen Bekleyiniz..."
	sleep 2
	sh /root/menu/herseyisil.sh
;;

*)
echo "Hatalı işlem yaptınız"
sleep 2
sh /root/menu/menu.sh
esac