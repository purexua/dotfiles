# dotfiles

个人开发环境配置。

## macOS 配置

### 系统设置

```sh
# Disable the press-and-hold accent menu
defaults write -g ApplePressAndHoldEnabled -bool false

# Reduce the delay before key repeat starts and increase its speed
defaults write -g InitialKeyRepeat -int 10
defaults write -g KeyRepeat -int 1

# Disable natural scrolling
defaults write -g com.apple.swipescrolldirection -bool false

# Jump to the clicked position when paging in a scroll bar
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

仅在需要重新安装 Xcode Command Line Tools 时，删除现有安装目录并重新运行安装程序：

```sh
sudo rm -rf /Library/Developer/CommandLineTools
xcode-select --install
```

### Homebrew

安装 Homebrew：

```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

安装完成后，将 Homebrew 添加到环境变量。以下路径适用于 Apple Silicon；Intel Mac 请将 `/opt/homebrew` 替换为 `/usr/local`：

```sh
eval "$(/opt/homebrew/bin/brew shellenv)"
```

## 软件

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
brew install bufbuild/buf/buf

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

# Extract 7z, ZIP, TAR, and other archives
brew install sevenzip

# Convert and inspect PDF files
brew install poppler

# SVG rendering library and command-line tool
brew install resvg

# Terminal file manager
brew install yazi

# Smarter directory navigation
brew install zoxide
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

### Languages

#### Go

Download the macOS installer (`.pkg` file) from [go.dev/dl](https://go.dev/dl) and run it.

#### Go Tools

```sh
# Build desktop apps with Wails v3
go install github.com/wailsapp/wails/v3/cmd/wails3@latest

# Generate Go code from Protocol Buffers
go install google.golang.org/protobuf/cmd/protoc-gen-go@latest

# Generate Go gRPC code from Protocol Buffers
go install google.golang.org/grpc/cmd/protoc-gen-go-grpc@latest
```

#### Rust

```sh
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```

### Services

```sh
# Metrics visualization and monitoring platform
brew install grafana

# In-memory data store
brew install redis

# PostgreSQL 18 database server
brew install postgresql@18

# High-performance time-series database
brew install victoriametrics

# High-performance log database
brew install victorialogs
```

需要后台运行时，启动 Grafana、Redis、PostgreSQL、VictoriaMetrics 和 VictoriaLogs：

```sh
brew services start grafana
brew services start redis
brew services start postgresql@18
brew services start victoriametrics
brew services start victorialogs
```

## 配置文件

| 配置  | 仓库文件                                       | 目标位置                  |
|-------|------------------------------------------------|---------------------------|
| Git   | `git/gitconfig`                                | `~/.gitconfig`            |
| SSH   | `ssh/config`                                   | `~/.ssh/config`           |
| Zsh   | `zsh/.zshrc`、`zsh/.zprofile`                  | `~/.zshrc`、`~/.zprofile` |
| Kitty | `kitty/kitty.conf`、`kitty/current-theme.conf` | `~/.config/kitty/`        |
| Yazi  | `yazi/yazi.toml`、`yazi/init.lua`              | `~/.config/yazi/`         |

在仓库根目录运行以下命令，链接配置文件到对应位置。若目标位置已有文件，`ln -s` 会报错，不会覆盖现有配置：

```sh
mkdir -p ~/.ssh ~/.config/kitty ~/.config/yazi
ln -s "$PWD/git/gitconfig" ~/.gitconfig
ln -s "$PWD/ssh/config" ~/.ssh/config
ln -s "$PWD/zsh/.zshrc" ~/.zshrc
ln -s "$PWD/zsh/.zprofile" ~/.zprofile
ln -s "$PWD/kitty/kitty.conf" ~/.config/kitty/kitty.conf
ln -s "$PWD/kitty/current-theme.conf" ~/.config/kitty/current-theme.conf
ln -s "$PWD/yazi/yazi.toml" ~/.config/yazi/yazi.toml
ln -s "$PWD/yazi/init.lua" ~/.config/yazi/init.lua
```

使用 Git 配置前，检查其中的用户名和邮箱是否适合当前机器及仓库。SSH 私钥、密码和令牌不要提交到此仓库。
