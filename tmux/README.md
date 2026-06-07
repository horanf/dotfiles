# tmux

终端复用器配置，使用 Catppuccin 主题 + TPM 插件管理。

## 安装

```bash
# 1. 建立符号链接（tmux 3.3+ 支持 XDG）
ln -s ~/dotfiles/tmux ~/.config/tmux

# 2. 安装 TPM 插件管理器
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

## 加载插件

打开 tmux 后按 `prefix + I`（默认 `Ctrl+b` 再按 `Shift+i`），TPM 会自动拉取所有插件。

## 插件列表

| 插件 | 作用 |
|------|------|
| tmux-sensible | 合理的默认配置 |
| tmux-resurrect | 保存/恢复工作环境 |
| tmux-continuum | 自动保存 + 启动恢复 |
| catppuccin/tmux | Catppuccin 主题 |

## 快捷键

见 `tmux.conf` 或终端内 `prefix + ?`。
