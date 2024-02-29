{pkgs, ...}: {
  fonts = {
    enableDefaultPackages = true;

    packages = with pkgs; [
      noto-fonts
      noto-fonts-extra
      noto-fonts-cjk-sans
      noto-fonts-cjk-serif
      noto-fonts-emoji
      (nerdfonts.override {fonts = ["Noto" "JetBrainsMono"];})
    ];

    fontconfig = {
      enable = true;

      defaultFonts = {
        monospace = ["JetBrainsMono Nerd Font Mono"];
        sansSerif = ["Noto Sans"];
        serif = ["Noto Serif"];
        emoji = ["Noto Color Emoji"];
      };
    };
  };
}