# [HyprWizrd]
## Screenshots

![description]()

## Hyprland Dotfiles – Arch Linux + Catppuccin = Purrfection ☕

A clean, minimal and fully themed Hyprland setup for Arch Linux, styled with a Catppuccin Mocha inspired aesthetic.  
This dotfile collection includes a polished workflow across the terminal, bar, notifications, shell, system tools, and UI.

## Summary of Used Software

**Core Environment**
- Hyprland (Window Manager)
- Waybar (Top Bar)
- Rofi (Launcher / Powermenu)
- Hyprlock (Lockscreen)
- Hyprpaper (Wallpaper daemon)
- Hypridle (Idle daemon)
- Hyprshot (Screenshot utility)
- Hyprpicker (Color picker)

**Terminal & Tools**
- Kitty / Alacritty (Terminals)
- Neovim (Editor)
- Fastfetch (System info)
- eza (Modern LS)
- bat (Better cat)
- btop (Resource Monitor)
- cava (Audio Visualizer)

**UI / Desktop**
- Dunst (Notifications)
- nwg-look (GTK theme manager)
- Nautilus (File Manager)
- Yazi (TUI file manager)
- Zathura (PDF Reader)

## Required Packages

Make sure these packages are installed before applying the dotfiles:

```
sudo pacman -S hyprland waybar rofi hyprlock hyprpaper hypridle \
alacritty kitty neovim dunst yazi zathura nautilus nwg-look \
btop bat eza cava fastfetch hyprshot hyprpicker
```

## Included Configurations

```
~/.config/
├── alacritty
├── bat
├── btop
├── cava
├── dunst
├── eza
├── fastfetch
├── hypr
├── kitty
├── nvim
├── rofi
├── waybar
├── yazi
└── zathura
```

Additionally:

```
~/.bashrc
```

## ⚠️ Backup Before Installing

Backup your current bash configuration:

```
cp ~/.bashrc ~/.bashrc.backup
```

Backup configs:

```
mkdir -p ~/.config-backup
cp -r ~/.config/* ~/.config-backup/ 2>/dev/null
```

## Manual Installation (Copy–Paste Method)

Clone the repo:

```
git clone https://github.com/hyprwizrd/hyprwizrd-dotfiles.git ~/hyprwizrd-dotfiles
cd ~/hyprwizrd-dotfiles
```

Copy configs:

```
cp -r .config/* ~/.config/
```

Copy bashrc:

```
cp .bashrc ~/
```

Reboot:

```
reboot
```
---

## Additional Theming (Catppuccin + Icons + Cursors)

### Firefox Theme – Catppuccin
https://addons.mozilla.org/en-US/firefox/addon/catpuccin/



### GTK Theme – Catppuccin Mocha
Install using yay:

```bash
yay -S catppuccin-gtk-theme-mocha
```

Apply via **nwg-look**:
1. Open `nwg-look`
2. Select GTK Theme → **Catppuccin-Mocha-Mauve**
3. Apply


### Cursor Theme – Colloid Cursor (by vinceliuice)
Download here:

https://www.gnome-look.org/p/1831077

Install and select using **nwg-look** or your system appearance settings.


### Folder Icons – MacTahoe Icon Theme (by vinceliuice)
Icon pack used for folder styling:

https://www.gnome-look.org/p/2299216

Apply using **nwg-look** → Icons → **MacTahoe**.

---

#### ⚠️ Still in development — if something breaks, just pretend it’s a feature 😅
### Thanks for stopping by! 😊

