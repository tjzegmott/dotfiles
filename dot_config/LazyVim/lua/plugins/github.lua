return {
  {
    "ruifm/gitlinker.nvim",
    dependencies = "nvim-lua/plenary.nvim",
    lazy = true,
    opts = {},
    keys = {
      { "<leader>gy", "<cmd>lua require('gitlinker').get_buf_range_url()<cr>", desc = "Yank permalink (GitLinker)" },
      {
        "<leader>gy",
        "<cmd>lua require('gitlinker').get_buf_range_url()<cr>",
        desc = "Yank permalink (GitLinker)",
        mode = "v",
      },
    },
  },
  {
    "sindrets/diffview.nvim",
    cmd = { "DiffviewOpen", "DiffviewClose", "DiffviewToggleFiles", "DiffviewFocusFiles" },
    keys = { { "<leader>gd", "<cmd>DiffviewOpen<cr>", desc = "DiffView" } },
  },
}
