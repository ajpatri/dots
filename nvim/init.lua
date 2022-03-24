require 'plugins'

vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.signcolumn = 'number'
vim.opt.timeoutlen = 300

vim.g.vscode_style = "dark"

vim.api.nvim_set_keymap("", "<Space>", "<Nop>", {noremap = true, silent=true})
vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.cmd [[
  "colorscheme vscode
  "colorscheme kanagawa
  "colorscheme dracula
  let g:sonokai_transparent_background=1

  colorscheme sonokai

  hi Normal ctermbg=NONE guibg=NONE
]]
