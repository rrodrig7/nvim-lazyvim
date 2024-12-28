-- [[ Basic Keymaps ]]
--  NOTE: Must happen before plugins are required (otherwise wrong leader will be used)
vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- better window movement
vim.api.nvim_set_keymap("n", "<C-h>", "<C-w>h", { silent = true })
vim.api.nvim_set_keymap("n", "<C-j>", "<C-w>j", { silent = true })
vim.api.nvim_set_keymap("n", "<C-k>", "<C-w>k", { silent = true })
vim.api.nvim_set_keymap("n", "<C-l>", "<C-w>l", { silent = true })

vim.keymap.set("n", "<leader>sa", "ggVG<c-$>") -- easy select all file
vim.keymap.set("n", "<leader>w", "<cmd>:w<CR>") -- easier save
vim.keymap.set("n", "<leader><tab>", "<c-^>") --toggel between last 2 buffers
vim.keymap.set("x", "<s-tab>", "<gv") -- Indenting < in visual mode
vim.keymap.set("x", "<tab>", ">gv") -- Indenting >  in visual mode

-- Remap for dealing with word wrap
vim.keymap.set("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- navigate up and down
vim.keymap.set("n", "<C-d>", "<C-d>zz") -- navigate down and keep centered
vim.keymap.set("n", "<C-u>", "<C-u>zz") -- navigate up and keep centered
vim.keymap.set("n", "n", "nzzzv") -- when search keep centered
vim.keymap.set("n", "N", "Nzzzv") -- when search keep centered

-- Increase and decrease numbers
vim.keymap.set("n", "<leader>+", "<C-a>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>-", "<C-x>", { noremap = true, silent = true })

-- better window movement
-- vim.api.nvim_set_keymap("n", "<leader>h", "<C-w>h", { silent = true })
-- vim.api.nvim_set_keymap("n", "<leader>j", "<C-w>j", { silent = true })
-- vim.api.nvim_set_keymap("n", "<leader>k", "<C-w>k", { silent = true })
-- vim.api.nvim_set_keymap("n", "<leader>l", "<C-w>l", { silent = true })

-- [[ Highlight on yank ]]
-- See `:help vim.highlight.on_yank()`
local highlight_group = vim.api.nvim_create_augroup("YankHighlight", { clear = true })
vim.api.nvim_create_autocmd("TextYankPost", {
	callback = function()
		vim.highlight.on_yank()
	end,
	group = highlight_group,
	pattern = "*",
})
