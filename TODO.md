# NEXT

## hyprland

References:

<https://wiki.hyprland.org/Nix/Hyprland-on-NixOS/>
<https://www.youtube.com/watch?v=61wGzIv12Ds>

- [ ] Slowness at start:
    - [ ] Post on NixOS reddit my configuration and ask for help there
    - [ ] If nothing else works, try to install hyprland with another desktop or no one at all.
    - [x] Try merging this configuration with mine: <https://www.reddit.com/r/NixOS/comments/137j18j/comment/ju6h25k/?utm_name=web3xcss>


- [-] Install hyprland (based on the files at `/storage/vendors/dot_files/stephan-raabe`)
    - [ ] Configure workspaces on monitors
        - [ ] <https://wiki.hyprland.org/FAQ/#how-do-i-move-my-favorite-workspaces-to-a-new-monitor-when-i-plug-it-in>
        - [ ] <http://wiki.hyprland.org/FAQ/#how-do-i-export-envvars-for-hyprland>
        - [-] <http://wiki.hyprland.org/FAQ/#some-of-my-apps-take-a-really-long-time-to-open>
            - [-] I created the script to do that but it is still taking too long.
            - [ ] <https://wiki.hyprland.org/Useful-Utilities/Hyprland-desktop-portal/>

- [ ] theming gtk/qt: https://youtu.be/m_6eqpKrtxk

- [ ] hyprland + eww: https://github.com/Aylur/dotfiles (check the other videos on my "workflow" playlist to integrate eww with hyprland)

- [ ] Applications:
    - [ ] screen copy/annotation tool: <https://github.com/jtheoof/swappy>
    - [ ] screen recorders (video): <https://github.com/russelltg/wl-screenrec> or <https://github.com/ammen99/wf-recorder>
    - [ ] hyprland keys cheatsheet: <https://github.com/hyprland-community/Hyprkeys>
    - [ ] on screen keyboard: <https://github.com/jjsullivan5196/wvkbd>
    - [ ] clipboard history manager: <https://github.com/sentriz/cliphist>
    - [ ] notifications: <https://github.com/ErikReider/SwayNotificationCenter> or <https://github.com/emersion/mako>
    - [ ] flameshot: <https://plus.diolinux.com.br/t/flameshot-no-wayland/54469>
    - [ ] Scratchpads, smart monitor placement and other tweaks for hyprland: <https://github.com/hyprland-community/pyprland>
    - [ ] retrieve information about windows, workspaces and monitors in a running Hyprland instance. It also offers an event monitor, allowing you to write your own callback functions which execute in response to Hyprland events: <https://github.com/ulinja/hyprpy>
    - [ ] application launchers (like dmenu, rofi): <https://github.com/hyprland-community/awesome-hyprland#runners-menus-and-application-launchers>


## packages

- [ ] https://github.com/muesli/duf
- [ ] https://github.com/Byron/dua-cli
- [ ] `direnv` is an extension for your shell. It augments existing shells with a new feature that can load and unload environment variables depending on the current directory.
- [ ] `yq`: a lightweight and portable command-line YAML processor (`jq` para YAML)
- [x] starship
- [x] package wl-clipboard has the binaries: wl-copy and wl-paste.



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
    - [ ] com.visualstudio.code
    - [ ] io.github.arunsivaramanneo.GPUViewer
    - [ ] md.obsidian.Obsidian
    - [ ] net.giuspen.cherrytree
    - [ ] org.chromium.Chromium
    - [ ] org.flameshot.Flameshot
    - [ ] org.telegram.desktop
    - [ ] us.zoom.Zoom
    - [ ] com.github.flxzt.rnote - Rnote is an open-source vector-based drawing app for sketching, handwritten notes and to annotate documents and pictures. It is targeted at students, teachers and those who own a drawing tablet and provides features like Pdf and picture import and export, an infinite canvas and an adaptive UI for big and small screens.
    - [ ] gimp
    - [ ] inkscape
    - [ ] firefox (remove the one that is on configuration.nix before)
    - [ ] chromium



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
