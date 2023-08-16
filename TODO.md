# etc

- [-] create a nix-shell to create an environment similar to pyenv/virtualenv: `/home/tiago/nix-environments/python/sample`
    - [x] create and test
    - [x] finish documentation (inside `/home/tiago/nix-environments/python/sample/README.md)
    - [x] create a Makefile
    - [ ] move `/home/tiago/nix-environments` to my `dot_files` repository

- [-] enable ssh

- [ ] disable hibernation/suspend

- [x] See where on `/etc/nixos/configuration.nix` could I put this to my user, so the laptop does not freeze when I press ESC: `gsettings set org.gnome.desktop.input-sources xkb-options "['caps:none']"`

- [x] create ssh key

# flatpaks

gimp
inkscape
firefox (remove the one that is on configuration.nix before)
chromium
(see what else I have on cosmos)

# Wayland 

- [ ] Install hyprland: <https://www.youtube.com/watch?v=61wGzIv12Ds>

# After I finish 

On iac/nixos, add the following files from here: 

~/.bashrc
~/.npmrc (to install the npm packages on the local user instead of the OS filesystem - which is read-only on NixOS)

# nvim 

- [x] instalar as dependencias
- [x] instalar a partir do repo pde.nvim

