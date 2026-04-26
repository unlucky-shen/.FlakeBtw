{ config, pkgs, lib, nixvim, ... }:

{
	programs.nixvim = {
		enable = true;
		defaultEditor = true;

	colorschemes = {
		vague.enable = true;
		# gruvbox-material = {
		# 	enable = true;
		# 	settings = {
		# 		foreground = "mix";
		# 		background = "hard";
		# 		ui_contrast = "high";
		# 		float_style = "bright";
		# 		statusline_style = "mix";
		# 		cursor = "auto";
		# 	};
		# }; 
	};

		clipboard.register = "unnamedplus";
		clipboard.providers.xclip.enable = true;

		imports = [ 
			./keybinds.nix
			./settings.nix
			./plugins
		];
	};
}
