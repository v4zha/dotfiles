{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  nativeBuildInputs = [
    pkgs.poetry
    pkgs.python3
    pkgs.nodePackages.pyright
  ];
}
