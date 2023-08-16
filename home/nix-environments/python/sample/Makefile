SHELL := $(shell which bash)  # necessary to use the source command, which is not on sh, Makefile's default shell ;)

help:  ## This help
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST) | sort

clean:  ## cleanup the environment so I can restart fresh
	nix-collect-garbage && rm -fr .venv

shell:  ## activate the python+virtualenv environment shell
	nix-shell base.nix


nvim:  ## activate the python+virtualenv environment and open nvim
	nix-shell nvim.nix
