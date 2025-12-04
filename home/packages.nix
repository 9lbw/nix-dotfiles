# User packages
{ pkgs, ... }:

{
  home.packages = with pkgs; [
    htop
    ripgrep
    helix
    opencode
    autotiling-rs
    nicotine-plus
    kew
    fastfetch
    rust-bin.stable.latest.default
    go
    sassc
    gtk-engine-murrine
    sway-contrib.grimshot
    waifu2x-converter-cpp
    playerctl
    zathura
    rmpc
    zenity
    imagemagick
    unzip
    cowsay
    fortune
    nsxiv
    mpvpaper
  ];
}
