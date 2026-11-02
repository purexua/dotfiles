# Homebrew
eval "$(/opt/homebrew/bin/brew shellenv zsh)"

# PATH
typeset -U path

# Bun
export BUN_INSTALL="$HOME/.bun"
path=("$BUN_INSTALL/bin" $path)

# Docker
path=("$HOME/.docker/bin" $path)

# User binaries
path=("$HOME/.local/bin" $path)

# Rust
path=("$HOME/.cargo/bin" $path)

# Go
path=("$(go env GOPATH)/bin" $path)