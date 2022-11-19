# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
    ];
  
  # Nix-Os-Version
  system.stateVersion = "22.05";

  # Bootloader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.loader.efi.efiSysMountPoint = "/boot/efi";
  
  # Networking
  networking.hostName = "nixie"; 		# Define your hostname.
  networking.wireless.enable = true;  		# Enables wireless support via wpa_supplicant.
  networking.networkmanager.enable = true; 	# Enable network manager

  # Set your time zone.
  time.timeZone = "Asia/Kolkata";

  # Select internationalisation properties.
  i18n.defaultLocale = "en_IN.utf8";

  # Configure keymap in X11
  services.xserver = {
    layout = "us";
    enable = true;
    displayManager = {
      defaultSession = "none+qtile";
      lightdm = {
      	enable = true;
      };
    };
    windowManager = {
     qtile.enable = true;
    };
  };


  # Enable Sound with pipewire.
  # sound.enable = true;
  hardware.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    jack.enable = true;
  };

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.csh = {
    isNormalUser = true;
    description = "csh";
    extraGroups = [ "networkmanager" "wheel" "docker" "podman" ];
    packages = with pkgs; [];
  };

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # System-Wide packages installed in system profile.
  environment.systemPackages = with pkgs; [
    vim 	# default text-editor
    lightdm 	# default login-manager
    firefox 	# default browser
    alacritty 	# default terminal-emulator
  ];

  programs.gnupg.agent = {
    enable = true;
    enableSSHSupport = true;
    pinentryFlavor = "curses";
  };

  # Enable the OpenSSH daemon.
  services.openssh.enable = true;

  # Enable Containerization
  virtualisation.docker.enable = true;
  virtualisation.podman.enable = true;
  services.nomad.enable = true;

}
