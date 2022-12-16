#!/bin/sh

# rsync -avh Src Dst

# System-Configuration
rsync -avh /etc/nixos/ ~/Development/Sys-Config/System/

# User-Configuration
rsync -avh ~/.config/nixpkgs/ ~/Development/Sys-Config/User/

# Application-Configuration
rsync -avh ~/.config/fish/ ~/Development/Sys-Config/Config/fish/
rsync -avh ~/.config/kitty/ ~/Development/Sys-Config/Config/kitty/
rsync -avh ~/.config/qtile/ ~/Development/Sys-Config/Config/qtile/

# Media
rsync -avh ~/Pictures/Wall-Papers/ ~/Development/Sys-Config/Media/Wall-Papers/



