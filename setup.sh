#!/bin/bash

export CONFIG_HOME="$HOME"/.config

rm -rf "$HOME"/.oh-my-zsh \
  "$HOME"/.bashrc \
  "$HOME"/.zshrc \
  "$HOME"/.zprofile \
  "$HOME"/.tmux \
  "$CONFIG_HOME"/bash \
  "$CONFIG_HOME"/nvim \
  "$CONFIG_HOME"/tmux \

ln -sf "$PWD/bash" "$CONFIG_HOME"/bash
ln -sf "$PWD/nvim" "$CONFIG_HOME"/nvim
ln -sf "$PWD/tmux" "$CONFIG_HOME"/tmux
ln -sf "$PWD/.bashrc" "$HOME"/.bashrc

git clone -q https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm > /dev/null

source "$HOME"/.bashrc
