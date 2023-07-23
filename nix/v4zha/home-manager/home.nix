{ config, pkgs, lib, ... }:
{
  imports = [ ./overlays.nix ./config/init.nix ];
  home.username = "v4zha";
  home.homeDirectory = "/home/v4zha";

  nixpkgs.config.allowUnfree = true;
  nixpkgs.config.allowUnfreePredicate = (pkg: true);
  programs.home-manager.enable = true;
  programs = {
    direnv.enable = true;
  };
  home.packages = with pkgs;[
    waybar
    shotman
    zathura
    rofi-wayland
    hyprpaper
    exa
    bat
    gitui
    htop
    ripgrep
    fzf
    fd
    dunst
    xfce.thunar
    xfce.tumbler
    xfce.ristretto
    ranger
    chromium
    mpv
    starship
    librewolf
    kitty
    (nerdfonts.override {
      fonts = [ "JetBrainsMono" "CascadiaCode" ];
    })
  ];
  services.mpris-proxy.enable = true;
  home.stateVersion = "23.11";
}
