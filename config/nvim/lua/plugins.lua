local install_path = vim.fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
local url = 'https://github.com/wbthomason/packer.nvim'

if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  packer_bootstrap = vim.fn.system({'git', 'clone', '--depth', '1', url, install_path})
end

require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  -- Chrome
  use 'vim-airline/vim-airline'
  use 'vim-airline/vim-airline-themes'

  -- Fuzzy finder
  use 'junegunn/fzf'

  -- Navigation
  use 'scrooloose/nerdtree'

  -- Git
  use 'tpope/vim-fugitive'

  -- Completion
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/vim-vsnip'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-vsnip'
    
  if packer_bootstrap then
    require('packer').sync()
  end
end)

