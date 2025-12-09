{pkgs, ...}: {
  services.hyprpaper = {
    enable = true;
    settings = {
      preload = ["/home/rocco/.dotfiles/user/wm/hyprpaper/wallpapers/bunnies-road.png"];
      wallpaper = [",/home/rocco/.dotfiles/user/wm/hyprpaper/wallpapers/bunnies-road.png"];
      splash = false;
    };
  };
}
