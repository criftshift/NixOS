{pkgs, config, ...}: {
  wayland.windowManager.hyprland.enable = true;
  wayland.windowManager.hyprland.systemd.enable = true;
  wayland.windowManager.hyprland.settings = {
    "$mod" ="SUPER";
    decoration = {
      rounding = 12;
    };

    bind =
      [
        "$mod, F, exec, firefox"
        ", Print, exec, grimblast copy area"
        "$mod, RETURN, exec, kitty"
        "$mod SHIFT, Q, killactive"
      ]
      ++
      [
        # Move focus with mainMod + arrow keys
        "$mod, left, movefocus, l"
        "$mod, right, movefocus, r"
        "$mod, up, movefocus, u"
        "$mod, down, movefocus, d"


        # Switch workspaces relative to the active workspace with mainMod + CTRL + [←→]
        # For the days where 10 Workspaces are just not enough
        "$mod CTRL, right, workspace, r+1" 
        "$mod CTRL, left, workspace, r-1"
      ]
      ++ (
        # workspaces
        # binds $mod + [shift +] {1..10} to [move to] workspace {1..10}
        builtins.concatLists (builtins.genList (
            x: let
              ws = let
                c = (x + 1) / 10;
              in
                builtins.toString (x + 1 - (c * 10));
            in [
              "$mod, ${ws}, workspace, ${toString (x + 1)}"
              "$mod SHIFT, ${ws}, movetoworkspace, ${toString (x + 1)}"
            ]
          )
          10)
      ); 


    monitor=[
      "HDMI-A-2,1920x1080,-1920x0,1"
      "DP-2,2560x1440,0x0,1"
      "HDMI-A-1,1920x1080,2560x0,1"
      ];

    workspace=[
      "DP-2,1"
      "HDMI-A-2,2"
      "HDMI-A-1,3"
    ];
  
  };
}