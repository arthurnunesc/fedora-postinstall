#!/usr/bin/env bash

# Clones zsh-syntax-highlighting plugin into .config
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "$HOME"/.config/zsh/plugins/zsh-syntax-highlighting

# Clones dotfiles from my GitHub repo
git clone https://github.com/arthurnunesc/dotfiles.git "$HOME"/.dotfiles

# Making sure fonts and icons folders exist to not make them be created as symbolic links
mkdir -p "$HOME"/.local/share/fonts
mkdir -p "$HOME"/.local/share/icons

# Synchronizes all dotfiles with stow
cd "$HOME"/.dotfiles || return
stow */
cd || return
