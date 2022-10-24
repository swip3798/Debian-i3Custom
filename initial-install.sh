sudo apt update
sudo apt install -y software-properties-common

# APT add repos
sudo apt-add-repository non-free
sudo apt-add-repository contrib
# Add 32bit architecture for later use of wine and steam
sudo dpkg --add-architecture i386

sudo apt update

# Base install
sudo apt install -y \
  xorg i3 compton rofi \
  lightdm lightdm-settings slick-greeter \
  pulseaudio pavucontrol alsa-utils \
  lxappearance arandr nitrogen \
  gnome-disk-utility file-roller thunar firefox-esr terminator \
  neofetch htop python3-pip python-is-python3 ttf-mscorefonts-installer curl flatpak unzip libqt5svg5 sassc qml-module-qtquick-controls libavcodec-extra unrar gstreamer1.0-libav gstreamer1.0-plugins-ugly gstreamer1.0-vaapi \
  devscripts dpkg-dev dh-autoreconf libxcb-xrm-dev libxcb-xkb-dev libxkbcommon-dev libxkbcommon-x11-dev libxcb-shape0-dev meson

i3-config-wizard
# Install i3-gaps
git clone https://github.com/maestrogerardo/i3-gaps-deb.git
cd i3-gaps-deb
./i3-gaps-deb
cd ..

# Fonts install
mkdir ~/.fonts 
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.2.2/BitstreamVeraSansMono.zip
unzip BitstreamVeraSansMono.zip -d ~/.fonts

# Renew font cache
fc-cache -vf

# Orchis+Tela Theme install
git clone https://github.com/vinceliuice/Orchis-theme
cd Orchis-theme
./install.sh -t all -c dark
cd ..

git clone https://github.com/vinceliuice/Tela-icon-theme
cd Tela-icon-theme
./install.sh -a
cd ..

# flatpak repos
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

echo Now your machine gets restarted and should boot in i3
sleep 5
#sudo reboot now
