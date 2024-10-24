#!/bin/bash

# brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo >> /home/ypli/.zshrc 
echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> /home/ypli/.zshrc
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

brew install gcc go rustup node pnpm yarn neovim bear