## ABOUT

`default.nix` defines an environmnent that create a shell, kinda like pyenv does but "the Nix way".

It integrates the system's Nix packages with a standard Python virtual environment (which by default provides virtualenv AKA venv).

That way I can use pip to install packages like I do on other (mutable) linux distributions.

On this file:

- `postVenvCreation` script installs packages from a requirements.txt file into the virtual environment

- `postShellHook` script unsets the SOURCE_DATE_EPOCH environment variable to allow pip to install wheels (pre-built binary packages). It also manually link the libraries needed by pandas and numpy, so they can work correctly.

## How to use

Run `make` to see the available commands.

