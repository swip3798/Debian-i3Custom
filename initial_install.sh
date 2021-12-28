# APT add repos
sudo apt-add-repository non-free
sudo apt-add-repository contrib
# Add 32bit architecture for later use of wine and steam
sudo dpkg --add-architecture i386

sudo apt update

# Base install
sudo apt install -y i3 lxappearance xorg nitrogen lightdm lightdm-settings slick-greeter flatpak pulseaudio pavucontrol alsa-utils terminator unzip arc-theme compton thunar rofi neofetch arandr gnome-disk-utility

# Appearance packages
sudo apt install papirus-icon-theme lxappearance fonts-noto-color-emoji fonts-firacode fonts-font-awesome libqt5svg5 qml-module-qtquick-controls

##### FONTS #####
# MS-Fonts
sudo apt install ttf-mscorefonts-installer

mkdir ~/.fonts 
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/FiraCode.zip
unzip FiraCode.zip -d ~/.fonts
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Meslo.zip
unzip Meslo.zip -d ~/.fonts

# Renew font cache
fc-cache -vf

# Nordic theme if wanted
git clone https://github.com/EliverLara/Nordic.git
sudo mv ./Nordic /usr/share/themes/Nordic

# Flatpak add flathub repo
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# Install firefox latest
flatpak install flathub org.mozilla.firefox

echo Now restart your machine it should boot in i3
