-- Git keymmaps
vim.keymap.set('n', '<leader>gg', '<cmd>Neogit<CR>', { desc = '[G]it [G]ud (open Neogit)' })
vim.keymap.set('n', '<leader>gs', '<cmd>Gitsigns preview_hunk_inline<CR>', { desc = '[G]it [S]how hunk' })
vim.keymap.set('n', '<leader>gS', '<cmd>Gitsigns preview_hunk<CR>', { desc = '[G]it [S]how hunk (popup)' })
vim.keymap.set('n', '<leader>gn', '<cmd>Gitsigns next_hunk<CR>', { desc = '[G]it [N]ext Hunk' })
vim.keymap.set('n', '<leader>gp', '<cmd>Gitsigns prev_hunk<CR>', { desc = '[G]it [P]revious Hunk' })
vim.cmd [[autocmd FileType * set tabstop=4 shiftwidth=4]]
-- vim.diagnostic.config { virtual_text = false }

-- toggle keymaps
vim.keymap.set('n', '<leader>tl', function()
  vim.opt.list = not vim.opt.list:get()
end, { desc = '[T]oggle [L]ist chars' })
local show_diagnostic_text = true
vim.keymap.set('n', '<leader>td', function()
  show_diagnostic_text = not show_diagnostic_text
  vim.diagnostic.config { virtual_text = show_diagnostic_text }
end, { desc = '[T]oggle [L]ist chars' })
vim.keymap.set('n', '<leader>tt', function()
  vim.opt.tabstop = 4
  vim.opt.shiftwidth = 4
end, { desc = '[T]oggle [T]abs' })

return {}
