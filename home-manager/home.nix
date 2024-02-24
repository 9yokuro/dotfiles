{ config, pkgs, ... }:

{
  home.username = "9yokuro";

  home.homeDirectory = "/home/9yokuro";

  home.stateVersion = "23.11";

  home.packages = with pkgs; [
    # Editors
    neovim
    vim

    # Fonts
    noto-fonts-monochrome-emoji
    (nerdfonts.override { fonts = [ "Iosevka" ]; })
    source-han-sans
    source-sans

    # Languages
    go
    nodejs_21
    rustup
    stylua

    # Tools
    btop
    fastfetch
    sl
    tmux
    tokei
    unzip

    # Window manager
    fuzzel
    grim
    mako
  ];

  programs.home-manager.enable = true;

  programs.git = {
      enable = true;
      extraConfig.core.editor = "nvim";
      userEmail = "xzstd099@protonmail.com";
      userName = "9yokuro";
  };
}
