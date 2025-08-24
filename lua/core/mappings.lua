vim.g.mapleader = " "

-- NeoTree
vim.keymap.set('n', '<leader>n', ':Neotree float focus<CR>')
vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float, { desc = "Show diagnostics" })
vim.keymap.set("n", "<leader>da", vim.diagnostic.setloclist, { desc = "All diagnostics" })
vim.keymap.set("n", "<C-s>", "<Esc>:w<CR>a", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>f", function()
	vim.lsp.buf.format()
end, { noremap = true, silent = true })
