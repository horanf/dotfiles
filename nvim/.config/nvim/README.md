# personal neovim config by lazyvim

## 系统依赖

| 依赖 | 用途 |
|------|------|
| Neovim >= 0.10 | 编辑器本体 |
| Git | 插件管理 / lazygit |
| [lazygit](https://github.com/jesseduffield/lazygit) | Git TUI |
| [fzf](https://github.com/junegunn/fzf) | 模糊查找 |
| [fd](https://github.com/sharkdp/fd) | 文件查找 |
| [ripgrep](https://github.com/BurntSushi/ripgrep) | 全文搜索 |
| Node.js | LSP / Treesitter |
| [translate-shell](https://github.com/soimort/translate-shell) | 翻译功能 |
| JDK 17+ | Java 开发（可选） |
| [Nerd Font](https://www.nerdfonts.com/) | 图标显示 |

---

## 插件

### LazyVim Extras

| Extra | 功能 |
|-------|------|
| `ai.claudecode` | Claude Code 集成 |
| `ai.codeium` | AI 代码补全 |
| `coding.yanky` | 剪贴板历史 |
| `dap.core` | Debug 调试 |
| `editor.dial` | 数值递增/递减 |
| `editor.fzf` | fzf 模糊查找 |
| `editor.inc-rename` | 增量重命名 |
| `editor.neo-tree` | 文件树 |
| `editor.outline` | 代码大纲 |
| `lang.json` | JSON 支持 |
| `lang.markdown` | Markdown 支持 |
| `lang.tailwind` | Tailwind CSS |
| `lang.vue` | Vue.js |
| `lang.zig` | Zig |
| `linting.eslint` | ESLint |
| `ui.alpha` | 启动页 |
| `ui.indent-blankline` | 缩进线 |
| `ui.mini-animate` | 动画效果 |
| `ui.smear-cursor` | 光标拖尾 |
| `util.dot` | dotfiles 支持 |
| `util.project` | 项目管理 |

### 自定义插件

| 插件 | 功能 |
|------|------|
| `catppuccin/nvim` | 主题（mocha） |
| `goolord/alpha-nvim` | 自定义启动页 |
| `kdheepak/lazygit.nvim` | lazygit 集成 `<leader>lg` |
| `sindrets/diffview.nvim` | diff 视图 |
| `nvim-java/nvim-java` | Java / Spring Boot LSP |
| `uga-rosa/translate.nvim` | 翻译 `<leader>te/tz` |
| `folke/lazydev.nvim` | Lua 开发补全 |
| `MeanderingProgrammer/render-markdown.nvim` | Markdown 渲染 |

### LSP Servers

| Server | 语言 |
|--------|------|
| `lua_ls` | Lua |
| `html` | HTML |
| `cssls` | CSS |
| `eslint` | JS/TS |
| `jdtls` | Java |
| `volar` | Vue（via extra） |
| `zls` | Zig（via extra） |
| `tailwindcss` | Tailwind（via extra） |
