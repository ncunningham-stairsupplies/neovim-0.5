-- GENERAL
--
require('vim-settings')
require('keymap')
require('colors')
require('utils')
require('auto')

-- PLUGINS
require('plugins')
require('plugins/telescope')
require('plugins/treesitter')
require('plugins/whichkey')
require('plugins/nvim-autopairs')
require('plugins/nvim-comment')
require('plugins/neuron')
-- require('plugins/nvim-compe')
-- require('plugins/trouble')
require('plugins/nvim-tree')
require('plugins/github-theme')
-- require('plugins/coc')
-- LSP
-- require('lsp')
vim.cmd('source ' .. '/home/nathanael/.config/nvim/lua/plugins/coc.vim')
vim.cmd('source ' .. '/home/nathanael/.config/nvim/vim-keymap.vim')
