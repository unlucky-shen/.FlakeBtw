{ config, pkgs, lib, nixvim, ... }:

{
	plugins.treesitter = {
		enable = true;
		settings = {
			ensure_installed = [
				"rust"
				"python"
				"c"
				"cpp"
				"css"
				"nix"
				"lua"
				"typst"
				"bash"
				"markdown"
				"markdown-inline"
			];
			highlight.enable = true;
		};
	};
}
