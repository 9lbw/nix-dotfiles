# Doom Emacs configuration
{ inputs, ... }:

{
  programs.doom-emacs = {
    enable = true;
    doomDir = ./doom.d;
  };
}
