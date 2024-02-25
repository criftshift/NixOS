  {pkgs, ...}: {
    environment.systemPackages = [
      pkgs.jdk21
    ];
  }