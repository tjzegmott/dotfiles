-- add any tools you want to have installed below
return {
  -- Configure Mason packages
  {
    "mason-org/mason.nvim",
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
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      local coverage = require("coverage")
      coverage.setup({
        auto_reload = true,
        highlights = {
          -- customize highlight groups created by the plugin
          covered = { sp = "#C3E88D" }, -- supports style, fg, bg, sp (see :h highlight-gui)
          uncovered = { sp = "#F07178" },
        },
      })

      -- Optional: auto-load and show on startup if file exists (Hardcoded for python)
      vim.api.nvim_create_autocmd("VimEnter", {
        callback = function()
          if vim.fn.filereadable("coverage.lcov") == 1 then
            coverage.load_lcov("coverage.lcov", true)
            coverage.show()
          end
        end,
      })
    end,
  },
  -- {
  --   "nvim-neotest/neotest",
  --   dependencies = { "nvim-neotest/nvim-nio" },
  --   opts = {
  --     -- Can be a list of adapters like what neotest expects,
  --     -- or a list of adapter names,
  --     -- or a table of adapter names, mapped to adapter configs.
  --     -- The adapter will then be automatically loaded with the config.
  --     adapters = {
  --       ["neotest-python"] = {
  --         args = { "--cov=.", "--cov-report=lcov" },
  --       },
  --     },
  --   },
  -- },
}
