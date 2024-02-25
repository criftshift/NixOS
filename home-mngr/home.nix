{ config, pkgs, ... }:

{
  home.username = "crift";
  home.homeDirectory = "/home/crift";

  home.stateVersion = "24.05";

  programs.home-manager.enable = true;
}

