#!/usr/bin/env bash

TMUXP_SESSIONS_FILES="/storage/src/nix/home/tmuxp/fleeting-notes.yml /storage/src/nix/home/tmuxp/reminders.yml /storage/src/nix/home/tmuxp/tasks.yml"

# alacritty --title scratchpad_notes_tasks_n_reminders -e /bin/bash -c "tmuxp load '$TMUXP_SESSIONS_FILES'" --hold &
# urxvt --hold --title scratchpad_notes_tasks_n_reminders -e /bin/bash -c 'tmuxp load /storage/src/devops/tmuxp/notes-and-reminders.yml' &

# KITTY_DISABLE_WAYLAND=1 kitty --class scratchpad_notes_tasks_n_reminders --hold /run/current-system/sw/bin/bash -c "tmuxp load $TMUXP_SESSIONS_FILES" &

KITTY_DISABLE_WAYLAND=1 kitty --hold /run/current-system/sw/bin/bash -c "echo 'You can run e.g. tmuxp-notes_tasks_n_reminders.sh'"
