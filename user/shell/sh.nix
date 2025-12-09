{
  config,
  pkgs,
  ...
}: {
  programs = {
    zsh = {
      enable = true;
      enableCompletion = true;
      autosuggestion.enable = true;
      syntaxHighlighting.enable = true;
      history.size = 10000;
      shellAliases = {
        home-switch = "home-manager switch --flake .#rocco";
        nixos-switch = "sudo nixos-rebuild switch --flake .#nixos";
        vim = "nvim";
        flake-switch = "nix flake update";
        ".." = "cd ..";
        trash = "rm -rf ~/.local/share/Trash/info/* ~/.local/share/Trash/files/*";
      };
    };
  };
}
