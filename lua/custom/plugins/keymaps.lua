function norm_cmd(binding, cmd, opts)
  vim.keymap.set('n', binding, '<cmd>' .. cmd .. '<CR>', opts)
end

-- Git keymmaps
norm_cmd('<leader>gg', 'Neogit', { desc = '[G]it [G]ud (open Neogit)' })
norm_cmd('<leader>gs', 'Gitsigns preview_hunk_inline', { desc = '[G]it [S]how hunk' })
norm_cmd('<leader>gS', 'Gitsigns preview_hunk', { desc = '[G]it [S]how hunk (popup)' })
norm_cmd('<leader>gn', 'Gitsigns next_hunk', { desc = '[G]it [N]ext Hunk' })
norm_cmd('<leader>gp', 'Gitsigns prev_hunk', { desc = '[G]it [P]revious Hunk' })

-- vim.cmd [[autocmd FileType * set tabstop=4 shiftwidth=4]]

-- toggle keymaps
norm_cmd('<leader>tc', 'TSContextToggle', { desc = '[T]oggle [C]ontext' })

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
