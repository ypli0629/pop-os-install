#!/bin/bash

# brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' | sudo tee /etc/profile.d/brew.sh > /dev/null
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

brew install gcc go rustup node pnpm yarn neovim bear
