#!/usr/bin/env bash

systemctl --user stop xdg-desktop-portal-gtk.service \
    && systemctl --user stop xdg-desktop-portal-hyprland.service \
    && systemctl --user start xdg-desktop-portal-gtk.service \
    && systemctl --user start xdg-desktop-portal-hyprland.service
