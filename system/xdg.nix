{ pkgs, ... }:

{
	xdg.mimeApps = let
		writer = "libreoffice-writer.desktop";
		calc = "libreoffice-calc.desktop";
		zathura = "org.pwmt.zathura.desktop";
	in {
		enable = true;
		association.added = {
		"application/vnd.openxmlformats-officedocument.wordprocessingml.document" = writer;
		"application/msword" = writer;
		"application/vnd.oasis.opendocument.text" = writer;
		"application/vnd.openxmlformats-officedocument.spreadsheetml.sheet" = calc;
		"application/vnd.ms-excel" = calc;
		"application/vnd.oasis.opendocument.spreadsheet" = calc;
		"application/pdf" = zathura;
		};
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
