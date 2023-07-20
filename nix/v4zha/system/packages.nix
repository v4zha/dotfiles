{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    vim
    wget
    curl
    git
    zip
    unzip
    brightnessctl
    wl-clipboard
    pulseaudio
    pavucontrol
    pciutils
    jq
    socat
  ];
  programs.gnupg.agent = {
    enable = true;
    pinentryFlavor = "curses";
    enableSSHSupport = true;
  };
  programs = {
    neovim = {
      enable = true;
      defaultEditor = true;
    };

    fish.enable = true;

  };

}    
