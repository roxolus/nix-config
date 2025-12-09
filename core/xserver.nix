{ ... }:
{
 services = {
	xserver = {
		enable = false;
		xkb.layout = "latam";
	};
 	displayManager.sddm = {
 		enable = true;
 		wayland.enable = true;
	};
 };
 
}
