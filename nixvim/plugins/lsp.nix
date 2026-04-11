{ config, pkgs, lib, nixvim, ... }:

{
	plugins.lsp = {
		enable = true;
		servers = {
			rust_analyzer = {
				enable = true;
				package = null;
				installCargo = false;
				installRustc = false;
			};
			pyright = {
				enable = true;
				settings.python.analysis.typeCheckingMode = "off";
			};
			lua_ls = {
				enable = true;
				settings.Lua.diagnostic.disable = [ "missing-fields" ];
			};
			clangd.enable = true;
			nixd.enable = true;
			tinymist.enable = true;
			bashls.enable = true;
		};
	};
}
