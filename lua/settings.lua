vim.cmd([[let g:python3_host_prog = '/usr/bin/python3']])
vim.cmd([[let g:loaded_python_provider = 0]])
vim.cmd([[let g:loaded_ruby_provider = 0]])
vim.cmd([[let g:loaded_perl_provider = 0]])
vim.cmd([[set title]])
vim.cmd([[set number]])
vim.cmd([[set mouse=a]])
vim.cmd([[set autoread]])
vim.cmd([[set clipboard+=unnamedplus]])
vim.cmd([[autocmd BufEnter,CursorHold,CursorHoldI * if mode() != 'c' | checktime | endif]])
vim.cmd([[ set termguicolors ]])
vim.cmd([[ colorscheme onedark ]])
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

require('lualine').setup {
  options = {
    theme = 'onedark',
    icons_enabled = true,
  }
}

require('nvim-treesitter-settings')
require('nvim-telescope-settings')
