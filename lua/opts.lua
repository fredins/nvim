vim.opt.number 	       = true
vim.opt.relativenumber = true
vim.opt.incsearch      = true
vim.opt.tabstop        = 2
vim.opt.softtabstop    = 2
vim.opt.shiftwidth     = 2
vim.opt.expandtab      = true
vim.opt.smartindent    = false
vim.opt.cindent        = false
vim.opt.autoindent     = false
vim.opt.hlsearch       = false
vim.opt.swapfile       = false
vim.opt.wrap           = false
vim.opt.backup         = false 
vim.opt.clipboard:append('unnamedplus')
vim.opt.scrolloff      = 10
vim.opt.completeopt    = 'menu,menuone,noselect'
vim.opt.conceallevel   = 2
vim.opt.concealcursor  = 'nvic'
vim.opt.termguicolors  = true

-- haskell
vim.g.mapleader = " "
vim.g.tex_flavor = "latex"

vim.g.haskell_enable_quantification   = 1  -- to enable highlighting of `forall`
vim.g.haskell_enable_recursivedo      = 1  -- to enable highlighting of `mdo` and `rec`
vim.g.haskell_enable_arrowsyntax      = 1  -- to enable highlighting of `proc`
vim.g.haskell_enable_pattern_synonyms = 1  -- to enable highlighting of `pattern`
vim.g.haskell_enable_typeroles        = 1  -- to enable highlighting of type roles
vim.g.haskell_enable_static_pointers  = 1  -- to enable highlighting of `static`
vim.g.haskell_backpack                = 1  -- to enable highlighting of backpack keywords
vim.g.haskell_classic_highlighting    = 0

-- colorscheme 
local theme = 'light'
local yellowBackground = true

local colors = yellowBackground 
  and
  {
    color07                = {'#111111', '0'},
    color00                = {'#fdf6e3', ''},
    cursor_fg              = {'#fdf6e3', ''},
    cursorlinenr_bg        = {'#fdf6e3', ''},
    linenumber_bg          = {'#fdf6e3', ''},
    vertsplit_bg           = {'#fdf6e3', ''},
    todo_bg                = {'#fdf6e3', ''},
    visual_fg              = {'#fdf6e3', ''},
    visual_fg              = {'#fdf6e3', ''},
    tabline_inactive_fg    = {'#fdf6e3', ''},
    buftabline_active_fg   = {'#fdf6e3', ''},
    buftabline_inactive_fg = {'#fdf6e3', ''},
  }
  or 
  {
    color07 = {'#111111', '0'},
  }

if theme == 'light' then 
  vim.g.PaperColor_Theme_Options = { 
    theme = {
      default = {
        transparent_background = 0,
        override = colors
      }
    }
  } 
end
vim.opt.background = theme
vim.cmd('colorscheme PaperColor')

vim.cmd('syntax on')
vim.cmd('filetype plugin indent on')
