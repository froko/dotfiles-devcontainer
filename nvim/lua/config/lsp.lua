local nnoremap = require('utils').nnoremap
vim.lsp.enable('lua_ls')
vim.lsp.enable('marksman')

vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(ev)
    nnoremap('gd', vim.lsp.buf.definition, { buffer = ev.buf, desc = '[G]oto [D]efinition' })

    local client = vim.lsp.get_client_by_id(ev.data.client_id)
    if client:supports_method('textDocument/completion') then
      vim.opt.completeopt = { 'menu', 'menuone', 'noinsert', 'fuzzy', 'popup' }
      vim.lsp.completion.enable(true, client.id, ev.buf, { autotrigger = true })
      vim.keymap.set('i', '<C-p>', function()
        vim.lsp.completion.get()
      end)
    end
  end,
})

vim.diagnostic.config({
  virtual_lines = true,
})
