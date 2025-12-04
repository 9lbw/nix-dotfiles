{
  description = "My NixOS configuration";
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    mango = {
      url = "github:DreamMaoMao/mangowc";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    rust-overlay.url = "github:oxalica/rust-overlay";
    vicinae.url = "github:vicinaehq/vicinae";
    awww.url = "git+https://codeberg.org/LGFae/awww";
    sd-webui-nix = {
      url = "github:Janrupf/stable-diffusion-webui-nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nix-doom-emacs-unstraightened = {
      url = "github:marienz/nix-doom-emacs-unstraightened";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };
  outputs =
    {
      self,
      nixpkgs,
      home-manager,
      mango,
      rust-overlay,
      vicinae,
      sd-webui-nix,
      nix-doom-emacs-unstraightened,
      ...
    }@inputs:
    {
      nixosConfigurations = {
        nixos = nixpkgs.lib.nixosSystem {
          system = "x86_64-linux";
          specialArgs = { inherit inputs; };
          modules = [
            ./configuration.nix
            mango.nixosModules.mango
            home-manager.nixosModules.home-manager
            {
              nixpkgs.overlays = [
                rust-overlay.overlays.default
                sd-webui-nix.overlays.default
              ];
              home-manager.useGlobalPkgs = true;
              home-manager.useUserPackages = true;
              home-manager.extraSpecialArgs = { inherit inputs; };
              home-manager.users.phillip = import ./home;
              home-manager.sharedModules = [
                vicinae.homeManagerModules.default
                nix-doom-emacs-unstraightened.homeModule
              ];
            }
          ];
        };
      };
    };
}
