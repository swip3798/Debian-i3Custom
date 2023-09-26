echo Removing older firefox install
read -p "Press Enter to continue"
sudo rm -rf /opt/firefox

wget -O firefox.tar.bz2 "https://download.mozilla.org/?product=firefox-latest-ssl&os=linux64&lang=en-US"
sudo tar -jxvf firefox.tar.bz2 -C /opt
rm firefox.tar.bz2

sudo rm /usr/local/bin/firefox
sudo ln -s /opt/firefox/firefox /usr/local/bin/firefox
sudo update-alternatives --install /usr/bin/x-www-browser x-www-browser /opt/firefox/firefox 200 && sudo update-alternatives --set x-www-browser /opt/firefox/firefox

