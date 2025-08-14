-- add any tools you want to have installed below
return {
  -- Configure Mason packages
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "emmet-ls",
        -- "stylua",
        -- "shellcheck",
        -- "shfmt",
        -- "flake8",
      },
    },
  },

  -- Set up formatters for each ft
  {
    "stevearc/conform.nvim",
    optional = true,
    opts = {
      formatters_by_ft = {
        ["javascript"] = { "prettier" },
        ["javascriptreact"] = { "prettier" },
        ["typescript"] = { "prettier" },
        ["typescriptreact"] = { "prettier" },
        ["python"] = { "black", "isort" },
        ["vue"] = { "prettier" },
        ["css"] = { "prettier" },
        ["scss"] = { "prettier" },
        ["less"] = { "prettier" },
        ["html"] = { "prettier" },
        ["json"] = { "prettier" },
        ["jsonc"] = { "prettier" },
        ["yaml"] = { "prettier" },
        ["markdown"] = { "prettier" },
        ["markdown.mdx"] = { "prettier" },
        ["graphql"] = { "prettier" },
        ["handlebars"] = { "prettier" },
      },
    },
  },
  {
    "grafana/vim-alloy",
    lazy = true,
    ft = { "alloy" },
  },
  {
    "andythigpen/nvim-coverage",
    version = "*",
    config = function()
      require("coverage").setup({
        auto_reload = true,
      })
    end,
  },
}
