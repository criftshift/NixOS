{ config, lib, pkgs, ... }:

{
  imports =
    [ 
      ./hardware-configuration.nix
    ];

  nixpkgs.config.allowUnfree = true;

  nix = {
    nixPath = lib.mapAttrsToList (key: _: "${key}=flake:${key}") config.nix.registry;

    settings = {
      experimental-features = "nix-command flakes";
      auto-optimise-store = true;
    };
  };

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  
  networking.hostName = "CriftDesk"; 
  networking.networkmanager.enable = true;
  #Set your time zone.
  time.timeZone = "Europe/Amsterdam";
  i18n.defaultLocale = "en_US.UTF-8";

  hardware.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    wireplumber.enable = true;
    alsa.enable = true;
    pulse.enable = true;
    jack.enable = true;
  };

 #Users
 users.mutableUsers = false;

  users.users.crift = {
    isNormalUser = true;
    password = "InitCrift"; 
    extraGroups = [ "wheel" ];
    packages = with pkgs; [
      firefox
    ];
  };

  users.users.root.hashedPassword = "!";

  #UI
  services.xserver.enable = true;
  services.xserver.displayManager.gdm.enable = true;
  services.xserver.desktopManager.gnome.enable = true;

  #Tools
  programs.neovim.enable = true;
  programs.git.enable = true;
  
  services.openssh.enable = true;
  system.stateVersion = "24.05";
}
