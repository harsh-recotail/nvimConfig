return{
  {
    'akinsho/toggleterm.nvim',
    version = "*",
    -- opts = {
    --   direction = "float",
    --   insert_mappings = true,
    --   terminal_mappings = true,
    -- }
    config = function()
      require'toggleterm'.setup {
        direction = "vertical",
        size =  function(term)
          if term.direction == "horizontal" then
            return 15
          elseif term.direction == "vertical" then
            return vim.o.columns * 0.3
          end
        end,
        start_in_insert = false,
        autochdir = true,
        hide_numbers = false,
        insert_mappings = true,
        terminal_mappings = true,
        shade_terminals = false,
        title_pos = "center",
        open_mapping = [[<c-t>]]
      }
      -- local opts = {buffer = 0}
      vim.keymap.set('t', '<esc>', [[<C-t><C-n>]], {})
      -- vim.keymap.set('t', 'jk', [[<C-t><C-n>]], {})
      vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], {})
      vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], {})
      vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], {})
      vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], {})
      vim.keymap.set('t', '<C-w>', [[<C-\><C-n><C-w>]], {})
    end
  }
}
