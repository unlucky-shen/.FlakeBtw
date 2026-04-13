{ config, pkgs, lib, ... }:

{
	# wayland tweaks
	environment.sessionVariables = {
		NIXOS_OZONE_WL = "1";
		XDG_CURRENT_DESKTOP = "Hyprland";
		XDG_SESSION_TYPE = "wayland";
		XDG_SESSION_DESKTOP = "Hyprland";
	};

	xdg.portal = {
		enable = true;
		extraPortals = [ pkgs.xdg-desktop-portal-hyprland ];
	};

	# sddm
	services.displayManager.sddm = {
		enable = true;
		wayland.enable = true;
	};

	# hyprland
	programs.hyprland = {
		enable = true;
		xwayland.enable = true;
	};
	
	# hyprland essentials
	programs.hyprlock.enable = true;
	
	services.udisks2.enable = true;

	environment.systemPackages = with pkgs; [
		hyprpolkitagent 
		mako
		waybar 
		libappindicator 
		libayatana-appindicator 
		wofi 
		swaybg 
		swayimg
		hyprsunset 
		hypridle 
		hyprshot 
		hyprlock 
		kdePackages.dolphin 
		udiskie 
		ntfs3g 
		exfat
	];
}
