local install_path = vim.fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
local url = 'https://github.com/wbthomason/packer.nvim'

if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  packer_bootstrap = vim.fn.system({'git', 'clone', '--depth', '1', url, install_path})
end

require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'neovim/nvim-lspconfig'
  use 'vim-airline/vim-airline'
  use 'vim-airline/vim-airline-themes'
  use 'junegunn/fzf'
  use 'scrooloose/nerdtree'
    
  if packer_bootstrap then
    require('packer').sync()
  end
end)
