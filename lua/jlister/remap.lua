-- VIM.KEYMAPS
vim.g.mapleader = ' '
vim.keymap.set('n', '<Leader>pv', vim.cmd.Ex)

-- Harpoon 'File Switching'
vim.keymap.set('n', '<C-a>', ":lua require('harpoon.mark').add_file()<CR>")
vim.keymap.set('n', '<C-e>', ":lua require('harpoon.ui').toggle_quick_menu()<CR>")

-- Snippets to make life easier
vim.keymap.set('n', '<Leader>fn',
  function()
    if vim.bo.filetype == "lua" then
      return '0ifunction()^Mend<Esc>'
    end
  end
)

