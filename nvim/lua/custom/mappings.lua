---@type MappingsTable
local M = {}

M.general = {
	-- visual block 
	x = {
		['l'] = {
			function()
				if vim.b.table_mode_active == 1 then 
					vim.api.nvim_feedkeys('f|2l', 'n', false)
				else
					vim.api.nvim_feedkeys('l', 'n', false)
				end
			end,
			"Table move right"
	 	},
		['h'] = {
			function()
				if vim.b.table_mode_active == 1 then 
					vim.api.nvim_feedkeys('2F|2l', 'n', false)
				else
					vim.api.nvim_feedkeys('h', 'n', false)
				end
			end,
			"Table move right"
	 	},
	},
  n = {
		-- open nvim config
	 -- ['<leader>nv'] = { ':execute "!tmux new-window -c ~/.config/nvim; nvim"<CR>', "Edit Config" },
	 -- ['<leader>nv'] = { ':silent !tmux new-window -n nvim_config "nvim ~/.config/nvim<CR> -c \":Telescope find_files\""', "Edit Config" },
	 ['<leader>nv'] = { ':silent !tmux new-window  -c ~/.config/nvim \'nvim -c ":Telescope find_files"\'<CR>', "Edit Config" },
		-- tmux navigation
		["<C-h>"] = { ":TmuxNavigateLeft<CR>", "window left"},
		["<C-l>"] = { ":TmuxNavigateRight<CR>", "window right"},
		["<C-j>"] = { ":TmuxNavigateDown<CR>", "window down"},
		["<C-k>"] = { ":TmuxNavigateUp<CR>", "window up"},
		["<S-h>"] = { ":bprev<CR>", "Previous tab"},
		["<S-l>"] = { ":bnext<CR>", "Next tab"},
		["<M-h>"] = { ":silent !tmux previous-window<CR>", "Previous window"},
		["<M-l>"] = { ":silent !tmux next-window<CR>", "Next window"},
		["<C-t>"] = { ":silent !tmux new-window<CR>", "New window"},
		-- verse insertion
		["@v"] = { ":ESV<CR>", "Get ESV Verse"},
		-- table movement
		['l'] = {
			function()
				if vim.b.table_mode_active == 1 then 
					vim.api.nvim_feedkeys('f|2l', 'n', false)
				else
					vim.api.nvim_feedkeys('l', 'n', false)
				end
			end,
			"Table move right"
	 	},
		['h'] = {
			function()
				if vim.b.table_mode_active == 1 then 
					vim.api.nvim_feedkeys('2F|2l', 'n', false)
				else
					vim.api.nvim_feedkeys('h', 'n', false)
				end
			end,
			"Table move right"
	 	},
		['o'] = {
			function()
				if vim.b.table_mode_active == 1 then 
					vim.api.nvim_feedkeys('o| ', 'n', false)
				else
					vim.api.nvim_feedkeys('o', 'n', false)
				end
			end,
			"Table new row below"
	 	},
		['O'] = {
			function()
				if vim.b.table_mode_active == 1 then 
					vim.api.nvim_feedkeys('O| ', 'n', false)
				else
					vim.api.nvim_feedkeys('O', 'n', false)
				end
			end,
			"Table new row above"
	 	},
		-- ['y'] = {
		-- 	function()
		-- 		if vim.b.table_mode_active == 1 then 
		-- 			vim.api.nvim_feedkeys('t|vT|yl', 'n', false)
		-- 		else
		-- 			vim.api.nvim_feedkeys('y', 'n', false)
		-- 		end
		-- 	end,
		-- 	"Table copy cell"
	 -- 	},
		-- ['p'] = {
		-- 	function()
		-- 		if vim.b.table_mode_active == 1 then 
		-- 			-- paste then recopy pasted line
		-- 			vim.api.nvim_feedkeys('t|vT|pT|lt|vT|yl', 'n', false)
		-- 		else
		-- 			vim.api.nvim_feedkeys('y', 'n', false)
		-- 		end
		-- 	end,
		-- 	"Table paste cell"
	 -- 	},
		['x'] = {
			function()
				if vim.b.table_mode_active == 1 then 
					vim.api.nvim_feedkeys('t|vT|yt|vT|r l', 'n', false)
				else
					vim.api.nvim_feedkeys('x', 'n', false)
				end
			end,
			"Table cut cell"
	 	},
		['s'] = {
			function()
				if vim.b.table_mode_active == 1 then 
					vim.api.nvim_feedkeys('t|vT|yt|vT|r li', 'n', false)
				else
					vim.api.nvim_feedkeys('s', 'n', false)
				end
			end,
			"Table substitute cell"
	 	},
		['r'] = {
			function()
				if vim.b.table_mode_active == 1 then 
					vim.api.nvim_feedkeys('t|vT|yt|vT|r lR', 'n', false)
				else
					vim.api.nvim_feedkeys('r', 'n', false)
				end
			end,
			"Table replace cell"
	 	},
		-- ['v'] = {
		-- 	function()
		-- 		if vim.b.table_mode_active == 1 then 
		-- 			-- vim.api.nvim_feedkeys('t|<C-v>T|l', 'n', false)
		-- 			vim.api.nvim_feedkeys('', 'n', false)
		-- 		else
		-- 			vim.api.nvim_feedkeys('v', 'n', false)
		-- 		end
		-- 	end,
		-- 	"Table replace cell"
	 -- 	},
		-- ['w'] = {
		-- 	function()
		-- 		if vim.b.table_mode_active == 1 then 
		-- 			vim.cmd[[
		-- 				normal! f|
		-- 				let pos = getpos('.')
		-- 				call search('\a', 'c', line('.'))
		-- 				call setpos('.', pos)
		-- 			]]
		-- 		else
		-- 			vim.api.nvim_feedkeys('l', 'n', false)
		-- 		end
		-- 	end,
		-- 	"Table move right"
	 -- 	},
  },
	i = {
		-- table movement
		['<tab>'] = {
			function()
				if vim.b.table_mode_active == 1 then 
					vim.api.nvim_feedkeys(' | ', 'n', false)
				else
					vim.api.nvim_feedkeys('	', 'n', false)
				end
			end,
			"Next cell"
	 	},
		-- ['<CR>'] = {
		-- 	function()
		-- 		if vim.b.table_mode_active == 1 then 
		-- 			vim.api.nvim_feedkeys(' | <CR>| ', 'n', false)
		-- 		else
		-- 			vim.api.nvim_feedkeys('<CR>', 'n', false)
		-- 		end
		-- 	end,
		-- 	"Next cell on new line"
	 -- 	},
	}
}


-- more keybinds!

return M
