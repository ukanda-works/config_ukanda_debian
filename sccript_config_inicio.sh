#!/bin/dash
apt-get update
echo "instalando drivers y controladores..................................................................................................................."
dpkg –configure -a
apt install w64codecs firmware-linux amd64-microcode 
dpkg -add architecture amd64
dpkg -add architecture i386
apt install xserver-xorg-video-all libva-drm2 libva-glx2 libva-wayland2 libva-x11-2 libva2
apt install alsa-firmware-loaders alsa-oss alsa-tools alsa-utils alsamixergui volumeicon-alsa paprefs pavumeter pulseaudio-utils ffmpeg2theora sound-icons
apt install lame libdvdnav4 libdvdread4 libfaac0 libmad0 libmp3lame0 libquicktime2 libstdc++5 libxvidcore4 twolame vorbis-tools x264
apt install gstreamer1.0-x gstreamer1.0-plugins-base gstreamer1.0-plugins-good gstreamer1.0-plugins-bad gstreamer1.0-plugins-ugly gstreamer1.0-alsa gstreamer1.0-pulseaudio gstreamer1.0-tools
apt install fonts-arabeyes fonts-cantarell fonts-freefarsi fonts-liberation fonts-lyx fonts-mathjax fonts-oflb-asana-math fonts-opensymbol fonts-sil-gentium fonts-stix myspell-es ooo-thumbnailer xfonts-intl-arabic xfonts-intl-asian xfonts-intl-chinese xfonts-intl-chinese-big xfonts-intl-european xfonts-intl-japanese xfonts-intl-japanese-big ttf-bitstream-vera ttf-dejavu ttf-summersby
apt install libreoffice libreoffice-base libreoffice-gnome libreoffice-gtk3 libreoffice-help-es libreoffice-java-common libreoffice-l10n-es libreoffice-ogltrans libreoffice-pdfimport libreoffice-report-builder-bin libreoffice-style-breeze libreoffice-style-elementary libreoffice-style-sifr
apt install pdfarranger pdfshuffler pdftk
apt install cifs-utils disk-manager dosfstools exfat-fuse exfat-utils fuse gvfs-fuse hfsplus hfsutils icoutils ideviceinstaller ipheth-utils libsmbclient mtools mtp-tools ntfs-3g python-smbc smbclient samba-common smbnetfs samba samba-common-bin
apt install cabextract fonts-wine mscompress playonlinux q4wine ttf-mscorefonts-installer winetricks
apt install ndiswrapper
apt install wifi-radar wireless-tools wpagui wpasupplicant
apt install firmware-atheros
apt install firmware-b43-installer firmware-b43legacy-installer firmware-bnx2 firmware-bnx2x firmware-brcm80211
apt install firmware-intelwimax firmware-iwlwifi
apt install firmware-ralink firmware-realtek
apt install bluetooth bluez bluez-cups bluez-firmware bluez-tools btscanner gnome-bluetooth python-bluez pulseaudio-module-bluetooth
apt install mobile-broadband-provider-info ppp pppconfig modemmanager modem-manager-gui modem-manager-gui-help usb-modeswitch usb-modeswitch-data wvdial
apt install gammu gtkpod libgammu-i18n libgpod-common libgpod-cil libgpod4 libmtp-runtime mtp-tools wammu
echo "drivers instalados......................................................................................................................."
echo "instlando i3..............................................................................................................................."
apt install xorg lightdm i3-wm i3status suckless-tools
echo "i3 instalado ahora se instalaran paquetes adicionales......................................................................................"
apt install i3blocks lm-sensors rofi pcmanfm
echo "paquetes adicionales instalados........................................................................................................"

echo "se instalaran aplicaciones del sistema......................................................................................................"
apt install net-tools fish nautilus pluma steam snapd apache2 mariadb-server php7.4 vlc sudo  
echo "aplicaciones del sistema con apt instaladas......................................................................................................"
echo "instalacion aplicaciones con snap......................................................................................................"
snap install telegram-desktop
snap install dosbox-x
snap install atom --classic
snap install android-studio --classic
snap install retroarch
snap install eclipse --classic
snap install libreoffice
snap install gimp
snap install fkill
snap install discord
snap install geforcenow
snap install sublime-text --classic
snap install phpstorm --classic
snap install node --classic
snap install arduino
snap install instagraph

echo "instalando aplicaciones que no precisan de instalador.........................................................................................................."
mkdir /root/instalador
cd instalador
wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | apt-key add -
wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | apt-key add -
apt install software-properties-common
add-apt-repository "deb [arch=amd64] http://download.virtualbox.org/virtualbox/debian $(lsb_release -cs) contrib"
apt update && sudo apt install virtualbox-6.0
wget https://download.virtualbox.org/virtualbox/6.0.10/Oracle_VM_VirtualBox_Extension_Pack-6.0.10.vbox-extpack
VBoxManage extpack install Oracle_VM_VirtualBox_Extension_Pack-6.0.10.vbox-extpack

echo "todo terminado reiniciando.........................................................................................................."
systemctl reboot





