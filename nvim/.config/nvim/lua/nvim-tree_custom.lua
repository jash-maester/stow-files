require('nvim-tree').setup{
	nvim_tree_ignore = { '.git', 'node_modules', '.cache', '__pycache__', '.DS_Store' },
	nvim_tree_auto_close = 1,
	nvim_tree_highlight_opened_files = 1,
	nvim_tree_add_trailing = 1,
	nvim_tree_update_cwd = 1,
	-- nvim_tree_show_icons = { 'git': 1, 'folders': 1, 'files': 1, 'folder_arrows': 1 }
}
