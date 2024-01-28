alias cls="clear"
alias ll="ls -alF"
alias home="cd ~"
alias rain="rusty-rain"
alias lss="exa --icons -lh --tree -L=1 -GF --no-permissions --no-user --git"
alias lsr="exa --icons -lh --tree --no-permissions --no-user --git"
alias laz="lazygit"
alias pd="proot-distro"

export PATH="~/.local/bin:~/.cargo/bin:~/go/bin:$PATH"
export PATH="~/.detaspace/bin:$PATH"
# Deno
export DENO_INSTALL="~/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"
# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

export EDITOR="lvim"
export NDK=~/android-ndk-r26b-aarch64

eval "$(zoxide init bash)"

#./duckdns/duck.sh
