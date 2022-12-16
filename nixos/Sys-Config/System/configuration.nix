# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
    ];

  # Bootloader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.loader.efi.efiSysMountPoint = "/boot/efi";
  boot.kernelModules = [ "kvm-amd" "kvm-intel" ];


  # State Version
  system.stateVersion = "22.11"; 

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # Set your time zone.
  time.timeZone = "Asia/Kolkata";

  # Select internationalisation properties.
  i18n.defaultLocale = "en_IN";

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "en_IN";
    LC_IDENTIFICATION = "en_IN";
    LC_MEASUREMENT = "en_IN";
    LC_MONETARY = "en_IN";
    LC_NAME = "en_IN";
    LC_NUMERIC = "en_IN";
    LC_PAPER = "en_IN";
    LC_TELEPHONE = "en_IN";
    LC_TIME = "en_IN";
  };
  
  # Networking
  networking = {
    
    # Define your hostname
    hostName = "nixie3";

    # Enable networking
    networkmanager.enable = true;

    # Enables wireless support via wpa_supplicant.
    # networking.wireless.enable = true;  
       
    # Configure network proxy if necessary
    # networking.proxy.default = "http://user:password@proxy:port/";
    # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

    # Open ports in the firewall.
    # networking.firewall.allowedTCPPorts = [ ... ];
    # networking.firewall.allowedUDPPorts = [ ... ];
    # Or disable the firewall altogether.
    # networking.firewall.enable = false;

  };

  # Configure keymap in X11
  services.xserver = {

    layout = "us";
    enable = true;

    displayManager = {
      defaultSession = "none+qtile";
      lightdm.enable = true;
    };

    windowManager.qtile.enable = true;
    
  };

  # Enable sound with pipewire.
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
  };

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.csh = {
    isNormalUser = true;
    description = "csh";
    extraGroups = [ "networkmanager" "wheel" "audio" "video" "docker" "qemu-libvirtd" "libvirtd" ];
    packages = with pkgs; [];
  };

  # List packages installed in system profile. To search, run:
  environment.systemPackages = with pkgs; [ 
    
    # Version-Control
    git

    # Terminal-Emulators
    alacritty xterm
    
    # Text-Editor
    vim notepadqq 
    
    # File-Manager and virtual fs-library
    pcmanfm gvfs
    
    # Utils
    tree unzip 
    keepass keepassxc keeweb kpcli
    prs
    feh

    # Rust Utils
    bat exa procs fd ripgrep
    
    # Greeter and Dialog Programs
    lightdm pinentry 
    
    # Browser
    firefox
    
    # Networking-Tools
    wget curl openvpn openssl
  ];
  
  # Programs, Services & Virtualization

  programs = {
    # mtr combines the functionality of the 'traceroute' and 'ping' programs 
    # mtr.enable = true;
    
    gnupg.agent = {
      enable = true;
      enableSSHSupport = true;
      pinentryFlavor = "curses";
    };
  };

  # List services that you want to enable:
  services = {
    openssh = {
      enable = true;
      ports = [ 22 ];
    };
    nomad.enable = true;
    gvfs.enable = true;
  };

  # Enable Virtualisation
  virtualisation = {
    docker.enable = true;
    podman.enable = true;
    libvirtd.enable = true;
  };

}
