# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running `nixos-help`).

{ config, lib, pkgs, ... }:

{
  imports =
    [
      ./hardware-configuration.nix
      ./packages.nix
    ];

  # Use the systemd-boot EFI boot loader.
  boot.kernelParams = [ "acpi_osi=linux" ];
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  networking.hostName = "v4zha-nix";
  networking.networkmanager.enable = true;

  # Set your time zone.
  time.timeZone = "Asia/Kolkata";

  nixpkgs.config.allowUnfree = true;
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  # Binary Cache for Haskell.nix
  nix.settings.trusted-public-keys = [
    "hydra.iohk.io:f/Ea+s+dFdN+3Y/G+FDgSq+a5NEWhJGzdjvKNGv0/EQ="
  ];
  nix.settings.substituters = [
    "https://cache.iog.io"
  ];

  # Select internationalisation properties.
  i18n.defaultLocale = "en_US.UTF-8";
  console = {
    font = "Lat2-Terminus16";
    #keyMap = "us";
    useXkbConfig = true;
  };

  services = {
    # Enable the X11 windowing system.
    xserver = {
      enable = true;
      autorun = false;
      videoDrivers = [ "nvidia" ];
      # Configure keymap in X11
      xkbOptions = "caps:escape";
      # Enable touchpad support (enabled default in most desktopManager).
      libinput = {
        enable = true;
        touchpad.tapping = true;
      };
    };
    # Enable CUPS to print documents.
    printing.enable = true;

  };


  # Enable sound.
  # sound.enable = true;
  # hardware.pulseaudio.enable = true;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
  };
  # Bluetooth
  hardware.bluetooth.enable = true;
  services.blueman.enable = true;


  users.users.v4zha = {
    isNormalUser = true;
    shell = pkgs.fish;
    extraGroups = [ "wheel" "networkmanager" "audio" "video" ];
    packages = with pkgs; [ ];
  };

  services.pcscd.enable = true;

  hardware.opengl = {
    enable = true;
    driSupport = true;
    driSupport32Bit = true;
  };


  nixpkgs.config.allowUnfreePredicate = pkg:
    builtins.elem (lib.getName pkg) [
      "nvidia-x11"
      "nvidia-settings"
    ];


  hardware.nvidia = {
    modesetting.enable = true;
    open = true;
    nvidiaSettings = true;
    package = config.boot.kernelPackages.nvidiaPackages.stable;
  };

  security.polkit.enable = true;
  system.stateVersion = "23.05";

}

