{ config, pkgs, lib, nixvim, ... }: 

{
	extraPlugins = with pkgs.vimPlugins; [ lush-nvim zenbones-nvim ];

	colorscheme = "zenbones";

	globals = {
		zenbones_darkness = "stark";
		zenbones_solid_line_nr = true;
		zenbones_italic_comments = true;
		zenbones_darken_comments = 45;
	};

	opts = {
		background = "dark"; 
	};
}
