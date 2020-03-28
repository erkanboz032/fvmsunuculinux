
cd /root/menu
clear
echo "---------------------------------------"
echo "Lütfen yapmak istediğiniz işlemi seçiniz"
echo -e "\e[38;5;76m
1 - Sunucu Sürüm Dosyalarını Kur / Güncelle \n
2 - Sunucu Dosyalarını Kur \n
3 - Aktif Sunucu Dosyalarını Sil \n
4 - Ana Menüye Dön \n
\033[0m"
echo "---------------------------------------"

read islemler

case $islemler in

1)
    clear
    cd /home
    echo "Sunucu Sürüm Dosyaları Oluşturuluyor..."
    sleep 2
    mkdir /home/sunucu && mkdir /home/sunucu/surum
    cd /home/sunucu/surum && rm -rf *
    sleep 2
    echo "Sıkıştırılmış Sürüm Dosyaları İndiriliyor..."
    sleep 2
    wget http://tmail.erkanboz.com.tr/fx.tar.xz && clear
    echo "Sıkıştırılmış Sürüm Dosyaları Çıkartılıyor..."
    sleep 2
    tar -xvf fx.tar.xz && clear
    echo "Sıkıştırılmış Sürüm Dosyaları Siliniyor..."
    sleep 2
    rm -f fx.tar.xz && clear && echo "Başarıyla Kuruldu" && sleep 2 && sh /root/menu/skur.sh

;;

2)
    clear
    echo "Lütfen Bekleyiniz..."
    sleep 2
    sh /root/menu/paketkur.sh
;;

3)
    clear
    echo "Lütfen Bekleyiniz..."
    sleep 2
    sh /root/menu/sunucusil.sh
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
sh /root/menu.sh
esac