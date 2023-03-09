vim.api.nvim_create_autocmd("FileType", {
  pattern = "lua",
  callback = function()
    vim.schedule(function()
      print("lua file detected")
    end)
  end,
})
--
-- vim.api.nvim_create_autocmd("FileType", {
--   pattern = "lua",
--   callback = function()
--     vim.schedule(function()
--       print("lua file detected")
--     end)
--   end,
-- })

-- vim.api.nvim_create_autocmd('BufEnter', {
--   pattern = {'*.lua'},
--   group = group,
--   command = 'setlocal wrap'
-- })
