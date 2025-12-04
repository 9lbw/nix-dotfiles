# Desktop environment: Wayland compositor
{ ... }:

{
  # Wayland / Mango compositor
  programs.mango.enable = true;
  programs.xwayland.enable = true;

  # X11 keymap (used by some Wayland compositors)
  services.xserver.xkb.layout = "us";
  services.xserver.xkb.options = "eurosign:e,caps:escape";

  # Enable zsh system-wide (required for user shell)
  programs.zsh.enable = true;
}
