return {
	"Exafunction/codeium.vim",
	event = "BufEnter",
	config = function()
		-- Change '<C-g>' here to any keycode you like.
		-- vim.keymap.set("i", "<C-g>", function()
		-- 	return vim.fn["codeium#Accept"]()
		-- end, { expr = true, silent = true })
		-- vim.keymap.set("i", "<c-;>", function()
		-- 	return vim.fn["codeium#CycleCompletions"](1)
		-- end, { expr = true, silent = true })
		-- vim.keymap.set("i", "<c-,>", function()
		-- 	return vim.fn["codeium#CycleCompletions"](-1)
		-- end, { expr = true, silent = true })
		-- vim.keymap.set("i", "<c-x>", function()
		-- 	return vim.fn["codeium#Clear"]()
		-- end, { expr = true, silent = true })
		vim.keymap.set("n", "<leader>ce", "<cmd>:CodeiumEnable<CR>", { desc = "Enable" })
		vim.keymap.set("n", "<leader>cd", "<cmd>:CodeiumDisable<CR>", { desc = "Disable" })
	end,
}
