#!/usr/bin/env bash

# KITTY_DISABLE_WAYLAND=1 kitty --class scratchpad_notes_tasks_n_reminders --hold /run/current-system/sw/bin/bash -c "tmuxp load $TMUXP_SESSIONS_FILES" &
KITTY_DISABLE_WAYLAND=1 kitty --hold /run/current-system/sw/bin/bash -c "echo 'You can run e.g. tmuxp-notes_tasks_n_reminders.sh'"
