# NEXT

## LG Gram

- [ ] Try merging this configuration with mine: <https://www.reddit.com/r/NixOS/comments/137j18j/comment/ju6h25k/?utm_name=web3xcss>

- [ ] Create a backup of the following folders into the 500GB external SSD drive (formatted as EXT4) using local rsync-time-backup:
    - [ ] /etc
    - [ ] /home/tiago (make sure '.ssh', '.config' and 'scripts' were copied after finishing)
    - [ ] /storage

- [ ] Reinstall NixOS

- [ ] Copy the relevant files from the backup above to the new setup


- [ ] nvim is deleting the first line when saving files (bash scripts, markdown files, etc). Probably related to missing lsp components (null-ls and bash-language-server)

- [-] Install hyprland (based on the files at `/storage/vendors/dot_files/stephan-raabe`)
    - [ ] Configure workspaces on monitors
        - [ ] <https://wiki.hyprland.org/FAQ/#how-do-i-move-my-favorite-workspaces-to-a-new-monitor-when-i-plug-it-in>
        - [ ] <http://wiki.hyprland.org/FAQ/#how-do-i-export-envvars-for-hyprland>
        - [-] <http://wiki.hyprland.org/FAQ/#some-of-my-apps-take-a-really-long-time-to-open>
            - [-] I created the script to do that but it is still taking too long.
            - [ ] <https://wiki.hyprland.org/Useful-Utilities/Hyprland-desktop-portal/>

- [ ] flatpaks
    (see ChatGPT on my chat "Install Flatpaks on NixOS")
    - [ ] gimp
    - [ ] inkscape
    - [ ] firefox (remove the one that is on configuration.nix before)
    - [ ] chromium
    (see what else I have on cosmos)
        ``` bash
        flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
        flatpak update
        flatpak search bustle
        flatpak install flathub org.freedesktop.Bustle
        flatpak run org.freedesktop.Bustle
        ```


    - [ ] disable hibernation/suspend

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
