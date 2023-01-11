-- The only thing I changed here is the keyblind "use Control and '_' to comment a line or a block"

require('Comment').setup({
    padding = true,
    sticky = true,
    ignore = nil,
    toggler = {
        line = '<c-_>',
        block = 'gbc',
    },
    opleader = {
        line = '<c-_>',
        block = 'gb',
    },
    extra = {
        above = 'gcO',
        below = 'gco',
        eol = 'gcA',
    },
    mappings = {
        basic = true,
        extra = true,
    },
    pre_hook = nil,
    post_hook = nil,
})
