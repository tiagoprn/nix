# NEXT

## VM

- [-] nvim (nix-prime VM on holodeck):
    - [x] compile on $HOME/local/bin
    - [ ] git pull on `/storage/src/nix`
        - [ ] copy the .* files at `home` here to the user's $HOME
    - [ ] clone and config from my repo pde.nvim

- [ ] test the python sample nix-environment on this repo on the VM.

## SSD

- [ ] Reinstall neovim:
    - [ ] Remove /storage/vendor/neovim and ~/neovim-install
    - [ ] Include `$HOME/local/bin` on `$PATH` at `~/.bashrc`
    - [ ] Compile neovim:
        - [ ] git pull on `/storage/src/pde.nvim`
        - [ ] compile with: `/storage/src/pde.nvim/scripts/sync-neovim.sh --source-path $HOME/src/nvim --binary-path $HOME/local/bin/nvim `

- [ ] Install hyprland

- [ ] flatpaks (see ChatGPT on my chat "Install Flatpaks on NixOS")
    - [ ] gimp
    - [ ] inkscape
    - [ ] firefox (remove the one that is on configuration.nix before)
    - [ ] chromium
    (see what else I have on cosmos)

    - [ ] disable hibernation/suspend
