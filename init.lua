require("user.options")
require("user.keymaps")
require("user.plugins")
require("user.colorscheme")
require("user.impatient")
require("user.cmp")
require("user.lsp")
require("user.comment")
require("user.telescope")
require("user.treesitter")
require("user.autopairs")
require("user.gitsigns")
require("user.nvim-tree")
require("user.colorizer")
require("user.project")
require("user.alpha")
require("user.indentline")
require("user.whichkey")
require("user.autocommands")
require("user.lualine")
require("user.toggleterm")
-- require("user.dap")
require("user.minimap")

vim.cmd("autocmd BufWinLeave *.* mkview")
vim.cmd("autocmd BufWinEnter *.* silent loadview")


require'nvim-treesitter.configs'.setup {
  autotag = {
    enable = true,
  }
}
