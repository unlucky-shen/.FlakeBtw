{ config, pkgs, lib, nixvim, ... }:

{
	globals = {
			mapleader = " ";
			maplocalleader = " ";
			have_nerd_font = true;
			loaded_netrw = 1;
			loaded_netrwPlugin = 1;
		};

	opts = {
			number = true;
			relativenumber = true;
			cmdheight = 0;
			signcolumn = "yes";
			updatetime = 250;
			timeoutlen = 300;
			splitright = true;
			splitbelow = true;
			list = true;
			listchars = {
				tab = "  ";
				trail = " ";
				nbsp = "␣";
			};
			fillchars = { eob = " "; };
			mouse = "a";
			termguicolors = true;
			showmode = false;
			wrap = true;
			tabstop = 2;
			shiftwidth = 2;
			swapfile = false;
			inccommand = "split";
			scrolloff = 10;
			breakindent = true;
			ignorecase = true;
			smartcase = true;
			winborder = "rounded";
		};
}
