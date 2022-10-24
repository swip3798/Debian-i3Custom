echo This script installs the latest stable version of nvim as well as the latest stable version of astronvim
echo Those can sometimes be incompatible when nvim gets an update but astronvim is not compatible yet
echo If that is the case, downgrade the nvim version to a working version
read -p "Press Enter to continue"
# Install neovim
wget https://github.com/neovim/neovim/releases/download/stable/nvim-linux64.deb
sudo apt install ./nvim-linux64.deb
rm nvim-linux64.deb

# Install AstroNvim
git clone https://github.com/AstroNvim/AstroNvim ~/.config/nvim

# Install AstroNvim deps
sudo apt install -y ripgrep ncdu htop
LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep '"tag_name":' |  sed -E 's/.*"v*([^"]+)".*/\1/')
curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
sudo tar xf lazygit.tar.gz -C /usr/local/bin lazygit
rm lazygit.tar.gz

