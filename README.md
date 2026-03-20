# Neovim 配置

基于 Lua 的个人 Neovim 配置，使用 [lazy.nvim](https://github.com/folke/lazy.nvim) 管理插件。

## 前置依赖

- **Neovim** >= 0.10
- **Git**
- **make**（telescope-fzf-native 编译需要）
- **[tree-sitter CLI](https://github.com/tree-sitter/tree-sitter)**（Treesitter 解析器编译需要）
- **[ripgrep](https://github.com/BurntSushi/ripgrep)**（Telescope 全文搜索需要）
- [Nerd Font](https://www.nerdfonts.com/) 字体（用于图标显示）
- **Node.js**（LSP 服务器和 Copilot 需要）

```bash
# Ubuntu/Debian
sudo apt install git make ripgrep

# macOS
brew install git make ripgrep tree-sitter tree-sitter-cli

# WSL2 (Homebrew)
brew install tree-sitter tree-sitter-cli ripgrep
```

## 安装

支持 **macOS**、**Linux** 和 **WSL2**。

1. **备份已有配置**（如有）：

   ```bash
   mv ~/.config/nvim ~/.config/nvim.bak
   mv ~/.local/share/nvim ~/.local/share/nvim.bak
   ```

2. **克隆仓库：**

   ```bash
   git clone https://github.com/duyt/nvim-config.git ~/.config/nvim
   ```

   也可以使用软链接：

   ```bash
   ln -s /path/to/nvim-config ~/.config/nvim
   ```

3. **启动 Neovim：**

   ```bash
   nvim
   ```

   首次启动时 **lazy.nvim** 会自动安装并下载所有插件。

4. 插件安装完成后**重启 Neovim**。

## 更新插件

```vim
:Lazy sync
```

安装新插件、更新已有插件、移除未使用的插件。

也可以用 `:Lazy` 打开插件管理界面，查看状态和日志。

## 插件列表

| 插件 | 说明 |
|------|------|
| [lazy.nvim](https://github.com/folke/lazy.nvim) | 插件管理器 |
| [plenary.nvim](https://github.com/nvim-lua/plenary.nvim) | Lua 工具库 |
| [nvim-tree.lua](https://github.com/nvim-tree/nvim-tree.lua) | 文件浏览器（自动打开） |
| [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) | 模糊搜索 |
| [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) | 语法高亮与解析 |
| [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim) | 状态栏（solarized 主题） |
| [bufferline.nvim](https://github.com/akinsho/bufferline.nvim) | Buffer 标签页 |
| [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim) | Git 变更标记与行内 blame |
| [Comment.nvim](https://github.com/numToStr/Comment.nvim) | `gc` 切换注释 |
| [nvim-autopairs](https://github.com/windwp/nvim-autopairs) | 自动补全括号和引号 |
| [nvim-ts-autotag](https://github.com/windwp/nvim-ts-autotag) | 自动闭合/重命名 HTML 标签 |
| [vim-tmux-navigator](https://github.com/christoomey/vim-tmux-navigator) | tmux/vim 无缝窗口切换 |
| [vim-maximizer](https://github.com/szw/vim-maximizer) | 最大化/还原分屏窗口 |
| [mason.nvim](https://github.com/williamboman/mason.nvim) | LSP/格式化/代码检查 安装器 |
| [mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim) | Mason 与 LSP 集成 |
| [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) | LSP 客户端配置集合 |
| [copilot.vim](https://github.com/github/copilot.vim) | GitHub Copilot |

## 快捷键

**Leader 键：`Space`（空格）**

### 通用

| 按键 | 模式 | 功能 |
|------|------|------|
| `x` | Normal | 删除字符（不复制到寄存器） |
| `Alt-c` / `Ctrl-c` | Visual | 复制到系统剪贴板 |

### 分屏

| 按键 | 模式 | 功能 |
|------|------|------|
| `<leader>sv` | Normal | 垂直分屏 |
| `<leader>sh` | Normal | 水平分屏 |
| `<leader>sx` | Normal | 关闭当前分屏 |
| `<leader>sm` | Normal | 最大化/还原分屏 |
| `Ctrl-h/j/k/l` | Normal | 在分屏间导航（通过 tmux-navigator） |

### Buffer 导航

| 按键 | 模式 | 功能 |
|------|------|------|
| `Alt-Left` | Normal | 上一个 buffer |
| `Alt-Right` | Normal | 下一个 buffer |

### 标签页

| 按键 | 模式 | 功能 |
|------|------|------|
| `<leader>to` | Normal | 新建标签页 |
| `<leader>tx` | Normal | 关闭标签页 |
| `<leader>tn` | Normal | 下一个标签页 |
| `<leader>tp` | Normal | 上一个标签页 |

### 文件浏览器（nvim-tree）

| 按键 | 模式 | 功能 |
|------|------|------|
| `<leader>e` | Normal | 打开/关闭文件浏览器 |

### 模糊搜索（Telescope）

| 按键 | 模式 | 功能 |
|------|------|------|
| `<leader>ff` | Normal | 搜索文件 |
| `<leader>fg` | Normal | 全文搜索（live grep） |
| `<leader>fb` | Normal | 搜索 buffer |
| `<leader>fh` | Normal | 搜索帮助文档 |
| `<leader>fc` | Normal | 搜索光标下的字符串 |
| `<leader>fs` | Normal | 搜索符号 |
| `Ctrl-j` / `Ctrl-k` | Telescope | 上下移动选择 |
| `Ctrl-q` | Telescope | 发送选中项到 quickfix 列表 |

### Git（gitsigns）

| 按键 | 模式 | 功能 |
|------|------|------|
| `<leader>hp` | Normal | 预览变更块（hunk） |
| `<leader>hb` | Normal | 查看行 blame（完整信息） |
| `<leader>tb` | Normal | 切换行内 blame 显示 |
| `<leader>hd` | Normal | 对比当前文件差异 |
| `<leader>hD` | Normal | 对比上一个提交的差异 |

### 注释（Comment.nvim）

| 按键 | 模式 | 功能 |
|------|------|------|
| `gcc` | Normal | 切换行注释 |
| `gbc` | Normal | 切换块注释 |
| `gc` | Visual | 切换选中区域注释 |

## LSP 服务器（通过 Mason 自动安装）

- `ts_ls` — TypeScript / JavaScript
- `html` — HTML
- `cssls` — CSS / SCSS / Less
- `lua_ls` — Lua
- `pyright` — Python
- `gopls` — Go
- `terraformls` — Terraform / HCL
- `bashls` — Shell Script (Bash)
- `yamlls` — YAML / Kubernetes
- `jsonls` — JSON
- `helm_ls` — Helm Charts
- `dockerls` — Dockerfile
- `docker_compose_language_service` — Docker Compose

### 添加/更改 LSP 支持

1. **查看可用的 LSP 服务器**：在 Neovim 中运行 `:Mason`，按 `2` 切换到 LSP 标签页浏览所有可用服务器。

2. **添加新语言支持**：编辑 `lua/duyt/plugins/lsp/mason.lua`，在 `ensure_installed` 列表中添加服务器名称：

   ```lua
   ensure_installed = {
     "ts_ls",
     "html",
     "cssls",
     "tailwindcss",
     "lua_ls",
     "emmet_ls",
     "pyright",       -- 新增：Python
     "gopls",         -- 新增：Go
   },
   ```

3. **重启 Neovim**，Mason 会自动安装新添加的服务器。也可以在 `:Mason` 界面中按 `i` 手动安装。

4. **添加 Treesitter 语法支持**（可选）：如果需要新语言的语法高亮，编辑 `lua/duyt/plugins/treesitter.lua`，在 `install` 列表中添加语言名称。

5. **常用 LSP 服务器参考**：

   | 语言 | 服务器名称 |
   |------|-----------|
   | Python | `pyright` 或 `basedpyright` |
   | Go | `gopls` |
   | Rust | `rust_analyzer` |
   | Java | `jdtls` |
   | C/C++ | `clangd` |
   | Docker | `dockerls` |
   | YAML | `yamlls` |
   | JSON | `jsonls` |

   完整列表见 [mason-lspconfig 文档](https://github.com/williamboman/mason-lspconfig.nvim#available-lsp-servers)。

## 格式化与代码检查

格式化与代码检查工具可通过 `:Mason` 手动安装：

- `prettier` — TypeScript / JavaScript 格式化
- `stylua` — Lua 格式化
- `eslint_d` — TypeScript / JavaScript 代码检查

## 编辑器设置

- 相对行号
- 2 空格缩进（空格，非 Tab）
- 智能大小写搜索
- 光标行高亮
- 浅色背景 + 真彩色
- 系统剪贴板集成
- 新分屏在下方和右侧打开

## 目录结构

```
~/.config/nvim/
├── init.lua                        # 入口文件
├── lua/duyt/
│   ├── lazy-setup.lua              # lazy.nvim 引导与加载
│   ├── core/
│   │   ├── options.lua             # 编辑器选项
│   │   ├── keymaps.lua             # 快捷键绑定
│   │   └── colorscheme.lua         # 配色方案
│   └── plugins/
│       ├── init.lua                # 独立插件（plenary, tmux-navigator 等）
│       ├── autopairs.lua           # 自动括号配置
│       ├── bufferline.lua          # Buffer 标签页配置
│       ├── comment.lua             # 注释插件配置
│       ├── gitsigns.lua            # Git 标记配置
│       ├── lualine.lua             # 状态栏配置
│       ├── nvim-tree.lua           # 文件浏览器配置
│       ├── telescope.lua           # 模糊搜索配置
│       ├── treesitter.lua          # Treesitter 配置
│       └── lsp/
│           └── mason.lua           # LSP/Mason 配置
```

## 常见问题

### 图标显示为方块/菱形（◆）

文件浏览器、状态栏、Buffer 标签页中的图标显示异常，通常是因为终端字体不是 Nerd Font。

**解决方法：**

1. 从 [Nerd Fonts](https://www.nerdfonts.com/font-downloads) 下载并安装字体，推荐：
   - JetBrainsMono Nerd Font
   - FiraCode Nerd Font
   - Hack Nerd Font

2. 在终端中设置字体：
   - **iTerm2**：Preferences → Profiles → Text → Font → 选择 Nerd Font
   - **Windows Terminal**：Settings → Profile → Appearance → Font face
   - **GNOME Terminal**：Preferences → Profile → Custom font

3. 重启终端即可。
