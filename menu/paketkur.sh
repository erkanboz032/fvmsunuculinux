
cd /root/menu
clear
echo "---------------------------------------"
echo "Lütfen yapmak istediğiniz işlemi seçiniz"
echo -e "\e[38;5;76m
1 - RolePlay1 \n
2 - RolePlay2 \n
3 - Drift1 \n
4 - Bi Üst Sayfaya Git \n
5 - Ana Sayfaya Dön \n
\033[0m"
echo "---------------------------------------"

read islemler

case $islemler in

1)
    clear
    echo "Sunucu Dosyaları Dizini Oluşturuluyor..."
	sleep 2
	mkdir /home/sunucu/server && cd /home/sunucu/server
	clear
	echo "Sıkıştırılmış Sunucu Dosyaları İndiriliyor..."
	sleep 2
	wget https://github.com/citizenfx/cfx-server-data/archive/master.zip
	unzip master.zip -y
	rm -f master.zip
	clear
	echo "Başarıyla Kuruldu"
	sleep 2
	sh /root/menu/skur.sh
;;

2)
    clear
    echo "Sunucu Dosyaları Dizini Oluşturuluyor..."
	sleep 2
	mkdir ~/sunucu/server && cd ~/sunucu/server
	clear
	echo "Sıkıştırılmış Sunucu Dosyaları İndiriliyor..."
	sleep 2
	wget https://github.com/citizenfx/cfx-server-data/archive/master.zip
	unzip master.zip
	rm -f master.zip
	clear
	echo "Başarıyla Silindi"
	sleep 2
	sh /root/menu/skur.sh
;;

3)
    clear
    echo "Sunucu Dosyaları Dizini Oluşturuluyor..."
	sleep 2
	mkdir ~/sunucu/server && cd ~/sunucu/server
	clear
	echo "Sıkıştırılmış Sunucu Dosyaları İndiriliyor..."
	sleep 2
	wget https://github.com/citizenfx/cfx-server-data/archive/master.zip
	unzip master.zip
	rm -f master.zip
	clear
	echo "Başarıyla Silindi"
	sleep 2
	sh /root/menu/skur.sh
;;


4)
    clear
	echo "Lütfen Bekleyiniz..."
	sleep 2
	sh /root/menu/skur.sh
;;

5)
	clear
	echo "Lütfen Bekleyiniz..."
	sleep 2
	sh /root/menu/menu.sh
;;

*)
echo "Hatalı işlem yaptınız"
sleep 2
sh /root/paketkur.sh
esac