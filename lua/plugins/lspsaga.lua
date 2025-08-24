require('lspsaga').setup({
  ui = { border = 'rounded' },
  hover = {
    max_width = 50,
    max_height = 10,
    open_link = 'enew',
  },
  max_preview_lines = 8,
})

vim.keymap.set("n", "K", "<cmd>Lspsaga hover_doc<CR>")

vim.keymap.set("n", "gd", "<cmd>Lspsaga goto_definition<CR>")

vim.keymap.set({"n","v"}, "<leader>ca", "<cmd>Lspsaga code_action<CR>")

