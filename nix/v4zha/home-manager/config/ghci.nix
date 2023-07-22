{ config, lib, pkgs, ... }: {
  home.file.".ghci".text = ''
    :set prompt "󰘧> "
    :set prompt2 "| "
    :set prompt-cont "| "
  '';
}
