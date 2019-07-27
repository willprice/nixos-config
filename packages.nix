{ config, pkgs, ... }:

{
  # Allow proprietary packages
  nixpkgs.config.allowUnfree = true;

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
    wget git vim
    stow
    sudo
    fish
    ncdu

    gzip
    unar
    unzip
    p7zip
    cpio
#    dd


    # Build toolchains
    autoconf
    automake
    gnumake
    scons
    cmake
    gcc8
    clang
    clang-analyzer
    clang-manpages
    clang-tools

    python27
    python37
    pipenv

    ruby
    bundler

    ghc
    stack

    # GUI tools
    gnome3.file-roller


    # Media
    ffmpeg-full
    gstreamer
    gst-plugins-base
    gst-plugins-bad
    gst-plugins-ugly
    gst-plugins-good

    # IDEs
    jetbrains.clion
    jetbrains.webstorm
    jetbrains.idea-ultimate
    jetbrains.pycharm-professional


    # Desktop
    xmonad-with-packages
    dmenu
    rofi
    (polybar.override { 
      alsaSupport = true;
      githubSupport = true;
      mpdSupport = true;
      pulseSupport = true;
    })
    material-icons
    xorg.xmodmap
    xorg.xset
    xorg.xsetroot

    terminus_font
    terminus_font_ttf
    dejavu_fonts
    hack-font
    hasklig
    inriafonts
    iosevka

    kdeApplications.konsole
    firefox
    chromium

    sway
    ncmpcpp
    powerline-fonts
  ];
}
