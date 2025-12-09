{pkgs, ...}: {
  imports = [
    ./nvf/default.nix
    ./shell/sh.nix
    ./wm/default.nix
    ./trash/default.nix
    ./rofi/default.nix
    ./waybar/default.nix
        #./pkgs/default.nix
  ];
}
