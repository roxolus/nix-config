{ config, lib, pkgs, ... }: 

{
  wayland.windowManager.hyprland.settings = {
    monitor = "HDMI-A-1,1920x1080@75,0x0,1";

    windowrulev2 = [
      "fullscreen, class:(Code)"
      "idleinhibit fullscreen, class:^(*)$"
      "idleinhibit fullscreen, title:^(*)$"
      "idleinhibit fullscreen, fullscreen:1"
    ];

    windowrule = [
      "suppressevent maximize, class:.*"
      "nofocus,class:^$,title:^$,xwayland:1,floating:1,fullscreen:0,pinned:0"
    ];

    dwindle = {
      pseudotile = true;
      preserve_split = true;
    };

    master = {
      new_status = "master";
    };

    misc = {
      force_default_wallpaper = 0;
      disable_hyprland_logo = true;
    };
  };
}

