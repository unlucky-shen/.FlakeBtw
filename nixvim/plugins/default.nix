{ config, pkgs, lib, nixvim, ... }:

{
	plugins = {
		web-devicons.enable = true;
		mini-pick.enable = true;
		mini-statusline.enable = true;
		nvim-autopairs.enable = true;
		indent-blankline.enable = true;
		friendly-snippets.enable = true;
		luasnip.enable = true;
	};

	imports = [
		./treesitter.nix
		./lsp.nix
		./toggleterm.nix
		./cmp.nix
	];
}
