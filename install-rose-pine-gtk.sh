checkVariant ${@}

wget https://github.com/rose-pine/gtk/releases/download/v2.1.0/gtk3.tar.gz
wget https://github.com/rose-pine/gtk/releases/download/v2.1.0/rose-pine-icons.tar.gz
wget https://github.com/rose-pine/gtk/releases/download/v2.1.0/rose-pine-moon-icons.tar.gz
wget https://github.com/rose-pine/gtk/releases/download/v2.1.0/rose-pine-dawn-icons.tar.gz

mkdir rose-pine-themes
tar -zxvf gtk3.tar.gz -C rose-pine-themes
tar -zxvf rose-pine-icons.tar.gz -C rose-pine-themes
tar -zxvf rose-pine-moon-icons.tar.gz -C rose-pine-themes
tar -zxvf rose-pine-dawn-icons.tar.gz -C rose-pine-themes

mkdir ~/.themes
mkdir ~/.icons
mv rose-pine-themes/gtk3/* ~/.themes/
mv rose-pine-themes/icons/* ~/.icons/

gtk-update-icon-cache ~/.icons/rose-pine-moon-icons
gtk-update-icon-cache ~/.icons/rose-pine-dawn-icons
gtk-update-icon-cache ~/.icons/rose-pine-icons

rm rose-pine-*.tar.gz
rm -rf rose-pine-themes
rm gtk3*.tar.gz