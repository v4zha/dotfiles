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
    lua
    lua-language-server
    marksman
    gcc
    nodejs
    rnix-lsp
    discord
  ];
  programs.neovim.plugins = [
    (pkgs.vimPlugins.nvim-treesitter.withPlugins (p: [ p.bash p.c p.cpp p.cmake p.comment p.css p.cuda p.dockerfile p.fish p.gitignore p.go p.html p.haskell p.javascript p.json p.lua p.latex p.make p.markdown p.markdown_inline p.nix p.regex p.rust p.scss p.svelte p.toml p.tsx p.typescript p.vim p.yaml p.yuck p.zig ]))
  ];
  services.mpris-proxy.enable = true;
  home.stateVersion = "23.11";
}
