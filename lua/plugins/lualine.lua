return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	opts = {
		theme = "",
		-- component_separators = { left = "", right = "" },
		-- section_separators = { left = "", right = "" },
		refresh = {
			statusline = 500,
			tabline = 500,
			winbar = 1000,
			refresh_time = 16, -- ~60fps
		},
		events = {
			"WinEnter",
			"BufEnter",
			"BufWritePost",
			"SessionLoadPost",
			"FileChangedShellPost",
			"VimResized",
			"Filetype",
			"CursorMoved",
			"CursorMovedI",
			"ModeChanged",
		},
		sections = {
			lualine_a = { "mode" },
			lualine_b = { "branch", "diff", "diagnostics" },
			lualine_c = { "filename" },
			lualine_x = { "fileformat", "filetype" },
			lualine_z = { "location" },
		},
	},
}
