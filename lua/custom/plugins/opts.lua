vim.opt.shiftwidth = 4
vim.opt.laststatus = 3
vim.opt.sidescrolloff = 12

vim.opt.diffopt = 'internal,filler,closeoff,algorithm:minimal,linematch:60,iwhiteall'

-- Folds
vim.opt.fillchars:append { fold = ' ' }

return {}
