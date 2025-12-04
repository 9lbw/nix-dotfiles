# User accounts
{ pkgs, ... }:

{
  users.users.phillip = {
    isNormalUser = true;
    shell = pkgs.zsh;
    extraGroups = [
      "wheel"
      "networkmanager"
    ];
  };
}
