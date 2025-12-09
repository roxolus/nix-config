{
  config,
  pkgs,
  lib,
  ...
}: {
  systemd.user.services.trash-clean = {
    Service = {
      Type = "oneshot";
      ExecStart = ''
         rm -rf ~/.local/share/Trash/files/* ~/.local/share/Trash/info/*
      '';
    };
  };

  systemd.user.timers.trash-clean = {
    Timer = {
      OnCalendar = "daily";
      Persistent = true;
    };
    Install = {
      WantedBy = ["timers.target"];
    };
  };
}
