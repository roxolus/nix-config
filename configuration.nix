

{ config, lib, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
      ./core
    ];

    environment.shells = with pkgs; [ zsh ];
    programs.zsh.enable = true;
    boot.kernelPackages = pkgs.linuxPackages_latest;

    nix.settings.trusted-users = [ "root" "rocco" ];


  
}

