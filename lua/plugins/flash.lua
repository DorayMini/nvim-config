local flash = require("flash")

flash.setup({
    highlight = { 
        groups = { match = "Search", cursor = "Cursor" } 
    },
    modes = {
        search = {
            enabled = true,
            highlight = { backdrop = true }
        },
        char = {
            enabled = true,
            keys = { "f", "F", "t", "T" }
        }
    }
})


vim.keymap.set("n", "<leader>s", function() flash.jump() end, { desc = "Flash Jump" })

vim.keymap.set("n", "f", function() flash.jump({ mode = "char" }) end)
vim.keymap.set("n", "F", function() flash.jump({ mode = "char", search = { forward = false } }) end)

vim.keymap.set("n", "<leader>/", function() flash.jump({ mode = "search" }) end)
