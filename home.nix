{
  config,
  pkgs,
  inputs,
  system,
  ...
}: {
  imports = [
    ./user/default.nix
  ];
  home.username = "rocco";
  home.homeDirectory = "/home/rocco";

  home.stateVersion = "25.05"; # Please read the comment before changing.

  home.packages = [
    inputs.zen-browser.packages."${system}".default # beta
  ];

  home.file = {
    # # Building this configuration will create a copy of 'dotfiles/screenrc' in
    # # the Nix store. Activating the configuration will then make '~/.screenrc' a
    # # symlink to the Nix store copy.
    # ".screenrc".source = dotfiles/screenrc;

    # # You can also set the file content immediately.
    # ".gradle/gradle.properties".text = ''
    #   org.gradle.console=verbose
    #   org.gradle.daemon.idletimeout=3600000
    # '';
  };

  # Home Manager can also manage your environment variables through
  # 'home.sessionVariables'. These will be explicitly sourced when using a
  # shell provided by Home Manager. If you don't want to manage your shell
  # through Home Manager then you have to manually source 'hm-session-vars.sh'
  # located at either
  #
  #  ~/.nix-profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  ~/.local/state/nix/profiles/profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  /etc/profiles/per-user/rocco/etc/profile.d/hm-session-vars.sh
  #
  home.sessionVariables = {
    # EDITOR = "emacs";
  };

  programs = {
    ghostty = {
      enable = true;
      enableZshIntegration = true;
      settings = {
        command = "zsh";
        background-opacity = 0.0;
        background-blur = false;
      };
    };
    starship = {
      enable = true;
      enableZshIntegration = true;
    };
  };

  programs.home-manager.enable = true;

  services.home-manager.autoExpire = {
    enable = true;
    frequency = "weekly";
    timestamp = "-3 days";
    store.cleanup = true;
    store.options = "--delete-older-than 3d";
  };
}
