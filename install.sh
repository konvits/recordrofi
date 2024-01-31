#!/bin/sh

mkdir -p $HOME/.local/share/rofi/themes
cp -r .config/rofi/* $HOME/.local/share/rofi/themes/
cp recordrofi $HOME/.local/bin/

