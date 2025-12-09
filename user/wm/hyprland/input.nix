{ config, pkgs, ... }:

{
  wayland.windowManager.hyprland.settings = {
    env = [
      "XCURSOR_SIZE,24"
      "XCURSOR_THEME,Bibata-Modern-Ice"
    ];

    input = {
      kb_layout = "latam";
      kb_variant = "";
      kb_model = "";
      kb_options = "";
      kb_rules = "";

      follow_mouse = 1;

      sensitivity = 0;
    };

    device = {
      name = "epic-mouse-v1";
      sensitivity = -0.5;
    };
  };
}

