{ config, pkgs, lib, ... }: {
  nixpkgs.overlays = with pkgs;[
    (self: super: {
      waybar = super.waybar.overrideAttrs (oldAttrs: {
        mesonFlags = oldAttrs.mesonFlags ++ [ "-Dexperimental=true" ];
      });
    })
    (self: super: {
      mpv-unwrapped = super.mpv-unwrapped.override {
        ffmpeg_5 = ffmpeg_5-full;
      };
    })
  ];
}
