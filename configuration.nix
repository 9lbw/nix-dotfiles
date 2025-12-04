# Core system configuration
{ ... }:

{
  imports = [
    ./hardware-configuration.nix
    ./modules/nix.nix
    ./modules/boot.nix
    ./modules/networking.nix
    ./modules/locale.nix
    ./modules/users.nix
    ./modules/hardware.nix
    ./modules/desktop.nix
    ./modules/audio.nix
    ./modules/packages.nix
    ./modules/fonts.nix
  ];

  system.stateVersion = "25.05";
}
