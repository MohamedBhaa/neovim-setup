return {
	"ibhagwan/fzf-lua",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	-- dependencies = { "nvim-mini/mini.icons" },
	---@module "fzf-lua"
	---@type fzf-lua.Config|{}
	---@diagnostic disable: missing-fields
	config = function(_, opts)
		require("fzf-lua").setup(opts)
		require("fzf-lua").register_ui_select()
	end,
	---@diagnostic enable: missing-fields
	keys = {
		{
			"<leader>ff",
			function()
				require("fzf-lua").files({ cwd = "~" })
			end,
			desc = "[F]uzzyFind [F]ile",
		},
		{
			"<leader>fc",
			function()
				require("fzf-lua").files()
			end,
			desc = "[F]uzzyFind [C]urrent directoy",
		},
		{
			"<leader>fs",
			function()
				require("fzf-lua").files({ cwd = vim.fn.stdpath("config") })
			end,
			desc = "[F]uzzyFind [S]ettings",
		},
		{
			"<leader>fg",
			function()
				require("fzf-lua").live_grep()
			end,
			desc = "[F]uzzyFind [G]rep",
		},
		{
			"<leader>fh",
			function()
				require("fzf-lua").helptags()
			end,
			desc = "[F]uzzyFind [H]elp",
		},
		{
			"<leader>fk",
			function()
				require("fzf-lua").keymaps()
			end,
			desc = "[F]uzzyFind [K]eymaps",
		},
		{
			"<leader>fb",
			function()
				require("fzf-lua").builtin()
			end,
			desc = "[F]uzzyFind [B]uil-in",
		},
		{
			"<leader>fr",
			function()
				require("fzf-lua").resume()
			end,
			desc = "[F]uzzyFind [R]esume",
		},
		{
			"<leader>?",
			function()
				require("fzf-lua").lgrep_curbuf()
			end,
			desc = "[?] grep inside the current buffer",
		},
	},
}
