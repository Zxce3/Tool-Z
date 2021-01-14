# program Tool-Z
# coded : Tegar Dev
# file  : main.rb
# date  : 14 Januari 2021 - 15 Januari 2021
# time  : 21:50-0:49
# note  : Recode tidak akan menjadikan mu mastah
#         hargailah karya orang meskipun hanya sampah
# All Right Reversed Dunia Kode ©2021

def logo()
    k="\033[33;1m"
    p="\033[37;1m"
    h="\033[32;1m"
    m_="\033[41;1m"
    n="\033[00;1m"
    b="\033[34;1m"
    logo = """\n#{k}
\t╭━━━━╮    ╭╮ ╭━━━━╮
\t┃╭╮╭╮┃    ┃┃ ╰━━╮━┃
\t╰╯┃┃┣┻━┳━━┫┃   ╭╯╭╯
\t#{p}  ┃┃┃╭╮┃╭╮┃┣━━┳╯╭╯
\t  ┃┃┃╰╯┃╰╯┃╰┳┳╯━╰━╮
\t  ╰╯╰━━┻━━┻━╯╰━━━━╯
#{b}====================================
           #{p}[#{m_} DUNIA KODE #{n}#{p}]
#{b}====================================
#{h}Author #{k}: #{p}Tegar Dev
#{h}Versi  #{k}: #{p}1.0
#{b}====================================

"""
    puts "#{logo}"
end

def main()
    # kode warna
    m="\033[31;1m"
    k="\033[33;1m"
    h="\033[32;1m"
    b="\033[34;1m"
    m_="\033[41;1m"
    n="\033[00;1m"
    p="\033[37;1m"
    system("clear")
    logo
    puts "          #{b}[ #{p}Menu Pilihan #{b}]"
    puts ""
    puts "#{b}(#{p}1#{b}) #{h}Kompres Ke Zip"
    puts "#{b}(#{p}2#{b}) #{h}Ekstrak File Zip"
    puts "#{b}(#{p}3#{b}) #{h}Kompres Vidio"
    puts "#{b}(#{p}4#{b}) #{h}Install Bahan"
    puts "#{b}(#{m}0#{b}) #{h}Keluar"
    puts "#{b}===================================="
    pilihSatu()
end
def pilihSatu()
    # kode warna
    m="\033[31;1m"
    k="\033[33;1m"
    h="\033[32;1m"
    b="\033[34;1m"
    m_="\033[41;1m"
    n="\033[00;1m"
    p="\033[37;1m"
    print "#{b}(#{p}*#{b}) #{h}Pilih Menu #{k}: #{p}"
    pilih = gets.chomp.to_i
    if pilih == 1
        zip()
    elsif pilih == 2
        unzip()
    elsif pilih == 3
        vidio()
    elsif pilih == 4
        puts "#{p}(#{m}!#{p}) Proses install bahan silahkan tunggu"
        sleep(2)
        system("pkg install ffmpeg ruby tree zip unzip")
        puts "#{b}[ #{p}Enter untuk kembali ke menu #{b}]"
        ulang = gets.chomp
        main
    elsif pilih == 0
        system("clear")
        puts "#{p}(#{m}!#{p}) #{p} Keluar dari program"
    else
        puts "#{pilih} tidak ada"
        sleep(2)
        main
    end
end
def zip()
    system("clear")
    # kode warna
    m="\033[31;1m"
    k="\033[33;1m"
    h="\033[32;1m"
    b="\033[34;1m"
    m_="\033[41;1m"
    n="\033[00;1m"
    p="\033[37;1m"
    puts """\n#{k}
\t┏━━━━┳━━┳━━━┓
\t┗━━┓━┣┫┣┫┏━┓┃
\t  ┏┛┏┛┃┃┃┗━┛┃
\t#{p} ┏┛┏┛ ┃┃┃┏━━┛
\t┏┛━┗━┳┫┣┫┃
\t┗━━━━┻━━┻┛
#{b}=====================================
#{h}Cara Pemakaian #{p}:
#{k}Masukan nama file atau folder yang
akan di kompres ke zip.
Jika lebih dari satu file atau folder
masukan seperti contoh di bawah.
#{h}Contoh #{p}: #{m}tegar.txt tegar2.txt
#{b}=====================================
    """
    print "#{h}lokasi Sekarang #{k}: #{m}"
    system("pwd -P")
    puts "#{p}(#{m}!#{p}) #{h}Masukan lokasi file yang akan di kompres"
    puts "#{h}Contoh #{k}: #{m}/storage/emulated/0"
    print "#{k}lokasi #{m}: #{p}"
    lokasi = gets.chomp
    puts "#{p}(#{m}!#{p}) #{h}Masukan file yang akan di kompres"
    print "#{k}Folder/File #{m}: #{p}"
    file = gets.chomp
    puts "#{p}(#{m}!#{p}) #{h}Masukan nama file hasil zip"
    puts "#{h}Contoh #{k}: #{m}tegar.zip"
    print "#{k}file zip #{m}: #{p}"
    output = gets.chomp
    puts "#{p}(#{m}!#{p}) #{h}Masukan lokasi menyimpan file zip"
    puts "#{h}Contoh #{k}: #{m}/storage/emulated/0"
    print "#{k}Lokasi #{m}: #{p}"
    lokout = gets.chomp
    system("cd #{lokasi} && zip #{output} #{file} && mv #{output} #{lokout}")
    puts "#{b}====================================="
    puts "#{p}(#{h}✔#{p}) #{h}Kompres zip berhasil"
    puts "#{h}File yang di zip     #{k}: #{p}#{file}"
    puts "#{h}File hasil kompres   #{k}: #{p}#{output}"
    puts "#{h}File Zip disimpan di #{k}: #{p}#{lokout}"
    puts "#{b}=====================================\n"
    puts "#{b}[ #{p}Enter untuk kembali ke menu #{b}]"
    ulang = gets.chomp
    main
