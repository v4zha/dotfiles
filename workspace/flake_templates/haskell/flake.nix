{
  description = "v4zha's Haskell flakes";
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
    flake-parts.url = "github:hercules-ci/flake-parts";
    haskell-flake.url = "github:srid/haskell-flake";
  };
  outputs = inputs@{ self, nixpkgs, flake-parts, ... }:
    flake-parts.lib.mkFlake { inherit inputs; } {
      systems = nixpkgs.lib.systems.flakeExposed;
      imports = [ inputs.haskell-flake.flakeModule ];

      perSystem = { self', pkgs, ... }: {

        haskellProjects.default = {
          packages = { };
          devShell = {
            enable = true;
            tools = hp: {
              fourmolu = hp.fourmolu;
            };
            hlsCheck.enable = true;
          };
        };

        packages.default = self'.packages.<your-package-name>;
      };
    };
}
