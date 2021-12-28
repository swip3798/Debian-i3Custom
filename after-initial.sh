# Install firefox latest
flatpak install flathub org.mozilla.firefox

# Copy configs
cp -r ./config/* ~/.config/

echo Now configs are copy, press Super+Shift+r to reload i3, you should see different i3status and stuff
echo After that, you can go forward to build and install i3-gaps or i3-gaps-next if you want to, use install-i3-gaps.sh for that
