# dotfiles

个人开发环境配置文件，使用 Git 进行管理。

## 目录结构

```text
dotfiles/
├── kitty/
│   ├── kitty.conf
│   └── current-theme.conf
└── README.md
```

## 使用

克隆仓库：

```bash
git clone <repository-url> ~/workspace/code/dotfiles
```

创建 Kitty 配置软链接：

```bash
mkdir -p ~/.config/kitty

ln -s ~/workspace/code/dotfiles/kitty/kitty.conf ~/.config/kitty/kitty.conf
ln -s ~/workspace/code/dotfiles/kitty/current-theme.conf ~/.config/kitty/current-theme.conf
```

之后直接修改 `dotfiles` 中的配置文件即可，系统配置文件会同步生效。
