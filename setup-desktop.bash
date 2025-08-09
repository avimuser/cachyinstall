curl https://raw.githubusercontent.com/avimuser/cachyinstall/main/remove.txt | sudo pacman -Rns -

sudo pacman -S --noconfirm --needed \
    fzf fish stow neovim \
    pipewire wireplumber pipewire-jack pipewire-pulse pipewire-alsa \
    xdg-desktop-portal-gtk xdg-desktop-portal-wlr xorg-xwayland \
    sway swayidle swaybg swaylock wmenu foot grim slurp wob thunar wlsunset wl-clipboard \
    librewolf \
    blueberry

paru -S brillo antidot-bin --skipreview --noconfirm

mkdir -p $HOME/Projects/
git clone https://github.com/avimuser/config.git $HOME/Projects/config
cd $HOME/Projects && stow config -t ~/.config

sudo systemctl enable bluetooth

ln -sf /bin/nvim /bin/vi
ln -sf /bin/nvim /bin/vim

chsh -s /bin/fish

antidot update

pacman -Qqtd | sudo pacman -Rns -
