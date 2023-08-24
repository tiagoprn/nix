#!/usr/bin/env bash

systemctl --user stop xdg-desktop-portal-gtk.service \
    && systemctl --user stop xdg-desktop-portal-hyprland.service \
    && systemctl --user stop xdg-desktop-portal-wlr.service \
    && dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP \
    && systemctl --user start xdg-desktop-portal-gtk.service \
    && systemctl --user start xdg-desktop-portal-hyprland.service \
    && systemctl --user start xdg-desktop-portal-wlr.service
