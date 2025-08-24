require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = { "pyright", "lua_ls", "clangd", "zls", "rust_analyzer"},
})

local lspconfig = require("lspconfig")

lspconfig.lua_ls.setup({})
lspconfig.pyright.setup({})
lspconfig.clangd.setup({
  cmd = { "clangd", "--compile-commands-dir=build" },
  root_dir = require("lspconfig.util").root_pattern("compile_commands.json", "CMakeLists.txt", ".git")
})
lspconfig.zls.setup({
  cmd = { "zls" },
  filetypes = { "zig", "zir" },
  root_dir = require("lspconfig.util").root_pattern("build.zig", "zls.json", ".git"),
  single_file_support = true
})
lspconfig.rust_analyzer.setup({})
