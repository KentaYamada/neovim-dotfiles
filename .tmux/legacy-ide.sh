#!/usr/bin/env bash
#
# 電話商談IDE automation
#
# Project root directory
PROJECT_ROOT_DIR=~/projects/bellface-legacy
# tmux session name
SESSION_NAME="legacy"
# tmux window name
WIDOW_NAME="legacy-dev"
# run lefacy command
START_LEGACY_CMD="start-legacy"
# run admin command
START_ADMIN_CMD="start-admin"
# editor
EDITOR="nvim"

# Move to project root directory
cd ${PROJECT_ROOT_DIR}

# Create session, window & run neovim
tmux new-session -d -s ${SESSION_NAME} -n ${WIDOW_NAME} ${EDITOR}

# Split panes & run command
tmux split-window -v
tmux split-window -h
tmux split-window -h

# Resize panes
tmux resize-pane -D 10
tmux resize-pane -R 5

# Move to editor pane
tmux select-pane -t 0

# Attach session (force 256colors)
tmux -2 attach-session -t ${SESSION_NAME}
