#!/bin/bash
# 点击工作区：如果应用已运行则切换，否则启动应用
# 用法: workspace-click.sh <workspace_id>

WS="$1"

# 工作区 -> 应用映射: class_name launch_command
declare -A APP_CLASS
APP_CLASS[1]="com.mitchellh.ghostty"
APP_CLASS[2]="google-chrome"
APP_CLASS[3]="obsidian"
APP_CLASS[4]="zed"
APP_CLASS[5]="spotify"

declare -A APP_CMD
APP_CMD[1]="ghostty"
APP_CMD[2]="google-chrome-stable"
APP_CMD[3]="obsidian"
APP_CMD[4]="zed"
APP_CMD[5]="spotify"

CLASS="${APP_CLASS[$WS]}"
CMD="${APP_CMD[$WS]}"

# 获取 hyprctl 所需环境
SIG=$(ls /run/user/1000/hypr/ 2>/dev/null | head -1)
export HYPRLAND_INSTANCE_SIGNATURE="$SIG"

# 检查应用是否已在运行
if hyprctl clients -j 2>/dev/null | grep -q ""class": *"$CLASS""; then
    # 已运行，切到该工作区
    hyprctl dispatch workspace "$WS"
else
    # 未运行，启动应用并切到该工作区
    hyprctl dispatch exec "$CMD"
    hyprctl dispatch workspace "$WS"
fi
