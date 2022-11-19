{ config, pkgs, ... }:

{
  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = "csh";
  home.homeDirectory = "/home/csh";

  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "22.05";

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  # Package to be installed to user profile.
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
