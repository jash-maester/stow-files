local ts = require 'nvim-treesitter.configs'
ts.setup {
	ensure_installed = 'maintained',
	highlight = {enable = true},
	refactor = {
		highlight_definitions = { enable = true },
		highlight_current_scope = { enable = true},
		smart_rename = {
			enable = true,
			keymaps = {
				smart_rename = "grr",
			},
		},
	},
}
