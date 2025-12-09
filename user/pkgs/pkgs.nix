{ pkgs, ... }:

{
    nixpkgs.config.allowUnfree = true;
    home.packages = with pkgs; [
        ghostty
        yazi

        aria2
        unar
        p7zip

        spotify
        discord
        lutris-free
    ];
}
