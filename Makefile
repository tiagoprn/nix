.PHONY: help status nets

PROJECT_ROOT=$(shell pwd)
CONFIG_DIRS := mako kitty hypr swappy waybar alacritty
CONFIG_FILES := .tmux.conf .bash_aliases .bash_functions bashrc.custom .bashrc .gitconfig .npmrc

help:  ## This help
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST) | sort

nix-conf-lg:  ## copy /etc/nixos/configuration.nix to here (LG Gram)
	cat /etc/nixos/configuration.nix > etc/nixos/configuration.nix.lg_gram

scripts:  ## sync scripts to here
	rsync -rchzPvi --progress --delete --delete-excluded ~/scripts/* home/scripts/

config-dirs:  ## copy specific directories from ~/.config
	$(foreach dir, $(CONFIG_DIRS), \
		rsync -rchzPvi --progress --delete --delete-excluded ~/.config/$(dir)/ home/.config/$(dir)/ ; \
	)
	@echo "Config directories backed up successfully."

config-files:  ## copy specific files on ~
	$(foreach filename, $(CONFIG_FILES), \
		rsync -chzPvi --progress $(HOME)/$(filename) home/$(filename) ; \
	)
	@echo "Config files backed up successfully."

todo:  ## open the TODO LIST on nvim
	nvim TODO.md

nvim:  ## compile nvim from source
	/storage/src/pde.nvim/scripts/sync-neovim.sh  --source-path $(HOME)/src/nvim --binary-path $(HOME)/local/bin/nvim

all: nix-conf-lg config-dirs config-files scripts  ## copy all configuration to here
	echo "Successfully finished."
