# This just installs the basic tools i need for most development tasks for my private software development
mkdir -p ~/Documents/dev

# install rust toolchain
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# Install vscode
mkdir vscode
cd vscode
wget https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64
sudo dpkg -i *.deb
cd ..

# python stuff
sudo apt install -y python3-pip
pip install seaborn pandas mongoengine scikit-learn requests


cd ~/Documents/dev
# Install flutter (except android studio stuff, because of the pain) works for 2.8.1
sudo snap install flutter --classic

flutter doctor

# Linux desktop dependencies
sudo apt-get install clang cmake ninja-build pkg-config libgtk-3-dev
# Enable desktop support
flutter config --enable-linux-desktop

# Android Studio 
sudo snap install android-studio --classic
echo Now android studio gets opened, install android studio and install command-line tools
android-studio
echo Press enter when you installed both android studio and command-line tools
read -p " [RETURN]"
flutter doctor --android-licenses
flutter doctor