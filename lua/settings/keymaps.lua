local api = vim.api
local cmd = vim.cmd
local keymap = api.nvim_set_keymap

vim.g.mapleader = " "

keymap('n', '<leader>nt', ':NvimTreeToggle<CR>', {noremap=true, silent=false})
keymap('n', '<leader>wq', ':wq<CR>', { noremap = true })

keymap('n', '<leader>q', ':q<CR>', { noremap = true })
keymap('n', '<leader>aj', ':qa<CR>', { noremap = true })
keymap('n', '<leader>w', ':w<CR>', { noremap = true })
keymap('n', '<leader>bd', ':bd<CR>', { noremap = true })

cmd('nmap <silent>; $a;<ESC>')
cmd('nmap <silent>, $a,<ESC>')

keymap('n', '<leader>kp', ':let @*=expand("%")<CR>',  {noremap=true })

keymap('n', '<leader>jvs', ':!node %<CR>',  {noremap=true })
keymap('n', '<leader>py', ':!python3 %<CR>',  {noremap=true })
keymap('n', '<leader>jv', ':!java %<CR>',  {noremap=true })

keymap('n', '<leader>r', ':TransparentToggle<CR>', { noremap = true })

cmd('cnoreabbrev W! w!')
cmd('cnoreabbrev Q! q!')
cmd('cnoreabbrev Qall! qall!')
cmd('cnoreabbrev Wq wq')
cmd('noreabbrev Wa wa')
cmd('cnoreabbrev wQ wq')
cmd('cnoreabbrev WQ wq')
cmd('cnoreabbrev W w')
cmd('cnoreabbrev Q q')
cmd('cnoreabbrev Qall qall')

keymap('n', '<leader>t', ':ToggleTerm size=10 direction=float<cr>', { noremap = false })

keymap('n', '<leader><tab>', ':bn<cr>', { noremap = true })
keymap('n', '<leader><s-tab>', ':bp<cr>', { noremap = true })

keymap('n', '<leader>ranger', ':RnvimrToggle<cr>', {})

keymap('n', '<leader>ff', ':Telescope find_files<cr>', {})
keymap('n', '<leader>fb', ':Telescope buffers<cr>', {})
keymap('n', '<leader>cs', ':Telescope colorscheme', {})
