require('refactoring').setup({})

vim.keymap.set({ "n", "x" }, "<leader>re", function() require('refactoring').refactor('Extract Function') end, { noremap = true, silent = true })
vim.keymap.set({ "n", "x" }, "<leader>rf", function() require('refactoring').refactor('Extract Function To File') end, { noremap = true, silent = true })
vim.keymap.set({ "n", "x" }, "<leader>rv", function() require('refactoring').refactor('Extract Variable') end, { noremap = true, silent = true })
vim.keymap.set({ "n", "x" }, "<leader>rI", function() require('refactoring').refactor('Inline Function') end, { noremap = true, silent = true })
vim.keymap.set({ "n", "x" }, "<leader>ri", function() require('refactoring').refactor('Inline Variable') end, { noremap = true, silent = true })

vim.keymap.set({ "n", "x" }, "<leader>rbb", function() require('refactoring').refactor('Extract Block') end, { noremap = true, silent = true })
vim.keymap.set({ "n", "x" }, "<leader>rbf", function() require('refactoring').refactor('Extract Block To File') end, { noremap = true, silent = true })

require("telescope").load_extension("refactoring")

vim.keymap.set(
	{"n", "x"},
	"<leader>rr",
	function() require('telescope').extensions.refactoring.refactors() end
)
