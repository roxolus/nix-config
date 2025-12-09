{ config, pkgs, ... }:

{
  wayland.windowManager.hyprland.settings = {
    exec-once = [
      "[workspace 1 silent] zen-beta"
      "[workspace 2 silent] $terminal"
      "[workspace 3 silent] lutris"
      "hyprpaper & waybar & hypridle"
    ];
  };
}

