return {
  {
    'ThePrimeagen/harpoon',
    branch = 'harpoon2',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      local harpoon = require 'harpoon'

      -- REQUIRED
      harpoon:setup()
		-- REQUIRED

		-- stylua: ignore start
		vim.keymap.set("n", "<leader>bh", function() harpoon:list():add() end, { desc = '[B]uffer [H]arpoon' })
		vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

		vim.keymap.set("n", "<C-1>", function() harpoon:list():select(1) end)
		vim.keymap.set("n", "<C-2>", function() harpoon:list():select(2) end)
		vim.keymap.set("n", "<C-3>", function() harpoon:list():select(3) end)

		-- Toggle previous & next buffers stored within Harpoon list
		vim.keymap.set("n", "<C-S-P>", function() harpoon:list():prev() end)
		vim.keymap.set("n", "<C-S-N>", function() harpoon:list():next() end)
      -- stylua: ignore end
    end,
  },
}
