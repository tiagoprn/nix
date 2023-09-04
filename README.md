# ABOUT

This repo contains NixOS files that I used to setup my first experiment using that OS on a spare laptop.


# POST-INSTALL (do right after the installation)

- Add unstable channel:

NOTE: this need to be done as root for the channel to make it accessible system-wide on configuration.nix:

 sudo nix-channel --add https://nixos.org/channels/nixos-unstable nixos-unstable

 sudo nix-channel --update nixos-unstable

# basic nixos administration

cd /etc/nixos

sudoedit configuration.nix

sudo nixos-rebuild switch  # applies the updated configuration and switch to it

nix-shell -p package-name  # install and run a package

# flakes

## notes

- flakes are experimental (but useful on a daily basis)

- they are used to allow to:
    - pin versions to packages, to allow full reproducibility
    - upgrade packages

## commands

- Create a flake:

mkdir my_flake && nix flake init

- Generates the lock file and run the shell:

nix develop

- Update the dependencies:

nix flake update

# Particularities of NixOS:

- How to install packages on npm:
Create `~/.npmrc` and insert this line into it: `prefix=~/.npm-packages`
That enables installing the npm packages on the local user instead of the OS filesystem - which is read-only on NixOS

- How to get sha256 hashes for the repo versions:
        `nix-prefetch-url --unpack https://github.com/pyenv/pyenv/archive/refs/tags/v2.3.23.tar.gz`
        `nix-prefetch-url --unpack https://github.com/bats-core/bats-core/archive/refs/tags/v1.10.0.tar.gz`

- How to use manage python virtual environments using nix instead of pyenv (I couldn't get pyenv to work):
<https://nixos.org/manual/nixpkgs/stable/#python>, section "How to consume Python modules using pip in a virtual environment like I am used to on other Operating Systems?"

- Clear Nix Build Cache for the Specific Environment: If you really want to clear everything, including the built derivations for that particular shell, you would have to identify the exact paths in the Nix store and remove them. This is generally not recommended, as it requires administrative privileges and can affect other derivations. If you do want to do this, using the `nix-collect-garbage` command is usually the safest way to clear unused derivations.


# Video streaming on Zoom using wf-recorder and ffmpeg (to circumvent bugs with wayland)

That captures the screen with audio, including the microphone:

- 1) Ensure v4l2loopback module is loaded with correct options

```bash

sudo modprobe v4l2loopback exclusive_caps=1 card_label=WfRecorder

sudo modinfo v4l2loopback

```

- 2) Create a named pipe:

```bash

rm /tmp/fifo.mkv ; mkfifo /tmp/fifo.mkv

```

- 3) Start wf-recorder and direct its output to the named pipe:

```bash

wf-recorder -f /tmp/fifo.mkv -x yuv420p -o eDP-1 --audio  # the full monitor

wf-recorder -g "$(slurp)" -f /tmp/fifo.mkv --audio  # part of the screen


```

- 4) Use ffmpeg to read from the named pipe and output to the virtual device:

```bash

ffmpeg -re -i /tmp/fifo.mkv -pix_fmt yuv420p -c:v rawvideo -c:a pcm_s16le -f v4l2 /dev/video0

```

