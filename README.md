# dotfiles

Arch Linux + Hyprland 配置文件。

## 结构

每个目录对应 ~/.config 下的一个应用，通过 symlink 连接：

| atuin | fish | gh...hty | hypr | nvim | tmux | waybar |

## 新机器安装

```bash
git clone https://github.com/horanf/dotfiles.git ~/dotfiles && ~/dotfiles/install.sh
```

> 已有配置文件会自动备份为 `<name>.bak.时间戳`，不会丢失。

## 日常使用

修改配置的流程和平时完全一样，文件本体在 ~/dotfiles/ 下：

```bash
cd ~/dotfiles
git status
git add -A
git commit -m "waybar: 调整工作区图标"
git push
```
