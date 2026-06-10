local colors = {
	red = "#EA6962",
	green = "#A9B665",
	blue = "#7DAEA3",
	yellow = "#D8A657",
	purple = "#D3869B",
	orange = "#E78A4E",
	aqua = "#89B482",
	black = "#1D2021",

	bg_dim = "#252423",
	bg0 = "#32302F",
	bg1 = "#3C3836",
	bg2 = "#504945",
	bg3 = "#665C54",

	fg0 = "#D4BE98",
	fg1 = "#DDC7A1",

	grey0 = "#7C6F64",
	grey1 = "#928374",
	grey2 = "#A89984",
}

return {
	normal = {
		a = { bg = colors.green, fg = colors.black, gui = "bold" },
		b = { bg = colors.bg0, fg = colors.fg0 },
		c = { bg = colors.bg1, fg = colors.fg1 },
	},
	insert = {
		a = { bg = colors.yellow, fg = colors.black, gui = "bold" },
		b = { bg = colors.bg0, fg = colors.fg0 },
		c = { bg = colors.bg1, fg = colors.fg1 },
	},
	visual = {
		a = { bg = colors.blue, fg = colors.black, gui = "bold" },
		b = { bg = colors.bg0, fg = colors.fg0 },
		c = { bg = colors.grey0, fg = colors.black },
	},
	replace = {
		a = { bg = colors.red, fg = colors.black, gui = "bold" },
		b = { bg = colors.bg0, fg = colors.fg0 },
		c = { bg = colors.bg1, fg = colors.fg1 },
	},
	command = {
		a = { bg = colors.purple, fg = colors.black, gui = "bold" },
		b = { bg = colors.bg0, fg = colors.fg0 },
		c = { bg = colors.grey0, fg = colors.black },
	},
	inactive = {
		a = { bg = colors.bg0, fg = colors.grey0, gui = "bold" },
		b = { bg = colors.bg0, fg = colors.grey0 },
		c = { bg = colors.bg0, fg = colors.grey0 },
	},
}
