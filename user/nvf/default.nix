{ lib, pkgs, ... }:
{
  programs.nvf = {
    enable = true;
    settings = {
      vim.vimAlias = true;
      vim = {
        lsp = {
                enable = true;

        };

        theme = {
                enable = true;
                name = "gruvbox";
                style = "dark";
        };

        languages = {
                enableTreesitter = true;

                nix.enable = true;
                python.enable = true;
        };
        options = {
                tabstop = 4;       # How many spaces a tab counts for
                shiftwidth = 4;    # Indentation width
                softtabstop = 4;   # Backspace deletes 4 spaces
                expandtab = true;  # Use spaces instead of tabs
        };
      };
    };
  };
}
