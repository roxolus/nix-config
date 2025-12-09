{ config, pkgs, ... }:

{
    imports = [
        ./aesthetic.nix
        ./input.nix
        ./keybinds.nix
        ./misc.nix
        ./startup.nix
    ];
    wayland.windowManager.hyprland = {
        enable = true;
        xwayland.enable = true;

        settings = {
            "$terminal" = "ghostty";
            "$fileManager" = "ghostty -e yazi";
            "$menu" = "rofi -show drun";
            "$mainMod" = "SUPER";
        };
    };
}
