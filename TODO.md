# NEXT

## hyprland

References:

<https://wiki.hyprland.org/Nix/Hyprland-on-NixOS/>
<https://www.youtube.com/watch?v=61wGzIv12Ds>

- [-] Applications:
    - [-] clipboard history manager: <https://github.com/sentriz/cliphist>
        - [-] Error "Failed to run script: example-script" when copying contents to the clipboard
            - [x] remove libnotify from configuration.nix
            - [ ] test swaync and swaync-client . If both work, add them to hyprland.conf exec to start when logging in.

    - [ ] Scratchpads, smart monitor placement and other tweaks for hyprland: <https://github.com/hyprland-community/pyprland>
    - [ ] hyprland keys cheatsheet: <https://github.com/hyprland-community/Hyprkeys>
    - [ ] notifications: <https://github.com/ErikReider/SwayNotificationCenter> or <https://github.com/emersion/mako>
    - [ ] retrieve information about windows, workspaces and monitors in a running Hyprland instance. It also offers an event monitor, allowing you to write your own callback functions which execute in response to Hyprland events: <https://github.com/ulinja/hyprpy>
    - [ ] application launchers (like dmenu, rofi): <https://github.com/hyprland-community/awesome-hyprland#runners-menus-and-application-launchers>
    - [x] screen copy/annotation tool: <https://github.com/jtheoof/swappy>
    - [x] screen recorders (video): <https://github.com/russelltg/wl-screenrec> or <https://github.com/ammen99/wf-recorder>

- [-] Finish configuration
    - [ ] Configure workspaces on monitors
        - [ ] <https://wiki.hyprland.org/FAQ/#how-do-i-move-my-favorite-workspaces-to-a-new-monitor-when-i-plug-it-in>
        - [ ] <http://wiki.hyprland.org/FAQ/#how-do-i-export-envvars-for-hyprland>


## flatpaks

(see ChatGPT on my chat "Install Flatpaks on NixOS")

- [ ] How to install packages:
    ``` bash
    flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
    flatpak update
    flatpak search bustle
    flatpak install flathub org.freedesktop.Bustle
    flatpak run org.freedesktop.Bustle
    ```
- [ ] Install the packages below:
    - [ ] ch.protonmail.protonmail-bridge
    - [ ] com.bitwarden.desktop
    - [ ] com.github.tchx84.Flatseal
    - [ ] com.obsproject.Studio
    - [ ] com.slack.Slack
    - [ ] com.spotify.Client
    - [ ] io.github.arunsivaramanneo.GPUViewer
    - [ ] md.obsidian.Obsidian
    - [ ] org.chromium.Chromium
    - [ ] org.telegram.desktop
    - [ ] us.zoom.Zoom
    - [ ] com.github.flxzt.rnote - Rnote is an open-source vector-based drawing app for sketching, handwritten notes and to annotate documents and pictures. It is targeted at students, teachers and those who own a drawing tablet and provides features like Pdf and picture import and export, an infinite canvas and an adaptive UI for big and small screens.
    - [ ] gimp
    - [ ] inkscape
    - [ ] firefox (remove the one that is on configuration.nix before)


## docker

Install from this instrustions: <https://nixos.wiki/wiki/Docker>

## nvim

- [ ] nvim is deleting the first line when saving files (bash scripts, markdown files, etc). Probably related to missing lsp components (null-ls and bash-language-server) or recent nvim builds.

- [ ] Install this lsp: <https://github.com/nix-community/rnix-lsp>


## python setup

- [ ] test the python sample nix-environment on this repo on the VM.
    - [ ] Implement some enhancements from vimjoyer last video:
        - <https://github.com/vimjoyer/devshells-video> (the second file does not use a flake, and supports environment variables)
        - Where to get old hash versions of packages (e.g. python): <https://www.nixhub.io/packages/python>

- [ ] Test this alternative to nix-shell for python: <https://www.jetpack.io/devbox/docs/quickstart/>. Interesting links:
    - <https://www.jetpack.io/devbox/docs/configuration/>
    - <https://www.jetpack.io/devbox/docs/guides/scripts/>
    - <https://github.com/jetpack-io/devbox/tree/main/examples/development/python>
    - Where to get old hash versions of packages (e.g. python): <https://www.nixhub.io/packages/python>


## Low priority enhancements

- [ ] theming gtk/qt (requires home manager): <https://youtu.be/m_6eqpKrtxk>

- [ ] hyprland + eww: https://github.com/Aylur/dotfiles (check the other videos on my "workflow" playlist to integrate eww with hyprland)

- [ ] on screen keyboard: <https://github.com/jjsullivan5196/wvkbd>

