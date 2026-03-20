# 更新日志

## 2026-03-20

### 迁移到 lazy.nvim

- **插件管理器**：从 packer.nvim 迁移到 [lazy.nvim](https://github.com/folke/lazy.nvim)
  - packer.nvim 已停止维护，lazy.nvim 提供更快的启动速度和懒加载支持
  - 新增 `lazy-setup.lua` 引导文件
  - 每个插件文件改为返回 lazy spec 表格式
  - 删除 `plugins-setup.lua`、`plugin/packer_compiled.lua`

### 插件配置更新

- **mason-lspconfig**：`tsserver` 更名为 `ts_ls`，`automatic_installation` 改为 `automatic_enable`
- **nvim-treesitter**：适配新版 `main` 分支 API
- **nvim-ts-autotag**：从 treesitter.configs 内配置改为独立 `setup()` 调用
- **gitsigns**：移除已废弃的 `yadm` 配置项
- **nvim-autopairs**：移除未使用的 nvim-cmp 集成代码
- **mason-null-ls**：移除（未安装该插件）

### 清理

- 删除 `nvim-cmp.lua`（未启用的补全配置）
- 清理 packer 安装目录

### 文档

- 新增 README.md（中文）
- 新增 CHANGELOG.md
