# kitty_zenxlk

Mi configuración personal de terminal: [kitty](https://sw.kovidgoyal.net/kitty/) + [fastfetch](https://github.com/fastfetch-cli/fastfetch) + [starship](https://starship.rs/), corriendo en Arch Linux + [Hyprland](https://hyprland.org/) usando [HyDE](https://github.com/HyDE-Project/HyDE).

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
.config/
├── kitty/
│   ├── kitty.conf       # Ajustes personales (barra de pestañas, transparencia, cursor...)
│   ├── hyde.conf        # Ajustes base administrados por HyDE, se regeneran al cambiar el tema
│   └── theme.conf       # Esquema de color, generado automáticamente a partir del wallpaper actual
├── fastfetch/
│   ├── config.jsonc     # Resumen del sistema en cajas de color con logo via protocolo gráfico
│   └── logo/
│       └── archlinux.png
└── starship.toml        # Prompt de shell en bloques tipo powerline
```

## Características

- Barra de pestañas estilo powerline, inclinada
- [Nerd Font](https://www.nerdfonts.com/) (CaskaydiaCove) para íconos/glifos en el prompt
- Rastro de cursor animado, cursor tipo beam con parpadeo suave
- Transparencia + blur de Hyprland en la ventana de kitty
- Bordes de split coloreados al dividir la ventana en paneles
- Esquema de color sincronizado automáticamente con el wallpaper del escritorio vía [decaycs](https://github.com/decaycs) — los colores de fastfetch y starship (rojo/morado/amarillo, bloques del prompt) toman esa misma paleta dinámica en vez de valores fijos
- `fastfetch` con el logo de Arch mostrado como imagen real (protocolo gráfico de kitty), y se ejecuta automáticamente al abrir una terminal nueva
- Prompt de `starship` en bloques: usuario · directorio · hora

## Instalación

```bash
git clone https://github.com/Zenxlk/kitty_zenxlk.git
cp -r kitty_zenxlk/.config/kitty ~/.config/
cp -r kitty_zenxlk/.config/fastfetch ~/.config/
cp kitty_zenxlk/.config/starship.toml ~/.config/
kitty @ load-config   # o reinicia kitty
```

Agrega esto a tu `~/.zshrc` (o el rc de tu shell) si quieres el mismo prompt y el resumen automático al abrir terminal:

```bash
eval "$(starship init zsh)"
fastfetch
```

## Licencia

Siéntete libre de usar y adaptar cualquier parte de esta configuración.
