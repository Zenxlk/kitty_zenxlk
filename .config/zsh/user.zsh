#  Startup 
# Commands to execute on startup (before the prompt is shown)
# Check if the interactive shell option is set
if [[ $- == *i* ]]; then
    # This is a good place to load graphic/ascii art, display system information, etc.
    if command -v pokego >/dev/null; then
        pokego --no-title -r 1,3,6
    elif command -v pokemon-colorscripts >/dev/null; then
        pokemon-colorscripts --no-title -r 1,3,6
    elif command -v fastfetch >/dev/null; then
        if do_render "image"; then
            fastfetch --logo-type kitty
        fi
    fi
fi

#   Overrides 
# HYDE_ZSH_NO_PLUGINS=1 # Set to 1 to disable loading of oh-my-zsh plugins, useful if you want to use your zsh plugins system 
# unset HYDE_ZSH_PROMPT # Uncomment to unset/disable loading of prompts from HyDE and let you load your own prompts
# HYDE_ZSH_COMPINIT_CHECK=1 # Set 24 (hours) per compinit security check // lessens startup time
# HYDE_ZSH_OMZ_DEFER=1 # Set to 1 to defer loading of oh-my-zsh plugins ONLY if prompt is already loaded

if [[ ${HYDE_ZSH_NO_PLUGINS} != "1" ]]; then
    #  OMZ Plugins 
    # manually add your oh-my-zsh plugins here
    plugins=(
        "sudo"
        "fzf"
        "zsh-autosuggestions"
        "zsh-syntax-highlighting"
        "git"
        "extract"
        "history-substring-search"
        "you-should-use"
        "colored-man-pages"
    )
fi

# Completado: menu interactivo navegable, insensible a mayusculas/minusculas,
# con los mismos colores que usa `ls`.
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*:descriptions' format '%F{magenta}-- %d --%f'

#  Extras
# zoxide: "cd" inteligente, aprende tus carpetas mas usadas (comando `z`)
command -v zoxide >/dev/null && eval "$(zoxide init zsh)"

# atuin y los alias de eza se inicializan en $ZDOTDIR/.zshrc, no aqui:
# oh-my-zsh se carga DESPUES de este archivo (ver conf.d/hyde/terminal.zsh)
# y pisaria el bindkey de Ctrl+R / los alias de ls si los pusieramos aqui.