{
  programs.waybar = {
    enable = true;
    systemd.enable = true;
    settings = {
      mainBar = {
        height = 30;
        modules-left = [
          "custom/padd"
          "custom/l_end"
          "hyprland/workspaces"
          "custom/r_end"
        ];
        modules-center = [
          "custom/l_end"
          "clock"
          "custom/r_end"
        ];
        modules-right = [
          "custom/l_end"
          "cpu"
          "memory"
          "pulseaudio"
          "temperature"
          "disk"
          "custom/r_end"
          "custom/padd"
        ];

        "hyprland/workspaces"= {
            disable-scroll = true;
            all-outputs = true;
            active-only = false;
            on-click = "activate";
            persistent-workspaces = {
            };
        };

        clock = {
          interval = 60;
          format = " {:%a %b %d  %I:%M %p} ";
          format-alt = " {:%Y-%m-%d} ";
        };
        temperature = {
        critical-threshold = 80;
        interval = 2;
        format = "T: {temperatureC}°C";
        };
        cpu = {
          interval = 2;
          format = "C: {usage}%";
          tooltip = false;
        };
        memory = {
          interval = 2;
          format = "M: {}%";
        };
        disk = {
          interval = 15;
          format = "D: {percentage_used}%";
        };     
        pulseaudio = {
          format = "V: {volume}%";
          format-muted = "{format_source}";
          on-click = "pavucontrol";
          on-click-right = "noisetorch";
        };

        "custom/padd" = {
          format = "  ";
          interval = "once";
          tooltip = false;
        };
        "custom/l_end" = {
          format = " ";
          interval = "once";
          tooltip = false;
        };
        "custom/r_end" = {
          format = " ";
          interval = "once";
          tooltip = false;
        };
      };
    };
  };
}