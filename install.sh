sudo rm -rf /usr/local/bin/node-v22.14.0-linux-x64
sudo rm -rf /usr/local/bin/go
sudo rm -rf /usr/local/bin/nvim-linux-x86_64
sudo rm -rf /usr/local/bin/zellij
sudo rm -rf ~/.config/nvim
sudo rm -rf ~/.config/zellij
sudo rm -rf /usr/local/bin/protoc

wget https://github.com/neovim/neovim/releases/download/v0.10.4/nvim-linux-x86_64.tar.gz -O nvim-linux-x86_64.tar.gz
wget https://github.com/zellij-org/zellij/releases/download/v0.41.2/zellij-x86_64-unknown-linux-musl.tar.gz -O zellij-x86_64-unknown-linux-musl.tar.gz
wget https://nodejs.org/download/release/v22.14.0/node-v22.14.0-linux-x64.tar.gz -O node-v22.14.0-linux-x64.tar.gz
wget https://go.dev/dl/go1.24.0.linux-amd64.tar.gz -O go1.24.0.linux-amd64.tar.gz
wget https://github.com/protocolbuffers/protobuf/releases/download/v30.0/protoc-30.0-linux-x86_64.zip -O protoc-30.0-linux-x86_64.zip

sudo tar xzf nvim-linux-x86_64.tar.gz -C /usr/local/bin
sudo tar xzf zellij-x86_64-unknown-linux-musl.tar.gz -C /usr/local/bin
sudo tar xzf node-v22.14.0-linux-x64.tar.gz -C /usr/local/bin
sudo tar xzf go1.24.0.linux-amd64.tar.gz -C /usr/local/bin
sudo unzip protoc-30.0-linux-x86_64.zip -d /usr/local/bin/protoc

mkdir -p ~/.config/nvim
mkdir -p ~/.config/zellij

git clone --depth 1 https://github.com/nvim-treesitter/nvim-treesitter ~/.config/nvim/pack/nvim/start/nvim-treesitter
git clone --depth 1 https://github.com/catppuccin/nvim.git ~/.config/nvim/pack/nvim/start/catppuccin
git clone --depth 1 https://github.com/neovim/nvim-lspconfig ~/.config/nvim/pack/nvim/start/nvim-lspconfig
git clone --depth 1 https://github.com/windwp/nvim-autopairs ~/.config/nvim/pack/nvim/start/nvim-autopairs
git clone --depth 1 https://github.com/hrsh7th/nvim-cmp.git ~/.config/nvim/pack/nvim/start/nvim-cmp
git clone --depth 1 https://github.com/hrsh7th/cmp-nvim-lsp.git ~/.config/nvim/pack/nvim/start/cmp-nvim-lsp

ln -sf ~/dotfiles/bash/.bashrc ~/.bashrc
ln -sf ~/dotfiles/nvim/.config/nvim/init.lua ~/.config/nvim/init.lua
ln -sf ~/dotfiles/zellij/.config/zellij/config.kdl ~/.config/zellij/config.kdl

echo "Installation completed!"
