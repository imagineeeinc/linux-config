# Workflow
cp ./config.lua ~/.config/lvim/config.lua
cp ./tmux.conf ~/.config/tmux/tmux.conf
cp ./tilde.conf  ~/.config/tilde/config
# Shell
cp ./.bashrc ~/.bashrc
cp ./.zshrc ~/.zshrc

# themes
mkdir -p ~/themes
cd ~/themes
wget https://raw.githubusercontent.com/moarram/headline/main/headline.zsh-theme
