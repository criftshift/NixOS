{pkgs, lib, ...}: {
  environment.systemPackages = [ #TODO Remove from system wide installation
    pkgs.swww
  ];

  # #I am not happy with this. UserHome hardcoded
  # systemd.services.swww = {
  #   enable = true;
    
  #   wantedBy = [ "single-user.target" ];
  #   description = "Starting the Wallpaper Service";
  #   #user = "crift"; #TODO this needs to be optimized
  #   # the command to execute when the service starts up 
  #   serviceConfig = {
  #     #ExecStart = ''sh ${builtins.toPath ./swww.sh}'';
  #     ExecStart = lib.getExe(pkgs.writeShellApplication { name = "sww_init"; text = (builtins.readFile ./swww.sh)});
  #     # and the command to execute         
  #     ExecStop = ''swww kill'';
  #   };
  # };
}