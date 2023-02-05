local cmd = vim.cmd

-- This install packer if you don't have it installed yet
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

cmd [[packadd packer.nvim]]
return require('packer').startup(function(use)
  -- Don't delete this line
  use 'wbthomason/packer.nvim'

  -- Autocompletion
  use ('neoclide/coc.nvim', {branch = 'master'})
  use {'windwp/nvim-autopairs', config = function() require('nvim-autopairs').setup {} end}

  -- Themes and style
  use 'norcalli/nvim-colorizer.lua'
  use 'morhetz/gruvbox'
  use 'NTBBloodbath/doom-one.nvim'
  use 'catppuccin/nvim'
  use 'ayu-theme/ayu-vim'
  use 'marko-cerovac/material.nvim'
  use 'lukas-reineke/indent-blankline.nvim'
  use 'xiyaowong/nvim-transparent'

  -- Git indicator
  use 'airblade/vim-gitgutter'

  -- Syntax Highlighting
  use ('nvim-treesitter/nvim-treesitter', {['do'] = 'TSUpdate'})

  -- Better experience
  use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}
  use {'nvim-lualine/lualine.nvim', requires = {'kyazdani42/nvim-web-devicons', opt = true}}
  use {'nvim-tree/nvim-tree.lua', requires = {'nvim-tree/nvim-web-devicons',}, tag = 'nightly'}
  use 'mattn/emmet-vim'

  -- Plugin to comment lines
  use {'numToStr/Comment.nvim', config = function() require('Comment').setup() end}

  -- Better terminal
  use {'akinsho/toggleterm.nvim', tag = '*', config = function() require('toggleterm').setup() end}

  if packer_bootstrap then
    require('packer').sync()
  end
end)
