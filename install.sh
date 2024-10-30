#!/bin/sh

# A basic install script for pokemon-zsh

INSTALL_DIR='/usr/local/opt'
BIN_DIR='/usr/local/bin'

# deleting directory if it already exists
rm -rf "$INSTALL_DIR/pokemon-zsh" || return 1

# making the necessary folder structure
mkdir -p $INSTALL_DIR/pokemon-zsh || return 1

# moving all the files to appropriate locations
cp -rf colorscripts $INSTALL_DIR/pokemon-zsh
cp pokemon-zsh.py $INSTALL_DIR/pokemon-zsh
cp pokemon.json $INSTALL_DIR/pokemon-zsh

# create symlink in usr/bin
rm -rf "$BIN_DIR/pokemon-zsh" || return 1
ln -s $INSTALL_DIR/pokemon-zsh/pokemon-zsh.py $BIN_DIR/pokemon-zsh

