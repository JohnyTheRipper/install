sudo apt update && sudo apt upgrade -y
sudo apt install software-properties-common apt-transport-https dirmngr ca-certificates curl -y
sudo dpkg --add-architecture i386
sudo apt install steam-installer steam-devices -y
curl -s http://repo.steampowered.com/steam/archive/stable/steam.gpg | sudo tee /usr/share/keyrings/steam.gpg > /dev/null
echo deb [arch=amd64,i386 signed-by=/usr/share/keyrings/steam.gpg] http://repo.steampowered.com/steam/ stable steam | sudo tee /etc/apt/sources.list.d/steam.list
sudo apt update -y
sudo apt install libgl1-mesa-dri:amd64 libgl1-mesa-dri:i386 libgl1-mesa-glx:amd64 libgl1-mesa-glx:i386 steam launcher apt-cache policy steam-launcher -y

sudo apt install plymouth plymouth-themes tmux gdebi openvpn firmware-linux gnome-shell-extension-manager gnome-shell-extension-manager flatpak gnome-software-plugin-flatpak -y

flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
for pkg in docker.io docker-doc docker-compose podman-docker containerd runc; do sudo apt-get remove $pkg; done
