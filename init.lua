<<<<<<< HEAD
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)


vim.g.mapleader = " "
vim.g.maplocalleader = " "


require('lazy').setup('shaddy.plugins')
vim.cmd [[colorscheme gruvbox]]
require('shaddy.keymaps')
require('shaddy.autocmds')
require('shaddy.options')
-- Set colorscheme



-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

=======
require "user.colorscheme"
require "user.autocmds"
require "user.options"
require "user.keymaps"
require "user.plugins"
require "user.transparent"
require "user.impatient"
require "user.lsp"
--[[ require "user.cmp" ]]    --lazyloaded
require "user.telescope"
--[[ require "user.treesitter" ]] --lazyloaded
require "user.autopairs"
require "user.dashboard"
require "user.comment"
--[[ require "user.gitsigns" ]] --lazyloaded
require "user.nvim-tree"
require "user.bufferline"
require "user.compitest"
require "user.toggleterm"
require "user.colorozer"
--[[ require "user.lualinethemes.lualine" ]]
require "user.lualinethemes.lualine1"


>>>>>>> main
