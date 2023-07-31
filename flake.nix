{
  description = "v4zha's NixOS configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
    hyprland.url = "github:hyprwm/Hyprland";
  };

  outputs = inputs@{ nixpkgs, home-manager, hyprland, ... }: {
    nixosConfigurations = {
      v4zha-nix = nixpkgs.lib.nixosSystem
        {
          system = "x86_64-linux";
          modules = [
            ./nix/v4zha/system/configuration.nix
          ];
        };
    };

    homeConfigurations = {
      v4zha = home-manager.lib.homeManagerConfiguration {
        pkgs = nixpkgs.legacyPackages.x86_64-linux;
        modules = [
          hyprland.homeManagerModules.default
          {
            wayland.windowManager.hyprland = {
              enable = true;
              xwayland = {
                enable = true;
                hidpi = false;
              };
              nvidiaPatches = true;
            };
          }
          ./nix/v4zha/home-manager/home.nix
        ];
      };
    };
  };
}
