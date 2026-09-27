return {
  {
    "nvim-treesitter/nvim-treesitter",
    branch = "main",
    lazy = false,
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter").setup()

      local parsers = {
        "json", "javascript", "typescript", "tsx",
        "yaml", "toml", "html", "css",
        "markdown", "markdown_inline",
        "svelte", "graphql", "bash", "lua",
        "python", "sql", "go", "vim",
        "dockerfile", "gitignore",
        "terraform", "hcl", "helm",
      }
      require("nvim-treesitter").install(parsers)

      vim.api.nvim_create_autocmd("FileType", {
        callback = function(args)
          local lang = vim.treesitter.language.get_lang(args.match)
          if lang and vim.tbl_contains(parsers, lang) then
            pcall(vim.treesitter.start, args.buf, lang)
          end
        end,
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
 