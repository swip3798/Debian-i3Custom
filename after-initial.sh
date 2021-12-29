# Install firefox latest
flatpak install -y flathub org.mozilla.firefox

# Copy configs
cp -r ./config/* ~/.config/

git clone https://github.com/maestrogerardo/i3-gaps-deb.git
cd i3-gaps-deb
echo now i3-gaps is going to be installed. Dont add the config lines in the end since those are already in the config.
read -p " [RETURN]"
./i3-gaps-deb

echo Now configs are copy, press Super+Shift+r to reload i3, you should see different i3status and stuff
echo After that you can install all the other software with misc-software.sh

