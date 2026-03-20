return {
  {
    "nvim-treesitter/nvim-treesitter",
    branch = "main",
    lazy = false,
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter").setup()
      require("nvim-treesitter").install({
        "json", "javascript", "typescript", "tsx",
        "yaml", "toml", "html", "css",
        "markdown", "markdown_inline",
        "svelte", "graphql", "bash", "lua",
        "python", "sql", "go", "vim",
        "dockerfile", "gitignore",
      })
    end,
  },
  {
    "windwp/nvim-ts-autotag",
    event = "InsertEnter",
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },
}
 