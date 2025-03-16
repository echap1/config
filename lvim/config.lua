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
    "loctvl842/monokai-pro.nvim",
    config = function()
      require("monokai-pro").setup({
        filter = "spectrum",
        overridePalette = function(filter)
          return {
            dark2 = "#101010",
            dark1 = "#131313",
            background = "#161616",
            -- text = "#C0CAF5",
            -- accent1 = "#f7768e",
            -- accent2 = "#7aa2f7",
            -- accent3 = "#e0af68",
            -- accent4 = "#9ece6a",
            -- accent5 = "#0DB9D7",
            -- accent6 = "#9d7cd8",
            -- dimmed1 = "#737aa2",
            -- dimmed2 = "#787c99",
            -- dimmed3 = "#363b54",
            -- dimmed4 = "#363b54",
            -- dimmed5 = "#16161e",
          }
        end
      })
    end
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
  },
  { "tpope/vim-surround" },
}

local builtin = require('telescope.builtin')

lvim.builtin.nvimtree.setup.sync_root_with_cwd = true
lvim.builtin.nvimtree.setup.respect_buf_cwd = true
lvim.builtin.nvimtree.setup.update_cwd = true

-- set and delete to get rid of git file map
vim.keymap.set('n', '<leader>yf', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>yg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>yb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>yh', builtin.help_tags, { desc = 'Telescope help tags' })

lvim.colorscheme = "monokai-pro";

lvim.keys.normal_mode["|"] = ":vsplit<CR>"
lvim.keys.normal_mode["-"] = ":split<CR>"

vim.cmd("set nohlsearch")
