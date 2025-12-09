{
  description = "main flake";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-unstable";
    nixos-hardware.url = "github:NixOS/nixos-hardware/master";

    home-manager = {
      url = "github:nix-community/home-manager/master";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    stylix.url = "github:danth/stylix";

    zen-browser.url = "github:0xc000022070/zen-browser-flake";

    nvf.url = "github:NotAShelf/nvf";
  };

  outputs = inputs @ {
    self,
    nixpkgs,
    home-manager,
    nvf,
    stylix,
    ...
  }: let
    lib = nixpkgs.lib;
    system = "x86_64-linux";
    pkgs = nixpkgs.legacyPackages.${system};
  in {
    nixosConfigurations = {
      nixos = lib.nixosSystem {
        modules = [
	  {
              nixpkgs.overlays = [];
              _module.args = {
                inherit inputs;
              };
          }
	  inputs.home-manager.nixosModules.home-manager
	  inputs.stylix.nixosModules.stylix
          ./configuration.nix
        ];
      };
    };
    homeConfigurations = {
      rocco = home-manager.lib.homeManagerConfiguration {
        inherit pkgs;
        modules = [
                nvf.homeManagerModules.default
		        {
        		    _module.args = {
          		    inherit inputs system;
        		    };
      		    }
        	    ./home.nix
        ];
      };
    };
  };
}
