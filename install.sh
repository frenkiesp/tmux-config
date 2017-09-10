#!/bin/bash
if [ ! -d ~/.tmux/plugins/tpm ]; then
    echo 'Installing tpm...'
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
else
    echo 'Updating tpm...'
    cd ~/.tmux/plugins/tpm
    git pull
    cd - >/dev/null
fi
ln -fs ~/.tmux/tmux.conf ~/.tmux.conf
