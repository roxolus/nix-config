{
  pkgs,
  lib,
  ...
}: {
  services.hypridle = {
    enable = true;
    settings = {
      general = {
        ignore_dbus_inhibit = false;
        ignore_systemd_inhibit = false;
        before_sleep_cmd = "loginctl lock-session";
        after_sleep_cmd = "hyprctl dispatch dpms on";
      };

      listener = [
        {
          timeout = 600;
          on-timeout = "hyprctl dispatch dpms off";
          on-resume = "hyprctl dispatch dpms on";
        }
      ];
    };
  };
}
