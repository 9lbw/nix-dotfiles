# Hardware configuration: GPU and graphics settings
{ ... }:

{
  # OpenGL / Graphics
  hardware.opengl.enable = true;
  hardware.graphics.enable = true;

  # NVIDIA
  services.xserver.videoDrivers = [ "nvidia" ];
  hardware.nvidia = {
    modesetting.enable = true;
    open = true;
  };
}
