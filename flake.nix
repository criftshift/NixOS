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

  outputs = { self, nixpkgs, ...} @inputs: let 
    supportedSystems = ["x86_64-linux" "aarch64-linux"];

    forEachSystem = f:
      nixpkgs.lib.genAttrs supportedSystems (system: f (import nixpkgs {inherit system;}));
    in {
    nixosConfigurations = {
      CriftDesk = nixpkgs.lib.nixosSystem {
        specialArgs = {inherit inputs;};
        modules = [
          inputs.home-manager.nixosModules.default
          ./config.nix 
          ./dev
          ./common
        ];
      };
    };
    
    devShells = forEachSystem (pkgs: {
      default = pkgs.mkShellNoCC {
        packages = [
          pkgs.nil
        ];
      };
    });
    
  };
}
