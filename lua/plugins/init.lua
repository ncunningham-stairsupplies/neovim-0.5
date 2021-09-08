local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({
        'git', 'clone', 'https://github.com/wbthomason/packer.nvim',
        install_path
    })
    execute 'packadd packer.nvim'
end

if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({
        'git', 'clone', 'https://github.com/wbthomason/packer.nvim',
        install_path
    })
    execute 'packadd packer.nvim'
end

-- Autocompile
vim.cmd 'autocmd BufWritePost init.lua PackerCompile'

return require('packer').startup(function(use)
    -- Package Manager
    use 'wbthomason/packer.nvim'
    use {
        'neoclide/coc.nvim',
        branch='release'
    }
    -- LSP
    use 'neovim/nvim-lspconfig'
    use 'glepnir/lspsaga.nvim'
    use 'kabouzeid/nvim-lspinstall'
    use 'hrsh7th/nvim-compe'
    use {
      "folke/trouble.nvim",
      requires = "kyazdani42/nvim-web-devicons",
      config = function()
        require("trouble").setup {
        }
      end
    }
    use 'jose-elias-alvarez/nvim-lsp-ts-utils'

    -- file search
	use {'nvim-telescope/telescope.nvim',
  		requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}, {'nvim-telescope/telescope-fzy-native.nvim'}, {'nvim-telescope/telescope-media-files.nvim'}}
	}

    --General
    use 'folke/which-key.nvim'
    use 'windwp/nvim-autopairs'
    use 'terrortylor/nvim-comment'
    use 'kyazdani42/nvim-tree.lua'

    --Themeing
    use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
    use 'projekt0n/github-nvim-theme'
    use 'rakr/vim-two-firewatch'
    use 'folke/tokyonight.nvim'
    use 'tomasiser/vim-code-dark'
    use 'pantharshit00/vim-prisma'
    -- use 'victorhqc/tree-sitter-prisma'
    use 'jparise/vim-graphql'
    use 'vim-pandoc/vim-pandoc'
    use 'vim-pandoc/vim-pandoc-syntax'

    -- Git manager
    use 'tpope/vim-fugitive'

    -- jira
    use 'n0v1c3/vira'
    use 'NTBBloodbath/rest.nvim'

    use "oberblastmeister/neuron.nvim"
    use 'mustache/vim-mustache-handlebars'

end)
