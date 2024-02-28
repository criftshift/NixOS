{ config, pkgs, ... }:

{
  programs.home-manager.enable = true;
  
  home.username = "crift";
  home.homeDirectory = "/home/crift";

  imports = [
    ./dev-conf
    ./ui-conf
    ./tool-conf
  ];

  # I would like to use the same pkgs as main nix but it can't find
  nixpkgs.config.allowUnfree = true; 
  home.stateVersion = "24.05";
}

