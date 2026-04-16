{ config, pkgs, lib, nixvim, ... }:

{
	plugins = {
		web-devicons.enable = true;
		mini-pick.enable = true;
		nvim-autopairs.enable = true;
		flash.enable = true;
		indent-blankline.enable = true;
		friendly-snippets.enable = true;
		luasnip.enable = true;
		lualine.enable = true;
	};

	imports = [
		./treesitter.nix
		./lsp.nix
		./toggleterm.nix
		./cmp.nix
	];
}
