{pkgs, ...}: {
  environment.systemPackages = [
    pkgs.greetd.gtkgreet
  ];
}