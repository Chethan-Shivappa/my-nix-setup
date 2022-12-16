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
      kitty fish
  
    # Terminal-Tools
      htop pfetch gdu bottom bottom-rs
    
    # Text-Editor and File-Manager
      neovim fff 

    # Utilities
      xarchiver drawio 
    
    # Qtile-Utilities
      picom copyq mictray pasystray lightlocker dmenu 

    # Multi-Media
      flameshot nitrogen 
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
    
  ############################################
    
    # DB
      sqlitebrowser
      mongodb-compass

    # Web-Dev
      postman newman grpcui

  ############################################
      
    # Dev-Ops and Cloud-Computing
    
    # Containerization
      docker-compose podman-compose
      skopeo buildah dive
      vagrant
    
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
  
  ];

  programs.git = {
    enable = true;
    userName = "Chethan S H";
    userEmail = "chethan.sh@hotmail.com";
  };
  
}