end

def unzip()
    system("clear")
    # kode warna
    m="\033[31;1m"
    k="\033[33;1m"
    h="\033[32;1m"
    b="\033[34;1m"
    m_="\033[41;1m"
    n="\033[00;1m"
    p="\033[37;1m"
    puts """\n#{k}
\t┏━━━┳┓    ┏┓     ┏┓
\t┃┏━━┫┃   ┏┛┗┓    ┃┃
\t┃┗━━┫┃┏┳━┻┓┏╋━┳━━┫┃┏┓
\t#{p}┃┏━━┫┗┛┫━━┫┃┃┏┫┏┓┃┗┛┛
\t┃┗━━┫┏┓╋━━┃┗┫┃┃┏┓┃┏┓┓
\t┗━━━┻┛┗┻━━┻━┻┛┗┛┗┻┛┗┛
#{b}=====================================
#{h}Cara Pemakaian #{p}:
#{k}Masukan lokasi dan nama file zip
yang akan di ekstrak.
#{b}=====================================
    """
    print "#{h}lokasi Sekarang #{k}: #{m}"
    system("pwd -P")
    puts "#{p}(#{m}!#{p}) #{h}Masukan lokasi file zip yang akan di ekstrak"
    puts "#{h}Contoh #{k}: #{m}/storage/emulated/0"
    print "#{k}lokasi #{m}: #{p}"
    lokasi = gets.chomp
    puts "#{p}(#{m}!#{p}) #{h}Masukan nama file zip yang akan di ekstrak"
    print "#{k}File zip #{m}: #{p}"
    file = gets.chomp
    system("cd #{lokasi} && unzip #{file}")
    puts "#{b}====================================="
    puts "#{p}(#{h}✔#{p}) #{h}Ekstrak zip berhasil"
    puts "#{h}File yang di Ekstrak #{k}: #{p}#{file}"
    puts "#{h}Lokasi file hasil    #{k}: #{p}#{lokasi}"
    puts "#{b}=====================================\n"
    puts "#{b}[ #{p}Enter untuk kembali ke menu #{b}]"
    ulang = gets.chomp
    main
end
def vidio()
    system("clear")
    # kode warna
    m="\033[31;1m"
    k="\033[33;1m"
    h="\033[32;1m"
    b="\033[34;1m"
    m_="\033[41;1m"
    n="\033[00;1m"
    p="\033[37;1m"
    puts """\n#{k}
\t┏┓┏━┓
\t┃┃┃┏┛
\t┃┗┛┛┏━━┳┓┏┳━━┳━┳━━┳━━┓
\t#{p}┃┏┓┃┃┏┓┃┗┛┃┏┓┃┏┫┃━┫━━┫
\t┃┃┃┗┫┗┛┃┃┃┃┗┛┃┃┃┃━╋━━┃
\t┗┛┗━┻━━┻┻┻┫┏━┻┛┗━━┻━━┛
\t          ┗┛
#{b}=====================================
#{h}Cara Pemakaian #{p}:
#{k}Masukan lokasi, nama video dan nama
hasil vidio yang akan di kompres
#{b}=====================================
    """
    print "#{h}lokasi Sekarang #{k}: #{m}"
    system("pwd -P")
    puts "#{p}(#{m}!#{p}) #{h}Masukan lokasi file vidio yang akan di kompres"
    puts "#{h}Contoh #{k}: #{m}/storage/emulated/0"
    print "#{k}lokasi #{m}: #{p}"
    lokasi = gets.chomp
    puts "#{p}(#{m}!#{p}) #{h}Masukan nama vidio yang akanndi kompres"
    puts "#{h}Contoh #{k}: #{m}tegar.mp4"
    print "#{k}Vidio #{m}: #{p}"
    file = gets.chomp
    puts "#{p}(#{m}!#{p}) #{h}Masukan nama vidio hasil kompres"
    puts "#{h}Contoh #{k}: #{m}tegar_kompres.mp4"
    print "#{k}Hasil #{m}: #{p}"
    hasil = gets.chomp
    puts "#{p}(#{m}!#{p}) #{h}Masukan lokasi menyimpan vidio hasil kompres"
    puts "#{h}Contoh #{k}: #{m}/storage/emulated/0"
    print "#{k}Lokasi #{m}: #{p}"
    lokout = gets.chomp
    system("cd #{lokasi} && ffmpeg -i '#{file}' -c:v libx265 -crf 25 -c:a copy '#{hasil}' && mv #{hasil} #{lokout}")
    puts "#{b}====================================="
    puts "#{p}(#{h}✔#{p}) #{h}Vidio berhasil di kompres"
    puts "#{h}Vidio Yang di kompres #{k}: #{p}#{file}"
    puts "#{h}Vidio hasil kompres   #{k}: #{p}#{hasil}"
    puts "#{h}Lokasi hasil kompres  #{k}: #{p}#{lokout}"
    puts "#{b}=====================================\n"
    puts "#{b}[ #{p}Enter untuk kembali ke menu #{b}]"
    ulang = gets.chomp
    main
end
main