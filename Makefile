.PHONY: help status nets

PROJECT_ROOT=$(shell pwd)

help:  ## This help
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST) | sort

nix-conf-lg:  ## copy /etc/nixos/configuration.nix to here (LG Gram)
	cat /etc/nixos/configuration.nix > etc/nixos/configuration.nix.lg_gram

hyprland:  ## copy hyperland conf to here
	cp ~/.config/hypr/hyprland.conf home/.config/hypr/hyprland.conf

all: nix-conf-lg hyprland  ## copy all configuration to here
	echo "Successfully finished."
