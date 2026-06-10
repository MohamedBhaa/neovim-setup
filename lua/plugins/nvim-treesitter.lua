return {
	"nvim-treesitter/nvim-treesitter",
	branch = "main",
	lazy = false,
	build = ":TSUpdate",
	opts = {},
	init = function()
		local ignore = { oil = true }

		-- Auto-install parsers for filetypes you open, if not already installed
		vim.api.nvim_create_autocmd("FileType", {
			callback = function(ev)
				if ignore[ev.match] then
					return
				end

				local lang = vim.treesitter.language.get_lang(ev.match)
				if not lang then
					return
				end
				local ok = pcall(vim.treesitter.language.inspect, lang)
				if not ok then
					require("nvim-treesitter").install({ lang })
				end
			end,
		})
	end,
}
