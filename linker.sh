#!/bin/bash
# linker to link configs from git to necessary locations
wd="$(pwd)"
echo "[*] Current Directory:  $wd"


if [ ! -d $HOME/.config ]
then
echo "[*]No .config directory, found creating it!"
mkdir $HOME/.config
else
echo "[*] .config is found!"
fi


