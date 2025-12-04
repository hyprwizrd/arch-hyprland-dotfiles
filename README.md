# [ HyprwizrD ]

## Hyprland Dotfiles – Arch Linux + Catppuccin = Purrfection ☕

![Preview](https://raw.githubusercontent.com/hyprwizrd/hyprwizrd-dotfiles/main/preview/preview.gif)

A clean, minimal and fully themed Hyprland setup for Arch Linux, styled with a Catppuccin Mocha inspired aesthetic.  
This dotfile collection includes a polished workflow across the terminal, bar, notifications, shell, system tools, and UI.

## 🚀 Updates (Changelog)

### 🆕 Added Features
- **Rofi Bluetooth Menu** — thanks to  
  👉 https://github.com/nickclyde/rofi-bluetooth  
- **Waybar Bluetooth Indicator**

<details>
<summary>📸 Image Previews ↴</summary>

<table>
<tr>
	<td align="center">
		<img src="https://raw.githubusercontent.com/hyprwizrd/hyprwizrd-dotfiles/main/preview/rofi-bluetooth.png"><br/>
		<sub><em>Rofi Bluetooth Menu</em></sub>
	</td>
</tr>
</table>

</details>

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
- Neovim (Editor) --->> (Install Lazyvim)
- Fastfetch (System info)
- eza (Modern LS)
- bat (Better cat)
- btop (Resource Monitor)
- cava (Audio Visualizer)
- imv (Image Viewer)

**UI / Desktop**
- Dunst (Notifications)
- nwg-look (GTK theme manager)
- Nautilus (File Manager)
- Yazi (TUI file manager)
- Zathura (PDF Reader)

## Install Required Font
Install JetBrainsMono Nerd Font:

```bash
sudo pacman -S ttf-jetbrains-mono-nerd noto-fonts
```

If SDDM or any app shows incorrect/missing characters, install the full Nerd Fonts package:

``` bash
sudo pacman -S nerd-fonts
```

## Required Packages

Make sure these packages are installed before applying the dotfiles:

```
sudo pacman -S hyprland waybar rofi hyprlock hyprpaper hypridle \
alacritty kitty neovim dunst yazi zathura nautilus nwg-look \
btop bat eza cava fastfetch hyprshot hyprpicker imv networkmanager
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

### SDDM Theming (Sugar Candy Theme)

 1. Install Sugar Candy Theme

```bash
yay -S sddm-theme-sugar-candy-git
```
 2. Copy Custom Wallpaper

```bash
sudo cp ~/hyprwizrd-dotfiles/sddm_wallpaper/sddm-cat-back.png /usr/share/sddm/themes/Sugar-Candy/Backgrounds/
```

 3. Edit Theme Config

```bash
sudo nano /usr/share/sddm/themes/Sugar-Candy/theme.conf
```

Use these settings:

```
Background="Backgrounds/sddm-cat-back.png"
MainColor="#89b4fa"
AccentColor="#89b4fa"
BackgroundColor="#1e1e2e"
Font="JetBrainsMono Nerd Font"
HeaderText="Namaste!"
FontSize="14"
```

 4. Activate the SDDM Theme

``` bash
sudo nano /etc/sddm.conf
```
Add:

``` bash
[Theme]
Current=sugar-candy
```

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

Reboot for changes.

---

#### ⚠️ Still in development — if something breaks, just pretend it’s a feature 😅
### Thanks for stopping by! 😊

