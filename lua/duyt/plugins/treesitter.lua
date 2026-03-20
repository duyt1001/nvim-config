-- nvim-treesitter (new main branch API)
local status, treesitter = pcall(require, "nvim-treesitter")
if not status then
  return
end

-- configure treesitter
treesitter.setup()

-- install language parsers
treesitter.install({
  "json",
  "javascript",
  "typescript",
  "tsx",
  "yaml",
  "toml",
  "html",
  "css",
  "markdown",
  "markdown_inline",
  "svelte",
  "graphql",
  "bash",
  "lua",
  "python",
  "sql",
  "go",
  "vim",
  "dockerfile",
  "gitignore",
})

-- configure nvim-ts-autotag separately (no longer via treesitter.configs)
local autotag_status, autotag = pcall(require, "nvim-ts-autotag")
if autotag_status then
  autotag.setup()
end
 