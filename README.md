# kitty_zenxlk

Mi configuración personal de [kitty](https://sw.kovidgoyal.net/kitty/), corriendo en Arch Linux + [Hyprland](https://hyprland.org/) usando [HyDE](https://github.com/HyDE-Project/HyDE).

## Capturas de pantalla

<!--
  Agrega tus capturas a la carpeta screenshots/ y referéncialas aquí,
  ej.: ![preview](screenshots/preview-1.png)
-->
_Capturas próximamente._

## Información del sistema

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
GPU: Intel Iris Xe Graphics @ 1.30 GHz [Integrada]
```

Generado con [`fastfetch`](https://github.com/fastfetch-cli/fastfetch).

## Estructura

```
.config/kitty/
├── kitty.conf   # Ajustes personales (barra de pestañas, atajos, workarounds)
├── hyde.conf    # Ajustes base administrados por HyDE, se regeneran al cambiar el tema
└── theme.conf   # Esquema de color, generado automáticamente a partir del wallpaper actual
```

## Características

- Barra de pestañas estilo powerline, inclinada
- [Nerd Font](https://www.nerdfonts.com/) (CaskaydiaCove) para íconos/glifos en el prompt
- Rastro de cursor animado
- Esquema de color sincronizado automáticamente con el wallpaper del escritorio vía [decaycs](https://github.com/decaycs)

## Instalación

```bash
git clone https://github.com/Zenxlk/kitty_zenxlk.git
cp -r kitty_zenxlk/.config/kitty ~/.config/
kitty @ load-config   # o reinicia kitty
```

## Licencia

Siéntete libre de usar y adaptar cualquier parte de esta configuración.
