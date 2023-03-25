---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["|"] = {"<cmd> vsplit <cr>"},
    ["ge"] = {"<cmd> Trouble <cr>"},
    ["<leader>gg"] = {"<cmd> ChatGPT <cr>"},
  },
  i = {
     ["jj"] = { "<ESC>", "escape insert mode" , opts = { nowait = true } },
  }
}

return M
