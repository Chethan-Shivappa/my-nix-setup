{ config, pkgs, ... }:

{
  home.username = "csh";
  home.homeDirectory = "/home/csh";
  home.stateVersion = "22.05";

  programs.home-manager.enable = true;

  home.packages = with pkgs; [
  	
	# Version Control
	git

	# Terminal Emulator
	kitty

	# Shell
	fish

	# Terminal Tools
	htop pfetch

	# Utilities
        tree unzip 
	dmenu 
	pass prs 
	passff-host browserpass

	# Rust-Utilities
	bat exa procs fd ripgrep
        
	# Terminal Multiplexing & Session Management
        abduco dvtm

	# Text-Editors
	neovim helix
	
	# File-Manager
        fff pcmanfm

	# Browsers
        chromium qutebrowser

	# Dev-Ops Tools
	docker docker-compose
	podman podman-compose
	skopeo buildah dive
	# hashi-corp
	nomad damon nomad-driver-podman
	# Orchestration
	kind kube3d tilt
	
	# Programming-Languages
	nodejs go rustc cargo protobuf

	# Multimedia
        flameshot

	# Office and Notes
	libreoffice cherrytree

	# Networking
	curl openvpn

		
  ];
  
  programs.git = {
  	enable = true;
	userName = "Chethan S H";
	userEmail = "chethan.sh@hotmail.com";
  };

}
