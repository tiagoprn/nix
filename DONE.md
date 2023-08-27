
- [x] `configuration.nix`: `hyprland` and `flatpak` remove from the packages list and install from the pattern:
    ``` bash
    services.flatpak.enable = true;
    services.hyprland.enable = true;
    ```

- [-] Install hyprland (based on the files at `/storage/vendors/dot_files/stephan-raabe`)
    - [x] Bootstrap with initial vimjoyer configuration: <https://www.youtube.com/watch?v=61wGzIv12Ds>
    - [x] Create `/home/tiago/.config/hypr`
    - [x] Copy `/home/tiago/.config/hypr` to `/storage/src/nix`
    - [x] Configure font size on kitty to be smaller
    - [x] Configure waybar
        - [x] make it show the current workspace
        - [x] Change current window module style
        - [x] Change to numbered workspaces

- [x] Install neovim:
    - [x] Include `$HOME/local/bin` on `$PATH` at `~/.bashrc`
    - [x] Compile neovim:
        - [x] git pull on `/storage/src/pde.nvim`
        - [x] compile with: `/storage/src/pde.nvim/scripts/sync-neovim.sh --source-path $HOME/src/nvim --binary-path $HOME/local/bin/nvim `

- [x] Update `configuration.nix` on the VM
    - [x] Get `/etc/nixos/configuration.nix` from the VM (nixos) and compare with this repo's one.
    - [x] Merge the differences between them and then rebuild nixos.

- [x] move the original generated ssh keys

- [x] enable ssh

- [x] create a nix-shell to create an environment similar to pyenv/virtualenv: `/home/tiago/nix-environments/python/sample`
    - [x] create and test
    - [x] finish documentation (inside `/home/tiago/nix-environments/python/sample/README.md)
    - [x] create a Makefile
    - [x] move `/home/tiago/nix-environments` to my `dot_files` repository

- [x] See where on `/etc/nixos/configuration.nix` could I put this to my user, so the laptop does not freeze when I press ESC: `gsettings set org.gnome.desktop.input-sources xkb-options "['caps:none']"`

- [x] create ssh key
