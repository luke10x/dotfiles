require("luke.plugins-setup")
require("luke.core.options")
require("luke.core.keymaps")
require("luke.core.colorscheme")
require("luke.plugins.comment")
require("luke.plugins.nvim-tree")
require("luke.plugins.lualine")
require("luke.plugins.telescope")
require("luke.plugins.nvim-cmp")
require("luke.plugins.lsp.mason")

-- lspsaga has to be above the lspconfig
require("luke.plugins.lsp.lspsaga")
require("luke.plugins.lsp.lspconfig")
require("luke.plugins.lsp.null-ls")
require("luke.plugins.autopairs")
require("luke.plugins.treesitter")
require("luke.plugins.gitsigns")

