# System-wide packages
{ pkgs, inputs, ... }:

{
  environment.systemPackages = with pkgs; [
    vim
    wget
    git
    alacritty
    firefox
    foot
    grim
    wl-clipboard
    slurp
    swaybg
    wmenu
    pciutils
    wlr-randr
    waybar
    swayimg
    lm_sensors
    inputs.awww.packages.${pkgs.stdenv.hostPlatform.system}.awww
    ffmpeg
  ];
}
