local au = vim.api.nvim_create_autocmd
-- hlsearch
au('CursorMoved', {
  group = group,
  callback = function()
    require('internal.hlsearch').start_hl()
  end,
})
au('InsertEnter', {
  group = group,
  callback = function()
    require('internal.hlsearch').stop_hl()
  end,
})

au('BufEnter', {
  group = group,
  once = true,
  callback = function()
    -- theme
    --vim.cmd.colorscheme('gruvbox')
    --vim.cmd.colorscheme('poimandres')
    --vim.cmd.colorscheme('nordz')
    --vim.cmd.colorscheme('solarized')
    vim.cmd.colorscheme('custom')

    -- keymap
    require('keymap')
  end,
})

