vim.lsp.enable('eslint')
vim.lsp.enable('ts-ls')
vim.lsp.enable('astro')
vim.lsp.enable('tailwindcss')

require('mason-tool-installer').setup({
  ensure_installed = {
    'eslint-lsp',
    'typescript-language-server',
    'astro-language-server',
    'tailwindcss-language-server',
    'prettier',
  },
})

require('lint').linters_by_ft = {
  javascript = { 'eslint' },
  javascriptreact = { 'eslint' },
  typescript = { 'eslint' },
  typescriptreact = { 'eslint' },
  astro = { 'eslint' },
  svelte = { 'eslint' },
}

require('conform').setup({
  opts = {
    formatters_by_ft = {
      javascript = { 'prettier' },
      javascriptreact = { 'prettier' },
      typescript = { 'prettier' },
      typescriptreact = { 'prettier' },
      astro = { 'prettier' },
      svelte = { 'prettier' },
      html = { 'prettier' },
      css = { 'prettier' },
    },
  },
})

require('nvim-treesitter').opts = function(_, opts)
  vim.list_extend(opts.ensure_installed, { 'javascript', 'typescript', 'astro', 'svelte', 'html', 'css' })
  opts.ensure_installed = vim.tbl_flatten({ opts.ensure_installed })
  local seen = {}
  local unique = {}
  for _, lang in ipairs(opts.ensure_installed) do
    if not seen[lang] then
      unique[#unique + 1] = lang
      seen[lang] = true
    end
  end
  opts.ensure_installed = unique
end

return {
  'windwp/nvim-ts-autotag',
  event = 'VeryLazy',
  config = function()
    require('nvim-ts-autotag').setup()
  end,
}
