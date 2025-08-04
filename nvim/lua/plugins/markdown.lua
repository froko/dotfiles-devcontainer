vim.api.nvim_create_autocmd('FileType', {
  pattern = 'markdown',
  callback = function(args)
    vim.treesitter.start(args.buf, 'markdown')
  end,
})

return {
  {
    'MeanderingProgrammer/render-markdown.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons', },
    opts = {
      latex = { enabled = false },
    },
    config = function(_, opts)
      require('render-markdown').setup(opts)
      require('lint').linters_by_ft.markdown = { 'markdownlint-cli2' }
    end,
  },
}
