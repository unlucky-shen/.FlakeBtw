{ config, pkgs, lib, ... }:

{
	xdg.mime = {
		enable = true;
		extraPortals = [ pkgs.xdg-desktop-portal-gtk ];
		config.common.default = "*";
		addedAssociations = {
			"application/vnd.openxmlformats-officedocument.wordprocessingml.document" = [ "libreoffice-writer.desktop" ];
			"application/msword" = [ "libreoffice-writer.desktop" ];
			"application/vnd.oasis.opendocument.text" = [ "libreoffice-writer.desktop" ];
			"application/vnd.openxmlformats-officedocument.spreadsheetml.sheet" = [ "libreoffice-calc.desktop" ];
			"application/vnd.ms-excel" = [ "libreoffice-calc.desktop" ];
			"application/vnd.oasis.opendocument.spreadsheet" = [ "libreoffice-calc.desktop" ];
			"application/pdf" = [ "org.pwmt.zathura.desktop" ];
		};
		defaultApplications = {
			"application/vnd.openxmlformats-officedocument.wordprocessingml.document" = [ "libreoffice-writer.desktop" ];
			"application/msword" = [ "libreoffice-writer.desktop" ];
			"application/vnd.oasis.opendocument.text" = [ "libreoffice-writer.desktop" ];
			"application/vnd.openxmlformats-officedocument.spreadsheetml.sheet" = [ "libreoffice-calc.desktop" ];
			"application/vnd.ms-excel" = [ "libreoffice-calc.desktop" ];
			"application/vnd.oasis.opendocument.spreadsheet" = [ "libreoffice-calc.desktop" ];
			"application/pdf" = [ "org.pwmt.zathura.desktop" ];
		};
	};
}
