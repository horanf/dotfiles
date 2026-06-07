#!/bin/bash
# workspace-click.sh <id> — 切换/启动工作区对应应用
WS="$1"

declare -A APP_CLASS APP_CMD
APP_CLASS[1]="com.mitchellh.ghostty"   APP_CMD[1]="ghostty"
APP_CLASS[2]="google-chrome"           APP_CMD[2]="google-chrome-stable"
APP_CLASS[3]="obsidian"                APP_CMD[3]="obsidian"
APP_CLASS[4]="zed"                     APP_CMD[4]="zed"
APP_CLASS[5]="spotify"                 APP_CMD[5]="spotify"

CLASS="${APP_CLASS[$WS]}"
CMD="${APP_CMD[$WS]}"
[ -z "$CLASS" ] && exit 0

if hyprctl clients -j 2>/dev/null | grep -qF "$CLASS"; then
    hyprctl dispatch workspace "$WS"
else
    hyprctl dispatch exec "$CMD"
    hyprctl dispatch workspace "$WS"
fi
