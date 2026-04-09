{ config, pkgs, lib, ... }:

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

      # size = config.lib.nixvim.helpers.mkRaw ''
      #   function(term)
      #     if term.direction == "horizontal" then
      #       return vim.o.lines * 0.8
      #     elseif term.direction == "vertical" then
      #       return vim.o.columns * 0.8
      #     end
      #   end
      # '';
    };
  };
}
