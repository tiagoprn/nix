# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

# Add the path to your overlay directory to the Nixpkgs overlays list.
# The overlay needs to be referenced relatively to the configuration.nix file.
let
  # List of Neovim build dependencies
  neovimBuildDeps = [
    pkgs.glibc
    pkgs.libtermkey
    pkgs.libuv
    pkgs.libvterm
    pkgs.unibilium
    pkgs.msgpack
    pkgs.luajit
    pkgs.pkgconfig
    pkgs.stdenv.cc # Compiler (GCC) package, needed for building
    pkgs.makeWrapper
    pkgs.gettext
  ];
in
{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
    ];

  # Bootloader.
  boot.loader.grub.enable = true;
  boot.loader.grub.device = "/dev/sda";
  boot.loader.grub.useOSProber = true;

  networking.hostName = "nixos-prime"; # Define your hostname.
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.

  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

  # Enable networking
  networking.networkmanager.enable = true;

  # Set your time zone.
  time.timeZone = "America/Sao_Paulo";

  # Select internationalisation properties.
  i18n.defaultLocale = "en_US.UTF-8";

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "en_US.UTF-8";
    LC_IDENTIFICATION = "en_US.UTF-8";
    LC_MEASUREMENT = "en_US.UTF-8";
    LC_MONETARY = "en_US.UTF-8";
    LC_NAME = "en_US.UTF-8";
    LC_NUMERIC = "en_US.UTF-8";
    LC_PAPER = "en_US.UTF-8";
    LC_TELEPHONE = "en_US.UTF-8";
    LC_TIME = "en_US.UTF-8";
  };

  # Enable the X11 windowing system.
  services.xserver.enable = true;

  # Enable the GNOME Desktop Environment.
  services.xserver.displayManager.gdm.enable = true;
  services.xserver.desktopManager.gnome.enable = true;

  # Configure keymap in X11
  services.xserver = {
    layout = "us";
    xkbVariant = "intl";
  };

  # Configure console keymap
  console.keyMap = "us-acentos";

  # Enable CUPS to print documents.
  services.printing.enable = false;

  # Enable sound with pipewire.
  sound.enable = true;
  hardware.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    # If you want to use JACK applications, uncomment this
    #jack.enable = true;

    # use the example session manager (no others are packaged yet so this is enabled by default,
    # no need to redefine it in your config for now)
    #media-session.enable = true;
  };

  # Enable touchpad support (enabled default in most desktopManager).
  # services.xserver.libinput.enable = true;

  security.sudo.wheelNeedsPassword = false;

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.tiago = {
    isNormalUser = true;
    description = "tiago";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [
      # TODO: move to section environment.systemPackages below
      firefox
      htop
      bash-completion
      netdata
      ncdu
      tree
      cowsay
      ioping
      stress-ng
      iotop
      rclone
      nmap
      strace
      dnstracer
      imagemagick
      yewtube
      mplayer
      ffmpeg
      mpv
      vlc
      pavucontrol
      screenfetch
      neofetch
      figlet
      inxi
      tty-clock
      gparted
      tcptraceroute
      ccze
      mypaint
      fio
      sysbench
      hdparm
      fsarchiver
      qrencode
      flatpak
      wyrd
      inotify-tools
      slop
      pass
      pass-wayland
      pulsemixer
      meld

      # TODO: move below to flakes later on, those are to enable my PDE with nvim
      fd
      ripgrep
      pandoc
      delta
      gitg
      tig
      mupdf
      fira-code
      fira-code-symbols
      cmake
      asciidoc
      zathura
      font-awesome
      nerdfonts
      navi
      mosh
      fzf
      bat
      entr
      alacritty
      kitty
      clifm
    ] ++ [
      libunistring
      libidn2
      tzdata
      zlib
      zlib.dev
      readline
      readline.dev
      bzip2
      bzip2.dev
      ncurses
      ncurses.dev
      sqlite
      sqlite.dev
      openssl
      openssl.dev
      libuuid
      libuuid.dev
      gdbm
      lzlib
      tk
      tk.dev
      libffi
      libffi.dev
      expat
      expat.dev
      mailcap
      xz
      xz.dev
    ];
  };

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  nixpkgs.overlays = [
    # ... other overlays go here ...
  ];

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
    git
    gnumake
    python310Full
    python310Packages.supervisor
    python310Packages.pipx
    cargo
    rustc
    go
    jq
    tmux
    tmuxp
    gitui
    git-sync
    difftastic
    # xdg-desktop-portal-gtk
    wl-clipboard
    # texlive-combined-full
    # texlive-combined-tetex
    lua-language-server
    shellcheck
    nodejs_20
    shfmt
    xz
  ] ++ neovimBuildDeps; # concatenate the neovimBuildDeps list here;

  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  # programs.mtr.enable = true;
  # programs.gnupg.agent = {
  #   enable = true;
  #   enableSSHSupport = true;
  # };

  # List services that you want to enable:

  # Enable the OpenSSH daemon.

  services.openssh = {
    enable = true; # This ensures that the SSH service is enabled
  
    settings = {
      PermitRootLogin = "without-password";
      PasswordAuthentication = false;
    };
  };

  xdg.portal = {
    enable = true;
    # wlr.enable = true;
    # gtk portal needed to make gtk apps happy
    # extraPortals = [ pkgs.xdg-desktop-portal-gtk ];
  };

  # Open ports in the firewall.
  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  # Or disable the firewall altogether.
  # networking.firewall.enable = false;

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "23.05"; # Did you read the comment?

}
