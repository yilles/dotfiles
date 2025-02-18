wget https://github.com/neovim/neovim/releases/download/v0.10.4/nvim-linux-x86_64.tar.gz -O nvim-linux-x86_64.tar.gz
sudo tar xzf nvim-linux-x86_64.tar.gz -C /usr/local/bin

wget https://github.com/zellij-org/zellij/releases/download/v0.41.2/zellij-x86_64-unknown-linux-musl.tar.gz -O zellij-x86_64-unknown-linux-musl.tar.gz
sudo tar xzf zellij-x86_64-unknown-linux-musl.tar.gz -C /usr/local/bin

wget https://nodejs.org/download/release/v22.14.0/node-v22.14.0-linux-x64.tar.gz -O node-v22.14.0-linux-x64.tar.gz
sudo tar xzf node-v22.14.0-linux-x64.tar.gz -C /usr/local/bin

wget https://go.dev/dl/go1.24.0.linux-amd64.tar.gz -O go1.24.0.linux-amd64.tar.gz
sudo tar xzf go1.24.0.linux-amd64.tar.gz -C /usr/local/bin

ln -sf ~/dotfiles/nvim/.config/nvim/init.lua ~/.config/nvim/init.lua
git clone --depth 1 https://github.com/sheerun/vim-polyglot ~/.config/nvim/pack/plugins/start/vim-polyglot
git clone --depth 1 https://github.com/neovim/nvim-lspconfig ~/.config/nvim/pack/nvim/start/nvim-lspconfig

ln -sf ~/dotfiles/zellij/.config/zellij/config.kdl ~/.config/zellij/config.kdl
ln -sf ~/dotfiles/zellij/.config/zellij/config.kdl.bak ~/.config/zellij/config.kdl.bak

ln -sf ~/dotfiles/bash/.bashrc ~/.bashrc
