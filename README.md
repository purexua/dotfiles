# dotfiles

个人开发环境配置。

## 我的 macOS 配置

### 系统设置

```sh
# Repeat keys instead of showing the accent menu when a key is held down
defaults write -g ApplePressAndHoldEnabled -bool false

# Reduce the delay before key repeat starts and increase its speed
defaults write -g InitialKeyRepeat -int 10
defaults write -g KeyRepeat -int 1

# Disable natural scrolling
defaults write -g com.apple.swipescrolldirection -bool false

# Jump to the clicked position in the scroll bar
defaults write -g AppleScrollerPagingBehavior -bool true

# Disable automatic dash, period, and quote substitution
defaults write -g NSAutomaticDashSubstitutionEnabled -bool false
defaults write -g NSAutomaticPeriodSubstitutionEnabled -bool false
defaults write -g NSAutomaticQuoteSubstitutionEnabled -bool false

# Disable automatic capitalization
defaults write -g NSAutomaticCapitalizationEnabled -bool false
```

### Xcode Command Line Tools

设置完后，第一件事是安装 Xcode Command Line Tools：

```sh
xcode-select --install
```

安装后，`git`、`clang` 等命令行工具就可以使用了。

以防万一，记录重新安装的方法：

```sh
sudo rm -rf /Library/Developer/CommandLineTools
xcode-select --install
```

### Homebrew

安装 Homebrew：

```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

安装完成后，将 Homebrew 添加到环境变量：

```sh
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"
```

## 安装常用软件

### CLI

```sh
# Search files by content
brew install ripgrep

# Find files and directories
brew install fd

# Fuzzy finder
brew install fzf

# Display directory trees
brew install tree

# List files with icons and Git status
brew install eza

# View files with syntax highlighting
brew install bat

# Process JSON data from the command line
brew install jq

# Explore JSON data interactively
brew install jless

# Work with Protocol Buffers
brew install buf

# Embedded SQL database and command-line tool
brew install sqlite

# Terminal multiplexer
brew install tmux

# Download files over HTTP, HTTPS, and FTP
brew install wget

# Scan networks and inspect open ports
brew install nmap

# Static site generator
brew install hugo

# Full-featured multimedia framework
brew install ffmpeg-full

# Full-featured image processing library
brew install imagemagick-full
```

### GUI

```sh
# GPU-accelerated terminal emulator
brew install --cask kitty

# Clipboard manager
brew install --cask maccy

# API development and testing platform
brew install --cask postman

# Music streaming application
brew install --cask spotify
```

### Fonts

```sh
# JetBrains Mono
brew install --cask font-jetbrains-mono

# Maple Mono NF CN
brew install --cask font-maple-mono-nf-cn

# LXGW WenKai
brew install --cask font-lxgw-wenkai

# Symbols Only Nerd Font
brew install --cask font-symbols-only-nerd-font
```

### Database / Service

```sh
# Metrics visualization and monitoring platform
brew install grafana

# In-memory data store
brew install redis

# PostgreSQL 18 database server
brew install postgresql@18
```

## Programming Language

### Go

参考 [Go 官方安装指南](https://go.dev/doc/install) 安装。

### Rust

```sh
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```
