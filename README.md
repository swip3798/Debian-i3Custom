# Debian-i3Custom
A debian based distro config with i3 as the wm

## Usage
Just a bunch of scripts to setup and install my default debian setup.

Start with initial-install.sh. When it finishes it reboots the machine. After that run after-initial.sh and hit $mod+Shift+r to reload i3.   

misc-software.sh installs a lot of software like steam, lutris, telegram, libre-office etc. This is not in after-initial since it takes A LOT of space compared to minimal setup (10+ GiB).

dev-tools.sh install all the basic development tools I need on my machine: Docker, some python packages, flutter + android-studio, rust toolchain.
