return {
  { -- Collection of various small independent plugins/modules
    'echasnovski/mini.surround',
    config = function()
  
      -- Add/delete/replace surroundings (brackets, quotes, etc.)
      --
      -- - saiw) - [S]urround [A]dd [I]nner [W]ord [)]Paren
      -- - sd'   - [S]urround [D]elete [']quotes
      -- - sr)'  - [S]urround [R]eplace [)] [']
      require('mini.surround').setup()
    end,
  },
}
-- vim: ts=2 sts=2 sw=2 et
