{ config, pkgs, lib, ... }:
{
  imports = [ ./overlays.nix ./configs/hyprland.nix ];
  home.username = "v4zha";
  home.homeDirectory = "/home/v4zha";

  nixpkgs.config.allowUnfree = true;
  programs.home-manager.enable = true;
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
    #language utils and lsp : )
    # neovim mason work aakilla , list lsp servers here : )
    cargo
    rust-analyzer
    tree-sitter
    lua
    lua-language-server
    ghc
    cabal-install
    haskell-language-server
    marksman
    nodejs
    python3
    glibc
    llvmPackages_15.clang-unwrapped
  ];
  home.stateVersion = "23.11";
}
