{pkgs, ...}: {
  home.pointerCursor = {
    gtk.enable = true;
    name = "Bibata-Modern-Ice"; # cursor theme name
    package = pkgs.bibata-cursors;
    size = 24;
  };
}
