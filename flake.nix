{
  description = "CriftDesk NixOS configuration";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    hardware.url = "github:NixOS/nixos-hardware";
    impermanence.url = "github:nix-community/impermanence";
    agenix.url = "github:ryantm/agenix";
  };

  outputs = {nixpkgs, ...} @ inputs: {
    nixosConfigurations = {
      CriftDesk = nixpkgs.lib.nixosSystem {
        specialArgs = {inherit inpus;};
        modules = [./config.nix]
      };
    };
  };
}