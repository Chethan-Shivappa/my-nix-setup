{ config, pkgs, ... }:

let

  pkgsUnstable = import <nixpkgs-unstable> {};
in

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
  
  nixpkgs.config.allowUnfree = true;
  
  
  # Package to be installed to user profile.
  home.packages = with pkgs; [
  	
############################################################################

  # Version Control
	git

	# Terminal Emulator
	kitty

	# Shell
	fish oh-my-fish 
	zsh zsh-autosuggestions oh-my-zsh zplug

	# Terminal Tools
	htop pfetch

	# Terminal Multiplexing & Session Management
  abduco dvtm

	# Browsers
	chromium qutebrowser

	# Text-Editors
	helix
	pkgsUnstable.neovim
	vscode-fhs
	

	# File-Manager
	fff pcmanfm
  
############################################################################

 	# Utilities
	tree 
	unzip
	xarchiver
	drawio
	dmenu 
	pass prs 
	passff-host browserpass
  stow 

	# Rust-Utilities
	bat exa procs fd ripgrep
        
  # Qtile Utilities
  feh picom copyq mictray pasystray lightlocker

############################################################################

 	# Programming-Languages
	nodejs go rustc cargo protobuf nodePackages.typescript
  cmake gcc
  
	# NodeJs Global Packages
	nodePackages."@nestjs/cli"
	nodePackages.nodemon
	nodePackages.ts-node
  
	# Multimedia
	flameshot xfce.ristretto nitrogen 
	mpv mpvc
	yt-dlp-light 
	ffmpeg 

	# Office and Notes
	libreoffice cherrytree

	# Networking
	curl openvpn
	
############################################################################

	# Dev-Ops Tools
	
	# Virtualization
	virtualbox vagrant
	
	# Containerization
	docker docker-compose
	podman podman-compose
	skopeo buildah dive

	# Orchestration
	kubectl 
	kind kube3d tilt
	minikube skaffold
  k0sctl

  # Reproduction
	helmfile helmsman kubernetes-helm
  
	# hashi-corp
	nomad damon nomad-driver-podman
	
	# IaC
	terraform
	
############################################################################

# Cloud-Computing
awscli2 
awslogs
aws-nuke

# IaC
pulumi-bin
pulumictl
tf2pulumi



############################################################################
	

		
  ];
  
	programs.git = {
		enable = true;
		userName = "Chethan S H";
		userEmail = "chethan.sh@hotmail.com";
	};

	programs.zsh = {
	    
		enable = true;

		enableCompletion = false; # enabled in oh-my-zsh.

		shellAliases = {
		      ll = "ls -l";
		      update = "sudo nixos-rebuild switch";

		};

		history = {
			size = 10000;
			path = "${config.xdg.dataHome}/zsh/history";
		};

		oh-my-zsh = {
			enable = true;
			plugins = [ "git" "systemd" "rsync" "kubectl" ];
			theme = "fishy";
		};
	    
	};


   
 



}
