return {
	"nvim-treesitter/nvim-treesitter",
	-- dependencies = {
	-- 	{
	-- 		"andymass/vim-matchup",
	-- 		init = function()
	-- 			vim.g.matchup_matchparen_deferred = 1
	-- 			vim.g.matchup_matchparen_hi_surround_always = 1
	-- 			vim.g.matchup_matchparen_offscreen = { method = "popup" }
	-- 		end,
	-- 	},
	-- },
	opts = {
		ensure_installed = {
			"bash",
			"dockerfile",
			"go",
			"hcl",
			"json",
			"lua",
			"markdown",
			"nix",
			"python",
			"ruby",
			"terraform",
			"yaml",
		},
		indent = {
			enable = true,
			-- disable = {
			--   "python"
			-- },
		},
	},
}
