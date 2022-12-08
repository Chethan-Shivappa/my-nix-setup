{ config, pkgs, ... }:

{
  # Username and Path
  home.username = "csh";
  home.homeDirectory = "/home/csh";

  # State-Version
  home.stateVersion = "22.11";

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  # Allow Unfree Packages
  nixpkgs.config.allowUnfree = true;

  # Packages to be installed to user profile.
  home.packages = with pkgs; [
  
  ############################################
  
    # Version-Control 
      git
  
    # Terminal-Emulator and Shell
      xfce.xfce4-terminal kitty fish
  
    # Terminal-Tools
      htop pfetch tree unzip 
    
    # Text-Editor and File-Manager
      neovim fff pcmanfm

    # Utilities
      xarchiver drawio prs
    
    # Qtile-Utilities
      picom copyq mictray pasystray lightlocker dmenu 

    # Rust-Utilities
      bat exa procs fd ripgrep

    # Multi-Media
      flameshot xfce.ristretto nitrogen 
      mpv yt-dlp-light ffmpeg pavucontrol


    
    # Office and Notes
      libreoffice cherrytree 


  ############################################
  
    # Programming-Languages
      go protobuf
      rustc cargo
      cmake gcc
      nodejs
    
    # NodeJs Global Packages
      nodePackages."@nestjs/cli"
      nodePackages.typescript
      nodePackages.ts-node
      nodePackages.nodemon
      nodePackages.parcel-bundler
      nodePackages.live-server
    
    # DB
      sqlitebrowser
      mongodb-compass
  ############################################
      
    # Dev-Ops and Cloud-Computing
    
    # Containerization
      docker-compose podman-compose
      skopeo buildah dive
    
    # Orchestration
      kubectl kind k0sctl
      tilt skaffold
      nomad

    # Orchestration-Version-Control
      helmfile helmsman kubernetes-helm
    
    # Cloud-Computing
      awscli2 

    # IaC
      terraform pulumi pulumictl tf2pulumi
  
  ############################################
  
    # Networking
      wget curl openvpn

  ############################################

  ];

  programs.git = {
    enable = true;
    userName = "Chethan S H";
    userEmail = "chethan.sh@hotmail.com";
  };
  
}
