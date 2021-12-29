###### As an extra script since it takes A LOT of storage
# Install steam
sudo apt update
sudo apt install -y steam mesa-vulkan-drivers libglx-mesa0:i386 mesa-vulkan-drivers:i386 libgl1-mesa-dri:i386

# Wine
wget -nc https://dl.winehq.org/wine-builds/winehq.key
sudo apt-key add winehq.key

echo "deb https://dl.winehq.org/wine-builds/debian/ bullseye main" | sudo tee /etc/apt/sources.list.d/lutris.list
sudo apt update
sudo apt install -y --install-recommends winehq-stable

# Lutris
echo "deb http://download.opensuse.org/repositories/home:/strycore/Debian_11/ ./" | sudo tee /etc/apt/sources.list.d/lutris.list
wget -q https://download.opensuse.org/repositories/home:/strycore/Debian_11/Release.key -O- | sudo apt-key add -
sudo apt update
sudo apt install -y lutris

# Discord
flatpak install -y com.discordapp.Discord org.telegram.desktop com.spotify.Client org.gimp.GIMP org.kde.kdenlive fr.natron.Natron org.libreoffice.LibreOffice org.videolan.VLC com.github.micahflee.torbrowser-launcher org.inkscape.Inkscape