return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	opts = {
		filesystem = {
		  window = {
			mappings = {
			  ["."] = "toggle_hidden",
			  ["H"] = "set_root",
			},
		  },
		},
		window = {
		  mappings = {
			["l"] = "open",
			["h"] = "close_node",
		  },
		},
	  },
}
