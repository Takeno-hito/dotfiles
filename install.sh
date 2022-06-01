#!/bin/zsh

set -eu

cd "$HOME/dotfiles/dotfiles"

find . -type d | cut -b 3- | xargs -I '{}' mkdir -p "$HOME/{}"
find . -type f | cut -b 3- | xargs -I '{}' ln -snfv "$HOME/dotfiles/dotfiles/{}" "$HOME/{}"

find . -type d | cut -b 3- | xargs -I '{}' chmod 755 "$HOME/{}"
find . -type f | cut -b 3- | xargs -I '{}' chmod 755 "$HOME/{}"

chmod -R 700 "$HOME/dotfiles/"

echo "Dotfiles install success"
