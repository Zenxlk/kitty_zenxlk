# kitty_zenxlk

My personal [kitty](https://sw.kovidgoyal.net/kitty/) terminal configuration, running on Arch Linux + [Hyprland](https://hyprland.org/) via [HyDE](https://github.com/HyDE-Project/HyDE).

## Screenshots

<!--
  Add your screenshots to the screenshots/ folder and reference them below,
  e.g.: ![preview](screenshots/preview-1.png)
-->
_Screenshots coming soon._

## System info

```
OS: Arch Linux x86_64
Kernel: Linux 7.3.5-arch1-1
Window Manager: Hyprland 0.57.2 (Wayland)
Theme: wallbash [Qt], Decay-Green [GTK2/3/4]
Icons: Tela-circle-green [Qt], Tela-circle-green [GTK2/3/4]
Font: Cantarell (10pt) [Qt], Cantarell (10pt) [GTK2/3/4]
Cursor: Bibata-Modern-Ice (24px)
Terminal: kitty
CPU: 11th Gen Intel(R) Core(TM) i5-1135G7 (8) @ 4.20 GHz
GPU: Intel Iris Xe Graphics @ 1.30 GHz [Integrated]
```

Generated with [`fastfetch`](https://github.com/fastfetch-cli/fastfetch).

## Structure

```
.config/kitty/
├── kitty.conf   # personal overrides (tab bar, keybinds, workarounds)
├── hyde.conf    # base settings managed by HyDE, regenerated on theme change
└── theme.conf   # color scheme, auto-generated from the current wallpaper
```

## Features

- Powerline-styled, slanted tab bar
- [Nerd Font](https://www.nerdfonts.com/) (CaskaydiaCove) for icon/glyph support in prompts
- Animated cursor trail
- Color scheme auto-synced to the desktop wallpaper via [decaycs](https://github.com/decaycs)

## Install

```bash
git clone https://github.com/Zenxlk/kitty_zenxlk.git
cp -r kitty_zenxlk/.config/kitty ~/.config/
kitty @ load-config   # or restart kitty
```

## License

Feel free to use and adapt any part of this configuration.
