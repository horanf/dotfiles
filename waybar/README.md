# waybar

Hyprland 顶栏配置，基于 [newemperor221/hyprland-dotfiles](https://github.com/newemperor221/hyprland-dotfiles) hypr_style1。

## 环境

| 项目 | 详情 |
|---|---|
| CPU | AMD Ryzen 5 5600GT (台式机) |
| 温度传感器 | k10temp (`sensors` 中 `Tctl:` 行) |
| 背光 | 无 (台式机，已移除 backlight 模块) |
| 显卡 | AMD 核显 |
| 锁屏 | `loginctl lock-session` |
| 时区 | `Asia/Shanghai` |
| Nerd Font | CaskaydiaCove Nerd Font |

## 必要依赖

| 包 | 用途 |
|---|---|
| `waybar` | 状态栏本体 |
| `lm_sensors` | CPU 温度 (`sensors` 命令) |
| `pulseaudio` / `pipewire-pulse` | 音量控制 (`pactl`) |
| `pavucontrol` | 右键打开音量面板 |
| `bluez` + `bluez-utils` | 蓝牙模块 |
| `systemd` | 关机/重启/锁屏 (`systemctl`, `loginctl`) |
| `ttf-cascadia-code-nerd` 或等效 Nerd Font | 图标字体 |
| `hyprland` | 窗口管理器 (workspaces 模块) |

安装：

```bash
sudo pacman -S waybar lm_sensors pulseaudio pavucontrol bluez bluez-utils ttf-cascadia-code-nerd
```

## 模块布局

```
left:   [workspaces] [tray] [lock] [reboot] [power]
center: [窗口标题]
right:  [network] [battery] [bluetooth] [volume] [temp] [memory] [cpu] [clock]
```

## 自定义内容

### 工作区图标

| 工作区 | 图标 | 应用 |
|---|---|---|
| 1 |  | Ghostty (终端) |
| 2 |  | Chrome (浏览器) |
| 3 | 󰠮 | Obsidian (笔记) |
| 4 |  | Zed (编辑器) |
| 5 |  | Spotify (音乐) |
| default |  | 终端 |

修改映射时需同时改 `config.jsonc` 中 `hyprland/workspaces.format-icons`。

### inline 配色

主题采用 `<span color='...'>` 直接给图标上色，不在 CSS 中定义模块背景色。

## 注意事项

- 台式机无电池，`battery` 模块可能显示异常——若不需要可移除
- 关机/重启需要 sudo 免密或 polkit，否则点击无反应
- 温度命令适配 AMD：`sensors | awk '/^Tctl:/ {print int($2)}'`
- 该主题源自 newemperor221 style1，已知上游 `style.css` 中 `#custpm-temperature` 为笔误

## 重启

```bash
pkill waybar; hyprctl dispatch exec waybar
```
