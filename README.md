# dotfiles

Arch Linux + Hyprland 配置文件。

## 结构

每个目录对应 ~/.config 下的一个应用，通过 symlink 连接：

| ~/.config/ | -> | ~/dotfiles/ |
|---|---|---|
| atuin | -> | atuin |
| fish | -> | fish |
| nvim | -> | nvim |
| gh...hty | -> | gh...hty |
| hypr | -> | hypr |
| waybar | -> | waybar |

```
~/.config/
  atuin    -> ~/dotfiles/atuin/
  fish     -> ~/dotfiles/fish/
  nvim     -> ~/dotfiles/nvim/
  gh...hty  -> ~/dotfiles/ghostty/
  hypr     -> ~/dotfiles/hypr/
  waybar   -> ~/dotfiles/waybar/
```

## 新机器安装

```bash
git clone https://github.com/horanf/dotfiles.git ~/dotfiles

# 创建 symlink (先备份已有配置)
mkdir -p ~/.config
for pkg in atuin fish nvim gh...hty hypr waybar; do
  [ -e ~/.config/$pkg ] && mv ~/.config/$pkg ~/.config/$pkg.bak
  ln -s ~/dotfiles/$pkg ~/.config/$pkg
done
```

## 日常使用

修改配置的流程和平时完全一样，文件本体在 ~/dotfiles/ 下：

```bash
cd ~/dotfiles
git status
git add -A
git commit -m "waybar: 调整工作区图标"
git push
```
