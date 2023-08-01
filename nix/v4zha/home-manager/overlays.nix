{ config, pkgs, lib, ... }: {
  nixpkgs.overlays = with pkgs;[
    (self: super: {
      #waybar
      waybar = super.waybar.overrideAttrs (oldAttrs: {
        mesonFlags = oldAttrs.mesonFlags ++ [ "-Dexperimental=true" ];
      });
      #mpv
      mpv-unwrapped = super.mpv-unwrapped.override {
        ffmpeg_5 = ffmpeg_5-full;
      };
      #discord
      discord = super.discord.override { withOpenASAR = true; withVencord = true; };
    })
  ];
}
