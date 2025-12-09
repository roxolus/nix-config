{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    p7zip # dont know if i need it now
    lutris-free
    ghostty # terminal
    aria2 # extract torrent
    ntfs3g # for the windows partition
    spotify
    discord
    gamescope # doesnt work
    unar #extract rar
    yazi # files explorer
    ripgrep # needed for nvim

    mangohud # show fps
    mangojuice
    #nvim things
    nodejs
    nodePackages.npm
    gcc

    vscode
    python314
    pip2nix # agregar paquetes que falten a nix develop

    wineWowPackages.waylandFull # dont know what this is
    winetricks
    #hyprlandthings
        #hyprpaper
    hyprshot
        #hypridle

    rofi

    steam-run

    bibata-cursors

    imv


    #neovim #temporal
  ];
}
