
- [x] Applications:
    - [x] zoom
        - [x] try this solution from here <https://www.reddit.com/r/wayland/comments/lcctwo/screen_sharing_on_wayland/>:
            - [x] compile the module for NixOS (see my talk "Load v4l2loopback on NixOS" with ChatGPT)
            - [-] share my screen as a virtual webcam. That should work with any software that can switch cameras, even if their screen share feature is broken.
            ``` bash

            sudo modinfo v4l2loopback

            sudo modprobe v4l2loopback exclusive_caps=1 card_label=WfRecorder

            v4l2-ctl --list-devices  # that is to discover which device is the one from v4l2 (Dummy video device)

            # TODO: continue from here
            # wf-recorder --muxer=v4l2 --codec=rawvideo --file=/dev/video4 -x yuv420p -o eDP-1
            wf-recorder -f - -x yuv420p -o eDP-1 | ffmpeg -i - -f v4l2 /dev/video0

            ```
        - [x] If the solution above does not work, I will have to logoff from hyprland and logon on bspwm with xorg to use zoom and be able to share my screen - the good part is that my tmux sessions are preserved when doing logoff from hyprland and login into minimal bspwm (copy the configuration and bindings for a minimal working bspwm from my dot_files repo.)
                - [x] see how to hide obs window on that case


## flatpaks

- [x] How to install packages:
    ``` bash
    flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
    flatpak update
    flatpak search bustle
    flatpak install flathub org.freedesktop.Bustle
    flatpak run org.freedesktop.Bustle
    ```
- [x] Install the packages below:
    - [x] com.bitwarden.desktop
    - [x] ch.protonmail.protonmail-bridge
    - [x] com.github.tchx84.Flatseal
    - [x] com.obsproject.Studio
    - [-] com.slack.Slack
    - [x] com.spotify.Client
    - [x] io.github.arunsivaramanneo.GPUViewer
    - [x] md.obsidian.Obsidian
    - [x] org.chromium.Chromium
    - [x] org.telegram.desktop
    - [x] us.zoom.Zoom
    - [x] com.github.flxzt.rnote - Rnote is an open-source vector-based drawing app for sketching, handwritten notes and to annotate documents and pictures. It is targeted at students, teachers and those who own a drawing tablet and provides features like Pdf and picture import and export, an infinite canvas and an adaptive UI for big and small screens.
    - [x] gimp
    - [x] inkscape

- [x] Scratchpads, smart monitor placement and other tweaks for hyprland: <https://github.com/hyprland-community/pyprland>
    - [x] configure my X11 scratchpad
        - [x] alacritty or wezterm instead of kitty (do NOT set window class, since I will use it only for the scratchpad)
    - [x] test the other commands:
        - [x] <https://github.com/hyprland-community/pyprland/wiki/Getting-started#configuring>
        - [x] <https://github.com/hyprland-community/pyprland/wiki/Plugins>

- [x] screen copy/annotation tool: <https://github.com/jtheoof/swappy>
- [x] screen recorders (video): <https://github.com/russelltg/wl-screenrec> or <https://github.com/ammen99/wf-recorder>

- [x] clipboard history manager: <https://github.com/sentriz/cliphist>
    - [x] Error "Failed to run script: example-script" when copying contents to the clipboard
        - [x] remove libnotify from configuration.nix
        - [x] test swaync and swaync-client . If both work, add them to hyprland.conf exec to start when logging in.

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
