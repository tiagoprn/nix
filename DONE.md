
- [x] https://github.com/muesli/duf
- [x] https://github.com/Byron/dua-cli
- [x] `direnv` load and unload environment variables depending on the current directory.
- [x] `yq`: a lightweight and portable command-line YAML processor ("jq" for YAML files)

- [x] Test the desktop portal is working with firefox-wayland - it is, I validated it opening the file choose to select where to download the NixOS ISO from <https://nixos.org/download.html#nixos-iso>.

- [x] <http://wiki.hyprland.org/FAQ/#some-of-my-apps-take-a-really-long-time-to-open>
    - [x] I created the script to do that but it is still taking too long.
    - [x] <https://wiki.hyprland.org/Useful-Utilities/Hyprland-desktop-portal/>

- [x] Slowness at start:
    - [x] Post on NixOS reddit my configuration and ask for help there
    - [x] If nothing else works, try to install hyprland with another desktop or no one at all.
    - [x] Try merging this configuration with mine: <https://www.reddit.com/r/NixOS/comments/137j18j/comment/ju6h25k/?utm_name=web3xcss>

- [x] Create a backup of the following folders into the 500GB external SSD drive (formatted as EXT4) using local rsync-time-backup:
    - [x] /etc
    - [x] /home/tiago (make sure '.ssh', '.config' and 'scripts' were copied after finishing)
    - [x] /storage

- [x] Reinstall NixOS

- [x] Copy the relevant files from the backup above to the new setup

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
