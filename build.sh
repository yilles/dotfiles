wget https://github.com/neovim/neovim/releases/download/nightly/nvim-linux64.tar.gz -O nvim-linux64.tar.gz
sudo tar xzf nvim-linux64.tar.gz -C /opt
sudo ln -sf /opt/nvim-linux64/bin/nvim /usr/local/bin/nvim

wget https://github.com/zellij-org/zellij/releases/download/v0.41.2/zellij-x86_64-unknown-linux-musl.tar.gz -O zellij-x86_64-unknown-linux-musl.tar.gz
sudo tar xzf zellij-x86_64-unknown-linux-musl.tar.gz -C /opt
sudo ln -sf /opt/zellij /usr/local/bin/zellij

ln -sf ~/dotfiles/nvim/.config/nvim/init.vim ~/.config/nvim/init.vim
ln -sf ~/dotfiles/zellij/.config/zellij/config.kdl ~/.config/zellij/config.kdl
ln -sf ~/dotfiles/zellij/.config/zellij/config.kdl.bak ~/.config/zellij/config.kdl.bak
git clone --depth 1 https://github.com/sheerun/vim-polyglot ~/.config/nvim/pack/plugins/start/vim-polyglot

ln -sf ~/dotfiles/bash/.bashrc ~/.bashrc
