local cmd = vim.cmd

vim.cmd.colorscheme "doom-one"

vim.opt.list = true
vim.opt.listchars:append "eol:↴"

require("indent_blankline").setup {
    space_char_blankline = " ",
    show_current_context = true,
    show_current_context_start = true,
}
