-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Example configs: https://github.com/LunarVim/starter.lvim
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny

lvim.plugins = {
  {
    "Pocco81/auto-save.nvim",
    config = function()
      require("auto-save").setup()
    end,
  },
  {
    "sainnhe/sonokai"
  },
  {
    "Yazeed1s/minimal.nvim"
  },
  { "bluz71/vim-moonfly-colors" },
  {
    "ray-x/lsp_signature.nvim" ,
    config = function()
      require("lsp_signature").setup({})
    end,
  }
}

local builtin = require('telescope.builtin')

-- set and delete to get rid of git file map
vim.keymap.set('n', '<leader>hf', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>hg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>hb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>hh', builtin.help_tags, { desc = 'Telescope help tags' })

lvim.colorscheme = "sonokai";

lvim.keys.normal_mode["|"] = ":vsplit<CR>"
lvim.keys.normal_mode["-"] = ":split<CR>"

vim.cmd("set nohlsearch")
