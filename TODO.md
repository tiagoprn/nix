# NEXT

## VM

- [-] nvim (nix-prime VM on holodeck):
    - [x] compile on $HOME/local/bin
    - [ ] git pull on `/storage/src/nix`
        - [ ] copy the .* files at `home` here to the user's $HOME
    - [ ] clone and config from my repo pde.nvim

- [ ] test the python sample nix-environment on this repo on the VM.
    - [ ] Implement some enhancements from vimjoyer last video:
        - <https://github.com/vimjoyer/devshells-video> (the second file does not use a flake, and supports environment variables)
        - Where to get old hash versions of packages (e.g. python): <https://www.nixhub.io/packages/python>

- [ ] Testar essa alternativa ao nix-shell para python: <https://www.jetpack.io/devbox/docs/quickstart/>. Interesting links:
    - <https://www.jetpack.io/devbox/docs/configuration/>
    - <https://www.jetpack.io/devbox/docs/guides/scripts/>
    - <https://github.com/jetpack-io/devbox/tree/main/examples/development/python>
    - Where to get old hash versions of packages (e.g. python): <https://www.nixhub.io/packages/python>

## SSD

- [ ] Reinstall neovim:
    - [ ] Remove /storage/vendor/neovim and ~/neovim-install
    - [ ] Include `$HOME/local/bin` on `$PATH` at `~/.bashrc`
    - [ ] Compile neovim:
        - [ ] git pull on `/storage/src/pde.nvim`
        - [ ] compile with: `/storage/src/pde.nvim/scripts/sync-neovim.sh --source-path $HOME/src/nvim --binary-path $HOME/local/bin/nvim `

- [-] Install hyprland
    - [x] Bootstrap with initial vimjoyer configuration: <https://www.youtube.com/watch?v=61wGzIv12Ds>
    - [x] Create `/home/tiago/.config/hypr`
    - [x] Copy `/home/tiago/.config/hypr` to `/storage/src/nix`
    - [ ] Configure workspaces on monitors
        - [ ] <https://wiki.hyprland.org/FAQ/#how-do-i-move-my-favorite-workspaces-to-a-new-monitor-when-i-plug-it-in>
        - [ ] <http://wiki.hyprland.org/FAQ/#how-do-i-export-envvars-for-hyprland>
        - [ ] <http://wiki.hyprland.org/FAQ/#some-of-my-apps-take-a-really-long-time-to-open>
    - [ ] Configure font size on kitty to be smaller
    - [ ] Configure waybar

- [ ] flatpaks (see ChatGPT on my chat "Install Flatpaks on NixOS")
    - [ ] gimp
    - [ ] inkscape
    - [ ] firefox (remove the one that is on configuration.nix before)
    - [ ] chromium
    (see what else I have on cosmos)

    - [ ] disable hibernation/suspend
