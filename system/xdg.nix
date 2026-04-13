{ pkgs, ... }:

{
	xdg.portal = {
		enable = true;
		extraPortals = [ 
			pkgs.xdg-desktop-portal-gtk 
			pkgs.xdg-desktop-portal-hyprland
		];
		config.common.default = "*";
	};

	xdg.mime = let
		writer = "libreoffice-writer.desktop";
		calc = "libreoffice-calc.desktop";
		zathura = "org.pwmt.zathura.desktop";
	in {
		enable = true;
		defaultApplications = {
			"application/vnd.openxmlformats-officedocument.wordprocessingml.document" = writer;
			"application/msword" = writer;
			"application/vnd.oasis.opendocument.text" = writer;
			"application/vnd.openxmlformats-officedocument.spreadsheetml.sheet" = calc;
			"application/vnd.ms-excel" = calc;
			"application/vnd.oasis.opendocument.spreadsheet" = calc;
			"application/pdf" = zathura;
		};
	};
}
