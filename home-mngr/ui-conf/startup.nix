#    exec-once=lib.getExe(pkgs.writeShellApplication { name = "sww_init"; text = (builtins.readFile ./swww.sh)})
{ pkgs, lib, ...} : 
{
  wayland.windowManager.hyprland.settings = {
    exec-once = [
      ''${lib.getExe(pkgs.writeShellApplication { name = "sww_init"; text = (builtins.readFile ./swww.sh);})}''
      ];
  };
}