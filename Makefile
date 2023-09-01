.PHONY: help status nets

PROJECT_ROOT=$(shell pwd)

help:  ## This help
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST) | sort

nix-conf-lg:  ## copy /etc/nixos/configuration.nix to here (LG Gram)
	cat /etc/nixos/configuration.nix > etc/nixos/configuration.nix.lg_gram

hyprland:  ## copy hyperland conf to here
	cp ~/.config/hypr/hyprland.conf home/.config/hypr/hyprland.conf

scripts:  # sync scripts to here
	rsync -rchzPvi --progress --delete --delete-excluded ~/scripts/* home/scripts/

todo:  ## open the TODO LIST on nvim
	nvim TODO.md

all: nix-conf-lg hyprland scripts  ## copy all configuration to here
	echo "Successfully finished."
