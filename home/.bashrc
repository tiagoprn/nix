# Enable vim-mode on shell editing instead of the default emacs one
# Also show on the cursor if we are on visual or insert mode
set -o vi

# Enter a directory without the cd command needed
shopt -s autocd
# minor corrections for misspellings etc.
shopt -s cdspell
# attempts to save all lines of a multiple-line command in the same history entry.
shopt -s cmdhist
## Unified bash history
shopt -s histappend

if [ -f "$HOME/.bash_functions" ]; then
    source "$HOME/.bash_functions"
fi

if [ -f "$HOME/.bash_aliases" ]; then
    source "$HOME/.bash_aliases"
fi

if [ -f "$HOME/bashrc.custom" ]; then
    source "$HOME/bashrc.custom"
fi

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# disable <Ctrl-s> permanently in terminal, which freezes it
stty -ixon

# --- Environment variables

export EDITOR=nvim
export VISUAL=nvim
export MANPAGER='nvim +Man!'
export MANWIDTH=999

# using 'kill -9 ,,' or 'cd ,,', triggers fzf for autocompletion
export FZF_COMPLETION_TRIGGER=',,'

# rg means ripgrep, that is nice to use with fzf
export FZF_DEFAULT_COMMAND="rg --files --hidden --follow --glob '!.git'"

# --- KEYBOARD SHORTCUTS (BINDINGS) VIM-MODE SPECIFIC BINDINGS:
# When using vim-mode, add beside the prompt and indicator if we are on visual
# or insert mode.
## GENERAL
# \C- = Control+
# \e = Alt+
bind 'set show-mode-in-prompt on'
bind -x '"\C-r":fzf-bash-history-search'
bind -x '"\C-t":tmux-search-history'
# bind -x '"\ei":vim-fzf'
bind -x '"\C-o":vim-fzf'
### Clear screen as on emacs-mode and vi-visual
bind -m vi-insert "\C-l":clear-screen

if command -v starship &>/dev/null; then
    eval "$(starship init bash)"
fi

TILING_WM_SCRIPTS_PATH="/storage/src/dot_files/tiling-window-managers/scripts"
if [ -d "$TILING_WM_SCRIPTS_PATH" ]; then
    export PATH="$PATH:$TILING_WM_SCRIPTS_PATH"
fi

CARGO_BIN="$HOME/.cargo/bin"
if [ -d "$CARGO_BIN" ]; then
    export PATH="$PATH:$CARGO_BIN"
fi

HIDDEN_LOCAL_BIN="$HOME/.local/bin"
if [ -d "$HIDDEN_LOCAL_BIN" ]; then
    export PATH="$PATH:$HIDDEN_LOCAL_BIN"
fi

LOCAL_BIN="$HOME/local/bin"
if [ -d "$LOCAL_BIN" ]; then
    export PATH="$PATH:$LOCAL_BIN"
fi

NPM_BIN="$HOME/.npm-packages/bin"
if [ -d "$NPM_BIN" ]; then
    export PATH="$PATH:$NPM_BIN"
fi

NVIM_BIN="$HOME/neovim-install/bin"
if [ -d "$NVIM_BIN" ]; then
    export PATH="$PATH:$NVIM_BIN"
fi

SCRIPTS_BIN="$HOME/scripts"
if [ -d "$SCRIPTS_BIN" ]; then
    export PATH="$PATH:$SCRIPTS_BIN"
fi

export TEXT_BROWSER=w3m
export BROWSER=firefox

# export PYENV_ROOT="$HOME/.pyenv"
# export PATH="$PATH:$PYENV_ROOT/bin"
# eval "$(pyenv init --path)"
# eval "$(pyenv init -)"
# eval "$(pyenv virtualenv-init -)"
