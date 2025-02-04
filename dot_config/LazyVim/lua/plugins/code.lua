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
  -- {
  --   "yetone/avante.nvim",
  --   event = "VeryLazy",
  --   lazy = false,
  --   version = false, -- set this if you want to always pull the latest change
  --   opts = {
  --     -- add any opts here
  --     provider = "copilot",
  --   },
  --   -- if you want to build from source then do `make BUILD_FROM_SOURCE=true`
  --   build = "make",
  --   -- build = "powershell -ExecutionPolicy Bypass -File Build.ps1 -BuildFromSource false" -- for windows
  --   dependencies = {
  --     "stevearc/dressing.nvim",
  --     "nvim-lua/plenary.nvim",
  --     "MunifTanjim/nui.nvim",
  --     --- The below dependencies are optional,
  --     "nvim-tree/nvim-web-devicons", -- or echasnovski/mini.icons
  --     "zbirenbaum/copilot.lua", -- for providers='copilot'
  --     {
  --       -- support for image pasting
  --       "HakonHarnes/img-clip.nvim",
  --       event = "VeryLazy",
  --       opts = {
  --         -- recommended settings
  --         default = {
  --           embed_image_as_base64 = false,
  --           prompt_for_file_name = false,
  --           drag_and_drop = {
  --             insert_mode = true,
  --           },
  --           -- required for Windows users
  --           use_absolute_path = true,
  --         },
  --       },
  --     },
  --     {
  --       -- Make sure to set this up properly if you have lazy=true
  --       "MeanderingProgrammer/render-markdown.nvim",
  --       opts = {
  --         file_types = { "Avante" },
  --       },
  --       ft = { "Avante" },
  --     },
  --   },
  -- },
  --
  -- Venv Selector
  -- {
  --   "linux-cultist/venv-selector.nvim",
  --   dependencies = { "neovim/nvim-lspconfig", "nvim-telescope/telescope.nvim", "mfussenegger/nvim-dap-python" },
  --   opts = {
  --     -- Your options go here
  --     -- name = "venv",
  --     -- auto_refresh = false
  --   },
  --   event = "VeryLazy", -- Optional: needed only if you want to type `:VenvSelect` without a keymapping
  --   keys = {
  --     -- Keymap to open VenvSelector to pick a venv.
  --     -- { "<leader>vs", "<cmd>VenvSelect<cr>" },
  --     -- Keymap to retrieve the venv from a cache (the one previously used for the same project directory).
  --     -- { "<leader>vc", "<cmd>VenvSelectCached<cr>" },
  --   },
  -- },
  --
  -- DocString Generator (USING LAZYVIM EXTRA)
  -- {
  --   "danymat/neogen",
  --   config = true,
  --   -- Uncomment next line if you want to follow only stable versions
  --   version = "*",
  --   opts = {
  --     snippet_engine = "luasnip",
  --   },
  --   languages = {
  --     -- lua = {
  --     --     template = {
  --     --         annotation_convention = "emmylua" -- for a full list of annotation_conventions, see supported-languages below,
  --     --         ... -- for more template configurations, see the language's configuration file in configurations/{lang}.lua
  --     --         },
  --     python = {
  --       template = {
  --         annotation_convention = "google_docstring",
  --       },
  --     },
  --   },
  --   keys = {
  --     -- Keymap to open the docstring generator.
  --     { "<leader>cn", "<cmd>Neogen<cr>", desc = "Neogen (docstring)" },
  --   },
  -- },
}
