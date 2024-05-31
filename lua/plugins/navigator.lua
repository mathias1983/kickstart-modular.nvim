return {
  { -- Collection of various small independent plugins/modules
    'ray-x/navigator.lua',
    dependencies = {
      'nvim-telescope/telescope-live-grep-args.nvim',
      -- This will not install any breaking changes.
      -- For major updates, this must be adjusted manually.
      version = '^1.0.0',
      { 'ray-x/guihua.lua', build = 'cd lua/fzy && make' },
      { 'neovim/nvim-lspconfig' },
      { "nvim-treesitter/nvim-treesitter" },
      

    },
    config = function()
  
      
    --  require'navigator'.setup({lsp={servers={'intelephense', 'tsserver'}}})
    require'navigator'.setup({
      mason = true,
      lsp = {
        code_action = {enable = false, sign = false, sign_priority = 40, virtual_text = false},
      }
    })
    end,
  },
}
-- vim: ts=2 sts=2 sw=2 et
