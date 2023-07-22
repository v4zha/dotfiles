{ config, lib, pkgs, ... }: {
  imports = [ ./bt.nix ./hyprland.nix  ./ghci.nix];
}
