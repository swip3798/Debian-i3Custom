echo Removing older firefox install
read -p "Press Enter to continue"
sudo rm -rf /opt/firefox
sudo apt remove -y firefox-esr

echo Install dependencies (if not installed already)
read -p "Press Enter to continue"
sudo apt install -y libdbus-glib-1-2 libevent-2.1-7 libnspr4 libnss3

wget -O firefox.tar.bz2 "https://download.mozilla.org/?product=firefox-latest-ssl&os=linux64&lang=en-US"
sudo tar -jxvf firefox.tar.bz2 -C /opt
rm firefox.tar.bz2

sudo cp desktop-files/firefox-stable.desktop /usr/share/applications/firefox-stable.desktop
sudo ln -s /opt/firefox/firefox /usr/local/bin/firefox 
sudo update-alternatives --install /usr/bin/x-www-browser x-www-browser /opt/firefox/firefox 200 && sudo update-alternatives --set x-www-browser /opt/firefox/firefox  

