
return { 
  "lukas-reineke/indent-blankline.nvim", 
  main = "ibl",
  config = function()
    require('ibl').setup {
      scope = {
        show_start = false,
       show_end = false,
      },
      
    }

    -- Ensure the color is set after colorscheme is loaded
    vim.api.nvim_command('highlight IndentBlanklineChar guifg=#ff0000 gui=nocombine')
  end, 
  opts = {} 
}

