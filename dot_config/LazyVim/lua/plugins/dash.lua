return {
  -- {
  --   "nvimdev/dashboard-nvim",
  --   opts = function(_, opts)
  --     -- figlet font "The Edge"
  --     logo = string.rep("\n", 6) .. logo .. "\n\n"
  --     opts.config.header = vim.split(logo, "\n")
  --   end,
  -- },
  {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    opts = {
      bigfile = { enabled = true },
      dashboard = {
        enabled = true,
        -- preset = {
        --   header = logo,
        -- },
        sections = {
          --   { section = "header" },
          --   { section = "keys", gap = 1, padding = 1 },
          --   { section = "startup" },
          --   {
          --     section = "terminal",
          --     cmd = "pokemon-colorscripts -r | tail -n +2; sleep .1",
          --     random = 10,
          --     pane = 2,
          --     indent = 4,
          --     height = 30,
          --   },
          { pane = 2, section = "header" },
          -- {
          --   pane = 2,
          --   section = "terminal",
          --   cmd = "colorscript -e square",
          --   height = 5,
          --   padding = 1,
          -- },
          { pane = 2, section = "keys", gap = 1, padding = 1 },
          { pane = 1, icon = " ", title = "Recent Files", section = "recent_files", indent = 2, padding = 1 },
          -- { pane = 2, icon = " ", title = "Projects", section = "projects", indent = 2, padding = 1 },
          {
            icon = "",
            title = "Little TaskWarrior",
            pane = 1,
          },
          -- {
          --   text = ltw.get_snacks_dashboard_tasks(56, "dir", "special"),
          --   pane = 2,
          --   indent = 2,
          -- },
          -- {
          --   pane = 2,
          --   icon = " ",
          --   title = "Git Status",
          --   section = "terminal",
          --   enabled = vim.fn.isdirectory(".git") == 1,
          --   cmd = "hub status --short --branch --renames",
          --   height = 5,
          --   padding = 1,
          --   ttl = 5 * 60,
          --   indent = 3,
          {
            pane = 3,
            icon = " ",
            desc = "Browse Repo",
            padding = 1,
            key = "b",
            action = function()
              Snacks.gitbrowse()
            end,
          },
          function()
            local in_git = Snacks.git.get_root() ~= nil
            local cmds = {
              {
                title = "Notifications",
                cmd = "gh notify -s -a -n5",
                action = function()
                  vim.ui.open("https://github.com/notifications")
                end,
                key = "N",
                icon = " ",
                height = 5,
                enabled = true,
              },
              {
                title = "Open Issues",
                cmd = "gh issue list -L 3",
                key = "i",
                action = function()
                  vim.fn.jobstart("gh issue list --web", { detach = true })
                end,
                icon = " ",
                height = 7,
              },
              {
                icon = " ",
                title = "Open PRs",
                cmd = "gh pr list -L 3",
                key = "P",
                action = function()
                  vim.fn.jobstart("gh pr list --web", { detach = true })
                end,
                height = 7,
              },
              {
                icon = " ",
                title = "Git Status",
                cmd = "git --no-pager diff --stat -B -M -C",
                height = 10,
              },
            }
            return vim.tbl_map(function(cmd)
              return vim.tbl_extend("force", {
                pane = 3,
                section = "terminal",
                enabled = in_git,
                padding = 1,
                ttl = 5 * 60,
                indent = 3,
              }, cmd)
            end, cmds)
          end, -- },
          { pane = 2, section = "startup" },
        },
      },
    },
    notifier = {
      enabled = true,
      timeout = 3000,
    },
    quickfile = { enabled = true },
    statuscolumn = { enabled = true },
    words = { enabled = true },
    styles = {
      notification = {
        wo = { wrap = true }, -- Wrap notifications
      },
    },
  },
}
