vim.keymap.set("n", "-", "<cmd>Oil --float<CR>", { desc = "Open Parent Directory in Oil" })
vim.keymap.set("n", "<leader>cf", function()
	require("conform").format()
end, { desc = "Format the current file" })
