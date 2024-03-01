{ config, pkgs, ... }:

{
  # nixpkgs.overlays = [
  #   (self: super: {
  #     stdenv = super.withCFlags [ "-O3" "-pipe" "-march=native" ] super.stdenv;
  #   })
  #
  #   (self: super: {
  #     stdenv = super.impureUseNativeOptimizations super.stdenv;
  #   })
  # ];

  home.username = "9yokuro";

  home.homeDirectory = "/home/9yokuro";

  home.stateVersion = "23.11";

  home.packages = with pkgs; [
    # Editors
    emacs29-pgtk
    neovim
    vim

    # Fonts
    noto-fonts-monochrome-emoji
    (nerdfonts.override { fonts = [ "Iosevka" ]; })
    source-han-sans
    source-sans

    # Languages
    deno
    go
    goreleaser
    nixpkgs-fmt
    nodejs_21
    rustup
    stylua

    # Tools
    btop
    eza
    fastfetch
    fd
    fish
    fzf
    ripgrep
    sl
    sheldon
    tmux
    tokei
    unzip
    zoxide

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
