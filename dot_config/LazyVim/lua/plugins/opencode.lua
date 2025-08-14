return {
  "NickvanDyke/opencode.nvim",
  dependencies = { "folke/snacks.nvim" },
  -- ---@type opencode.Config
  -- opts = {
  --   -- Set these according to https://models.dev/
  --   provider_id = ...,
  --   model_id = ...,
  -- },
  -- stylua: ignore
  keys = {
    { '<leader>ao', "", desc="+opencode"},
    { '<leader>aot', function() require('opencode').toggle() end, desc = 'Toggle embedded opencode', },
    { '<leader>aoa', function() require('opencode').ask() end, desc = 'Ask opencode', mode = { 'n', 'v' }, },
    { '<leader>aoA', function() require('opencode').ask('@file ') end, desc = 'Ask opencode about current file', mode = { 'n', 'v' }, },
    { '<leader>aon', function() require('opencode').create_session() end, desc = 'New session', },
    { '<leader>aoe', function() require('opencode').prompt('Explain @cursor and its context') end, desc = 'Explain code near cursor', },
    { '<leader>aor', function() require('opencode').prompt('Review @file for correctness and readability') end, desc = 'Review file', },
    { '<leader>aof', function() require('opencode').prompt('Fix these @diagnostics') end, desc = 'Fix errors', },
    { '<leader>aoo', function() require('opencode').prompt('Optimize @selection for performance and readability') end, desc = 'Optimize selection', mode = 'v', },
    { '<leader>aod', function() require('opencode').prompt('Add documentation comments for @selection') end, desc = 'Document selection', mode = 'v', },
    { '<leader>aot', function() require('opencode').prompt('Add tests for @selection') end, desc = 'Test selection', mode = 'v', },
  },
}
