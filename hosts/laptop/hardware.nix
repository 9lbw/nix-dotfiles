# Hardware configuration for laptop with Intel integrated graphics (i5-7300U HD 620)
{ ... }:

{
  # Graphics - Intel integrated GPU (modesetting driver loaded by default)
  hardware.graphics.enable = true;

  # Intel microcode updates
  hardware.cpu.intel.updateMicrocode = true;
}
