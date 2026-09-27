# Repository Guidelines

## 项目结构

这是一个以 Lua 编写的 Neovim 配置仓库。`init.lua` 是启动入口；`lua/duyt/core/` 存放编辑器选项、快捷键和配色；`lua/duyt/plugins/` 按插件拆分配置，LSP 配置位于其 `lsp/` 子目录。`lua/duyt/lazy-setup.lua` 引导并配置 lazy.nvim，`lazy-lock.json` 记录插件版本。项目目前没有独立测试或资源目录。

## 开发与验证

- `nvim`：在当前配置目录启动 Neovim；首次启动会由 lazy.nvim 安装插件。
- `find . -name '*.lua' -not -path './.git/*' -exec luac -p {} +`：用 Lua 编译器检查所有配置文件的语法，不会启动 Neovim 或安装插件。
- `nvim`：将仓库安装或链接为 Neovim 配置目录后，启动编辑器并检查配置实际加载情况。
- `:Lazy sync`：在 Neovim 中同步插件依赖。
- `:checkhealth`：检查 Neovim、插件及外部工具状态。

仓库没有专用测试框架、构建脚本或覆盖率要求。修改后至少启动 Neovim 并检查受影响功能；涉及 LSP、Treesitter 或插件集成时，也应检查对应健康状态或手动验证相关功能。

## 风格与命名

遵循现有 Lua 风格：使用两个空格缩进，不使用 Tab；插件配置文件使用小写名称并对应插件职责，例如 `lua/duyt/plugins/telescope.lua`。共享编辑器行为放在 `core/`，插件专属设置放在对应插件模块中。新增插件时更新插件配置；只有依赖版本发生变化时才提交 `lazy-lock.json` 的更新。

## 提交与合并请求

历史提交包含 `feat:`、`fix:`、`docs:` 等前缀，也有简短的动作描述。建议使用简洁、明确的祈使句，单次提交聚焦一个改动，例如 `fix: handle missing parser`。合并请求应说明用户可见的变化、修改原因和验证方式；快捷键或界面行为变化时，列出相关按键或附上截图。没有必要时不更新无关插件或锁文件。

## 配置与安全

不要提交个人令牌、机器专属路径或敏感配置。新增外部工具或插件依赖时，在 README 中补充安装或配置说明，并尽量沿用仓库现有的 lazy.nvim 管理方式。
