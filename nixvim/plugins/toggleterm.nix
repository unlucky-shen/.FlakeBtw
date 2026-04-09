{ config, pkgs, lib, nixvim, ... }:

{
	plugins.toggleterm = {
		enable = true;
		autoLoad = true;
		
		settings = {
			open_mapping = "[[<leader><leader>]]";
			insert_mappings = false;
			terminal_mappings = true;
			persist_mode = true;
			shell = "bash";
			direction = "float";
			
			float_opts = {
				border = "curved";
				winblend = 0;
				highlights = {
					border = "Normal";
					background = "Normal";
				};
			};
		};
	};
}
