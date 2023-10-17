vim.keymap.set('n', '<leader>i', ':ToggleTerm<CR>', { noremap = true, silent = true, desc = 'Term toggle floating' })
vim.keymap.set('n', '<leader>hi', ':ToggleTerm direction=horizontal<CR>',
  { noremap = true, silent = true, desc = 'Term toggle horizontal' })

function _G.set_terminal_keymaps()
  local opts = { buffer = 0 }
  vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
  vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
  vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
  vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
  vim.keymap.set('t', '<C-q>', [[<C-\><C-n><C-w>]], opts)
end

vim.cmd 'autocmd! TermOpen term://* lua set_terminal_keymaps()'

function _lazygit_toggle()
  local Terminal = require('toggleterm.terminal').Terminal
  local lazygit = Terminal:new {
    cmd = 'lazygit',
    hidden = true,
    direction = 'float',
    float_opts = {
      border = 'single',
      width = 270,
      height = 65
    }
  }

  lazygit:toggle()
end

vim.api.nvim_set_keymap('n', '<leader>lg', '<cmd>lua _lazygit_toggle()<CR>', { noremap = true, silent = true })

return {
  'akinsho/toggleterm.nvim',
  version = '*',
  config = function()
    require('toggleterm').setup {
      direction = 'float',
      float_opts = {
        border = 'single',
        width = 150,
        height = 32,
      },
    }
  end,
}
