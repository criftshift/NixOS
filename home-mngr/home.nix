{ config, pkgs, ... }:

{
  programs.home-manager.enable = true;
  
  home.username = "crift";
  home.homeDirectory = "/home/crift";

  imports = [
    ./dev-conf
  ];

  nixpkgs.config.allowUnfree = true;
  home.stateVersion = "24.05";
}

