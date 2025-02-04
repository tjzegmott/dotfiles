-- local ltw = require("little-taskwarrior")
-- ltw.setup({})

math.randomseed(os.time())
local rand = math.random(10)
local logo = ""
if rand > 5 then
  logo = [[
  ________/\\\\\\\\\__/\\\________/\\\__/\\\\\\\\\\\__/\\\\____________/\\\\__/\\\\\\\\\\\\\\\_
   _____/\\\////////__\/\\\_______\/\\\_\/////\\\///__\/\\\\\\________/\\\\\\_\/\\\///////////__
 ___/\\\/___________\/\\\_______\/\\\_____\/\\\_____\/\\\//\\\____/\\\//\\\_\/\\\_____________
  __/\\\_____________\/\\\\\\\\\\\\\\\_____\/\\\_____\/\\\\///\\\/\\\/_\/\\\_\/\\\\\\\\\\\_____
   _\/\\\_____________\/\\\/////////\\\_____\/\\\_____\/\\\__\///\\\/___\/\\\_\/\\\///////______
    _\//\\\____________\/\\\_______\/\\\_____\/\\\_____\/\\\____\///_____\/\\\_\/\\\_____________
    __\///\\\__________\/\\\_______\/\\\_____\/\\\_____\/\\\_____________\/\\\_\/\\\_____________
    ____\////\\\\\\\\\_\/\\\_______\/\\\__/\\\\\\\\\\\_\/\\\_____________\/\\\_\/\\\\\\\\\\\\\\\_
      _______\/////////__\///________\///__\///////////__\///______________\///__\///////////////__
  ]]
elseif rand <= 5 then
  logo = require("util.dashboard.config").get_theme().header
end

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
          { section = "header" },
          -- {
          --   pane = 2,
          --   section = "terminal",
          --   cmd = "colorscript -e square",
          --   height = 5,
          --   padding = 1,
          -- },
          { section = "keys", gap = 1, padding = 1 },
          { pane = 2, icon = " ", title = "Recent Files", section = "recent_files", indent = 2, padding = 1 },
          { pane = 2, icon = " ", title = "Projects", section = "projects", indent = 2, padding = 1 },
          -- {
          --   icon = "",
          --   title = "Little TaskWarrior",
          --   pane = 2,
          -- },
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
          -- },
          { section = "startup" },
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
  {
    "folke/drop.nvim",
    event = "VimEnter",
    config = function()
      if rand > 8 then
        require("drop").setup({
          theme = require("util.dashboard.config").get_theme().name,
          screensaver = false,
        })
      end
    end,
  },
}
