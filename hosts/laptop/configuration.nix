# Laptop system configuration
{ ... }:

{
  imports = [
    ./hardware.nix
    ../modules/nix.nix
    ../modules/boot.nix
    ../modules/networking.nix
    ../modules/locale.nix
    ../modules/users.nix
    ../modules/desktop.nix
    ../modules/audio.nix
    ../modules/packages.nix
    ../modules/fonts.nix
  ];

  networking.hostName = "laptop";
  system.stateVersion = "25.05";
}
