curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
source "$HOME/.cargo/env"
echo This will install lsd CLI tool and add an command alias. If you want to skip that just type Ctrl+C
read -p "Press enter to continue"

cargo install lsd
echo alias lsd="lsd -l" >> ~/.bashrc
source "~/.bashrc"
