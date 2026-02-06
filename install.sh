#!/usr/bin/env nix-shell
#!nix-shell -p vim git --run "bash ./install.sh"

git clone https://github.com/unlucky-shen/.FlakeBtw.git
cd .FlakeBtw
sudo nixos-rebuild switch --flake .

