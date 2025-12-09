{ pkgs, ... }:

{
  programs = {
    hyprland = {
      enable = true;
      xwayland.enable = true;
      withUWSM = true;
    };
  };


  xdg.portal = {
    enable = true;
    xdgOpenUsePortal = true;

    config = {
      common.default = [ "gtk" ];
      hyprland.default = [ "hyprland" "gtk" ];
    };

    extraPortals = [
      pkgs.xdg-desktop-portal-hyprland
      pkgs.xdg-desktop-portal-gtk
    ];

   };

}

