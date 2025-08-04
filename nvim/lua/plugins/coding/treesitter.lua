return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    require('nvim-treesitter.configs').setup({
      ensure_installed = {
        'lua',
        'vim',
        'json',
        'markdown',
        'markdown_inline',
      },
      sync_install = false,
      auto_install = false,
      highlight = { enable = true },
      indent = { enable = true },
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = '<CR>',
          scope_incremental = false,
          node_incremental = '<CR>',
          node_decremental = '<BS>',
        },
      },
      markdown = { enable = true },
      markdown_inline = { enable = true },
    })
  end,
}
