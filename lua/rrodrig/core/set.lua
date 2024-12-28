vim.cmd("let g:netrw_liststyle = 3")
vim.o.hlsearch = false -- Set highlight on search
vim.wo.number = true -- Make line numbers default
vim.wo.relativenumber = true
vim.o.mouse = "a" -- Enable mouse mode
vim.o.breakindent = true -- Enable break indent
vim.o.undofile = true -- Save undo history
vim.o.ignorecase = true -- Case insensitive searching UNLESS /C or capital in search
vim.o.smartcase = true
vim.o.updatetime = 50 -- Decrease update time
vim.wo.signcolumn = "yes"
vim.opt.colorcolumn = "90"
vim.o.termguicolors = true -- Set colorscheme
vim.o.completeopt = "menuone,noselect" -- Set completeopt to have a better completion experience
vim.o.background = "dark"
vim.opt.cursorline = true -- highlight current line
vim.opt.cursorcolumn = true
vim.opt.backspace = "indent,eol,start"
vim.opt.scrolloff = 8 -- lines of context
vim.opt.clipboard = "unnamedplus"
vim.opt.smartindent = true -- insert indents automatically vim.opt.splitright = true -- put new windows below current vim.opt.splitbelow = true -- put new windows below current vim.opt.swapfile = false
vim.opt.fileencoding = "utf-8"
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.wrap = true
vim.highlight.colorcolumn = "black"
-- Preview substitutions live, as you type!
vim.opt.inccommand = "split"

-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
-- vim.opt.list = true
-- vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }
