# NEXT

## general

- [ ] add my ssh key to the following machines (they must me on the ugreen vault) :
    - [ ] tiago@cosmos
    - [ ] tds@cosmos
    - [ ] engineering
    - [ ] linode - xplab
    - [ ] linode - tiagoprnl.me
    - [ ] linode - tiago@lowerdecks

- [ ] script to rsync copy the wasabi memos sqlite db backup on XTORAGE-2GB to DBs on the ugreen NVMe

- [ ] Create folder secrets on the ugreen NVMe and copy to there:
    - [ ] secrets/gnupg
    - [ ] secrets/ssh-keys (all machines)
    - [ ] secrets/ssh-configs (tds/tiago@cosmos)
    - [ ] secrets/pass
    - [ ] thunderbird (`~/.var/app/org.mozilla.Thunderbird`) - rsync this one

## hyprland

References:

<https://wiki.hyprland.org/Nix/Hyprland-on-NixOS/>
<https://www.youtube.com/watch?v=61wGzIv12Ds>

- [-] Finish configuration
    - [ ] vimjoyer keyboard remapping tools (talvez eu possa usar para o double shift = CAPSLOCK no teclado da system76):
        <https://youtu.be/lyxScRCe6bE?si=BGdZyHETl3tL9ctW>
        <https://youtu.be/UPWkQ3LUDOU?si=UGE9WjCyB68XRzQp>
    - [ ] alternative to xdotool: wtype
    - [ ] Configure workspaces on monitors
        - [ ] Create a named "share" workspace when sharing my screen
        - [ ] <https://wiki.hyprland.org/FAQ/#how-do-i-move-my-favorite-workspaces-to-a-new-monitor-when-i-plug-it-in>
        - [ ] <http://wiki.hyprland.org/FAQ/#how-do-i-export-envvars-for-hyprland>
    - [ ] hyprland keys cheatsheet: <https://github.com/hyprland-community/Hyprkeys>


## docker

Install from this instructions: <https://nixos.wiki/wiki/Docker>

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

- [ ] wallpapers: <https://wiki.hyprland.org/Useful-Utilities/Wallpapers/>

- [ ] retrieve information about windows, workspaces and monitors in a running Hyprland instance. It also offers an event monitor, allowing you to write your own callback functions which execute in response to Hyprland events: <https://github.com/ulinja/hyprpy>

- [ ] theming gtk/qt (requires home manager): <https://youtu.be/m_6eqpKrtxk>

- [ ] hyprland + eww: https://github.com/Aylur/dotfiles (check the other videos on my "workflow" playlist to integrate eww with hyprland)

- [ ] on screen keyboard: <https://github.com/jjsullivan5196/wvkbd>

