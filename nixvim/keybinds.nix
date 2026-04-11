{ config, pkgs, lib, nixvim, ... }:

{
	keymaps = [
		{
			mode = "n";
			key = "<leader>w";
			action = ":w<CR>";
			options = {
				desc = "Save";
				silent = true;
			};
		}
		{
			mode = "n";
			key = "<leader>q";
			action = ":q<CR>";
			options = {
				desc = "Quit";
				silent = true;
			};
		}
		{
			mode = "n";
			key = "<leader>f";
			action = ":Pick files<CR>";
			options = {
				desc = "Find Files";
				silent = true;
			};
		}
		{
			mode = "n";
			key = "<leader>h";
			action = ":Pick help<CR>";
			options = {
				desc = "Find Docs";
				silent = true;
			};
		}
		{
			mode = "n";
			key = "<leader>g";
			action = ":Pick grep_live<CR>";
			options = {
				desc = "Grep Files";
				silent = true;
			};
		}
	];
}
