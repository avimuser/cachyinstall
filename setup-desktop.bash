curl https://raw.githubusercontent.com/avimuser/cachyinstall/main/remove.txt | sudo pacman -Rns - --noconfirm

sudo pacman -S --noconfirm --needed \
    fzf fish stow neovim direnv \
    pipewire wireplumber pipewire-jack pipewire-pulse pipewire-alsa \
    xdg-desktop-portal-gtk xdg-desktop-portal-wlr xorg-xwayland \
    sway swayidle swaybg swaylock wmenu foot grim slurp wob thunar wlsunset wl-clipboard brightnessctl noto-fonts 
    
sudo pacman -S --noconfirm --needed librewolf blueberry

paru -S antidot-bin ani-cli --skipreview --noconfirm

mkdir -p $HOME/Projects/
git clone https://github.com/avimuser/config.git $HOME/Projects/config
cd $HOME/Projects && stow config -t ~/.config

sudo systemctl enable bluetooth

sudo ln -sf /bin/nvim /bin/vi
sudo ln -sf /bin/nvim /bin/vim

mkdir -p $HOME/Pictures
wget https://gruvbox-wallpapers.pages.dev/wallpapers/mix/flower.jpg -O $HOME/Pictures/wallpaper.png

chsh -s /bin/fish

antidot update

pacman -Qqtd | sudo pacman -Rns - --noconfirm

# [ ] Jellyfin & ani-cli
# [ ] Waydroid
