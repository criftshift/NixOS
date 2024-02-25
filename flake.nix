{
  description = "CriftDesk NixOS configuration";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    #hardware.url = "github:NixOS/nixos-hardware";
    #impermanence.url = "github:nix-community/impermanence";
    #agenix.url = "github:ryantm/agenix";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
      #useGlobalPkgs = true;
    };
  };

  outputs = { self, nixpkgs, ...} @inputs: {
    nixosConfigurations = {
      CriftDesk = nixpkgs.lib.nixosSystem {
        specialArgs = {inherit inputs;};
        modules = [
          inputs.home-manager.nixosModules.default
          ./config.nix 
          ./dev
        ];
      };
    };
  };
}
