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
    };
  };

  outputs = { self, nixpkgs, ...} @inputs: {
    nixosConfigurations = {
      CriftDesk = nixpkgs.lib.nixosSystem {
        specialArgs = {inherit inputs;};
        modules = [
	  ./config.nix 
	  ./dev
	  inputs.home-manager.nixosModules.default #i don't get this yet
	];
      };
    };
  };
}
