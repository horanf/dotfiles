#!/usr/bin/env bash
set -euo pipefail

DOTFILES="$(cd "$(dirname "$0")" && pwd)"
CONFIG="${XDG_CONFIG_HOME:-$HOME/.config}"

# ── Color output ──────────────────────────────────────────────
info()  { printf '  \033[36m●\033[0m %s\n' "$*"; }
ok()    { printf '  \033[32m✓\033[0m %s\n' "$*"; }
warn()  { printf '  \033[33m⚠\033[0m %s\n' "$*"; }

link_config() {
    local name="$1"
    local src="$DOTFILES/$name"
    local dst="$CONFIG/$name"

    if [ ! -d "$src" ]; then
        warn "跳过 $name — 源目录 $src 不存在"
        return
    fi

    if [ -L "$dst" ] && [ "$(readlink "$dst")" = "$src" ]; then
        ok "$name 已链接"
        return
    fi

    if [ -e "$dst" ]; then
        local bak="${dst}.bak.$(date +%Y%m%d%H%M%S)"
        mv "$dst" "$bak"
        info "备份原有 $name → $(basename "$bak")"
    fi

    mkdir -p "$(dirname "$dst")"
    ln -s "$src" "$dst"
    ok "链接 $name"
}

# ── Symlink config directories ────────────────────────────────
echo "链接配置到 $CONFIG …"
echo

for dir in atuin fish ghostty hypr nvim tmux waybar; do
    link_config "$dir"
done

echo

# ── Dependencies ───────────────────────────────────────────────
declare -a DEPS=(
    atuin
    fish
    ghostty
    neovim
    ripgrep
    fd
    tmux
    waybar
)

# pick AUR helper if available
if command -v yay &>/dev/null; then
    PKGMGR=(yay -S --needed --noconfirm)
elif command -v paru &>/dev/null; then
    PKGMGR=(paru -S --needed --noconfirm)
else
    PKGMGR=(sudo pacman -S --needed --noconfirm)
fi

declare -a MISSING=()
for pkg in "${DEPS[@]}"; do
    pacman -Q "$pkg" &>/dev/null || MISSING+=("$pkg")
done

if [ ${#MISSING[@]} -gt 0 ]; then
    info "安装 ${#MISSING[@]} 个缺失依赖: ${MISSING[*]}"
    "${PKGMGR[@]}" "${MISSING[@]}"
    ok "依赖安装完成"
else
    ok "所有依赖已就绪"
fi

echo

# ── tmux: install TPM ─────────────────────────────────────────
info "检查 tmux 插件管理器 (TPM) …"
if [ -d "$HOME/.tmux/plugins/tpm" ]; then
    ok "TPM 已安装"
else
    info "安装 TPM …"
    git clone https://github.com/tmux-plugins/tpm "$HOME/.tmux/plugins/tpm"
    ok "TPM 安装完成 → 打开 tmux 后按 prefix + I 加载插件"
fi

echo
echo "完成 ✓"
