
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
	mkdir /home/sunucu/serveryedekleri
	cd /home/sunucu/serveryedekleri && rm -rf *
	echo "Lütfen Bekleyiniz..."
	sleep 2
	clear
	echo "Başarıyla Silindi"
	sleep 2
	sh /root/menu/yedekmenu.sh
;;

2)
	clear
	echo "Lütfen Bekleyiniz..."
	sleep 2
	sh /root/menu/yedekmenu.sh
;;

*)
echo "Hatalı işlem yaptınız"
sleep 2
sh /root/menu/yedekmenu.sh
esac