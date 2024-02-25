  {pkgs, ...}: {
    environment.systemPackages = [
      pkgs.dotnet-sdk_8
    ];
  }