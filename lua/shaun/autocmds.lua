vim.api.nvim_create_autocmd("FileType", {
	pattern = "tex",
	callback = function()
		vim.schedule(function()
			vim.cmd("setlocal spell")
			vim.cmd("setlocal spelllang=en_gb")
			vim.cmd("setlocal textwidth=80")
			vim.cmd("setlocal spellfile=~/.config/nvim/spell/en.utf-8.add")
		end)
	end,
})
