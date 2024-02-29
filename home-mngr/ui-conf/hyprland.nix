{pkgs, config, ...}: {
  wayland.windowManager.hyprland.enable = true;
  wayland.windowManager.hyprland.systemd.enable = true;
  wayland.windowManager.hyprland.settings = {
    "$mod" ="SUPER";
    decoration = {
      rounding = 12;
    };

    debug = {
      disable_logs = false;
    };
    bind =
      #General Bindings
      [
        "$mod, F, exec, firefox"
        ", Print, exec, grimblast copy area"
        "$mod, RETURN, exec, kitty"
        "$mod SHIFT, Q, killactive"
        "$mod, D, exec, fuzzel"
      ]
      ++
      #WindowMagic
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

        
        # move to the first empty workspace instantly with mainMod + CTRL + [↓]
        "$mod CTRL, down, workspace, empty" 

        # Resize windows
        "$mod SHIFT, right, resizeactive, 30 0"
        "$mod SHIFT, left, resizeactive, -30 0"
        "$mod SHIFT, up, resizeactive, 0 -30"
        "$mod SHIFT, down, resizeactive, 0 30"

        # Move active window around current workspace with mainMod + SHIFT + CTRL [←→↑↓]
        "$mod SHIFT $CONTROL, left, movewindow, l"
        "$mod SHIFT $CONTROL, right, movewindow, r"
        "$mod SHIFT $CONTROL, up, movewindow, u"
        "$mod SHIFT $CONTROL, down, movewindow, d"


        # Move/Resize windows with mainMod + LMB/RMB and dragging
        #TODO THIS DOES NOT WORK YET
        "$mod SHIFT, mouse:272, movewindow"
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

    animations = {
      enabled = true;
      bezier =
      [ 
        "wind, 0.05, 0.9, 0.1, 1.05"
        "winIn, 0.1, 1.1, 0.1, 1.1"
        "winOut, 0.3, -0.3, 0, 1"
        "liner, 1, 1, 1, 1"
      ];
      animation = [
        "windows, 1, 6, wind, slide"
        "windowsIn, 1, 6, winIn, slide"
        "windowsOut, 1, 5, winOut, slide"
        "windowsMove, 1, 5, wind, slide"
        "border, 1, 1, liner"
        "borderangle, 1, 30, liner, loop"
        "fade, 1, 10, default"
        "workspaces, 1, 5, wind"
      ];
    };
   
    misc = {
      disable_hyprland_logo = true;
    };

    #Monitor and Workspace should be moved somewhere else
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