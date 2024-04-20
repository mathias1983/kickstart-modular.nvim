return {
  {
    "ibhagwan/fzf-lua",
    -- optional for icon support
    dependencies = { "nvim-tree/nvim-web-devicons" },
    
    config = function()
      -- calling `setup` is optional for customization
      require("fzf-lua").setup({
        -- Configure the file search
        files = {
          -- Make sure the search is rooted in the current working directory
          cmd = 'rg --files --hidden --follow --glob "!.git/*"',
          -- Start search in the current working directory
          cwd = vim.fn.getcwd()
        }
      })

       
      --vim.keymap.set("n", "<c-p>", "<cmd>lua require('fzf-lua').git_files()<CR>", { silent = true })
      --vim.keymap.set("n", "<c-ü>", "<cmd>lua require('fzf-lua').live_grep_glob()<CR>", { silent = true })



    
    end
  },
}
-- vim: ts=2 sts=2 sw=2 et
