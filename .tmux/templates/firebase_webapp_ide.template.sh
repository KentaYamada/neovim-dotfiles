#!/usr/bin/env bash
#
# firebase webapp development automation template script
#
# Features
# Run development environment automation
# 1. run npm local server
# 2. run firebase local emulator
# 3. run neovim editor
#
# Requirements
# - tmux
# - neovim (or vim)
# - firebase web SDK
# - firebase local emulator
# - npm project (ex: vue app project)
#
# Window Layout
# __________________________________________
# |                                        |
# |                                        |
# |                nvim                    |
# |                                        |
# |________________________________________|
# |                                        |
# |    prompt   |  npm  |  local emulator  |
# |________________________________________|
#

# Project root directory
PROJECT_ROOT_DIR=/path/to/foo/bar
# tmux session name
SESSION_NAME="foo development"
# tmux window name
WIDOW_NAME="dev"
# npm local server command
NPM_SERVE_CMD="npm run serve"
# firebase local emulator command
FIREBASE_EMULATOR_CMD="firebase emulators:start"
# editor
EDITOR="nvim"

# Move to project root directory
cd ${PROJECT_ROOT_DIR}

# Create session, window & run neovim
tmux new-session -d -s ${SESSION_NAME} -n ${WIDOW_NAME} ${EDITOR}

# Split panes & run command
tmux split-window -v
tmux split-window -h ${NPM_SERVE_CMD}
tmux split-window -h ${FIREBASE_EMULATOR_CMD}

# Resize panes
tmux resize-pane -D 10
tmux resize-pane -R 5

# Move to editor pane
tmux select-pane -t 0

# Attach session (force 256colors)
tmux -2 attach-session -t ${SESSION_NAME}
