{ config, pkgs, lib, ... }:
	let
		aliases = {
			s = "sudo ";
			v = "nvim";
			hiscw = "history -c && history -w";
			le = "eza --tree";
			nrf = "sudo nixos-rebuild switch --flake .";
			lsg = "sudo nix-env --list-generations -p /nix/var/nix/profiles/system";
			dg = "sudo nix-env -p /nix/var/nix/profiles/system --delete-generations";
			dga = "sudo nix-collect-garbage -d";
			ncg = "sudo nix-collect-garbage";
			ga = "git add";
			gc = "git commit";
			gs = "git status";
		};
	in {
		programs.bash = {
			enable = true;
			shellAliases = aliases;
			bashrcExtra = extra;
		};
}
