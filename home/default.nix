# Home Manager configuration entry point
{ pkgs, inputs, ... }:

{
  imports = [
    ./packages.nix
    ./git.nix
    ./helix.nix
    ./zsh.nix
    ./ssh.nix
    ./services.nix
  ];

  # Home Manager identity
  home.username = "phillip";
  home.homeDirectory = "/home/phillip";
  home.stateVersion = "25.05";

  # Session variables
  home.sessionVariables = {
    TERMINAL = "foot";
  };

  # Pointer cursor configuration
  home.pointerCursor = {
    gtk.enable = true;
    package = pkgs.adwaita-icon-theme;
    name = "Adwaita";
    size = 16;
  };
}
