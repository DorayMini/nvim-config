vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.signcolumn = "yes"
vim.opt.ruler = true
vim.opt.numberwidth = 3

vim.api.nvim_create_autocmd("FileType", {
    pattern = {"help", "terminal"},
    command = "setlocal nonumber norelativenumber"
})

