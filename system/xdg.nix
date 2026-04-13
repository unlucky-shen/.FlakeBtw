{ config, pkgs, lib, ... }:

{
	xdg.portal = {
		enable = true;
		extraPortals = [ 
			pkgs.xdg-desktop-portal-gtk 
			pkgs.xdg-desktop-portal-hyprland
		];
		config.common.default = "*";
	};

	# xdg.mime = {
	# 	enable = true;
	# 	defaultApplications = {
	# 		"application/vnd.openxmlformats-officedocument.wordprocessingml.document" = "libreoffice-writer.desktop";
	# 		"application/msword" = "libreoffice-writer.desktop";
	# 		"application/vnd.oasis.opendocument.text" = "libreoffice-writer.desktop";
	# 		"application/vnd.openxmlformats-officedocument.spreadsheetml.sheet" = "libreoffice-calc.desktop";
	# 		"application/vnd.ms-excel" = "libreoffice-calc.desktop";
	# 		"application/vnd.oasis.opendocument.spreadsheet" = "libreoffice-calc.desktop";
	# 		"application/pdf" = "org.pwmt.zathura.desktop";
	# 	};
	# };

	environment.etc."xdg/mimeapps.list".text = ''
		[Default Applications]
		application/vnd.openxmlformats-officedocument.wordprocessingml.document=libreoffice-writer.desktop;
		application/msword=libreoffice-writer.desktop;
		application/vnd.oasis.opendocument.text=libreoffice-writer.desktop;
		application/vnd.openxmlformats-officedocument.spreadsheetml.sheet=libreoffice-calc.desktop;
		application/vnd.ms-excel=libreoffice-calc.desktop;
		application/vnd.oasis.opendocument.spreadsheet=libreoffice-calc.desktop;
		application/pdf=org.pwmt.zathura.desktop;
	'';
}
