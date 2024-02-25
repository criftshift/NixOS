{pkgs, ...}: {
  programs.vscode = {
    enable = true;
    package = pkgs.vscode-fhs;
    extensions = [
      pkgs.vscode-extensions.vscjava.vscode-gradle
      pkgs.vscode-extensions.redhat.java
      pkgs.vscode-extensions.vscjava.vscode-spring-initializr
      pkgs.vscode-extensions.ms-dotnettools.csharp
      pkgs.vscode-extensions.jnoortheen.nix-ide
      pkgs.vscode-extensions.aaron-bond.better-comments
    ];
  };
}
