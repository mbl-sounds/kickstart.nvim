-- [[ Install `lazy.nvim` plugin manager ]]
--    See `:help lazy.nvim.txt` or https://github.com/folke/lazy.nvim for more info
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.uv.fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  local out = vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
  if vim.v.shell_error ~= 0 then
    error('Error cloning lazy.nvim:\n' .. out)
  end
end ---@diagnostic disable-next-line: undefined-field
vim.opt.rtp:prepend(lazypath)

-- [[ Configure and install plugins ]]
--
--  To check the current status of your plugins, run
--    :Lazy
--
--  You can press `?` in this menu for help. Use `:q` to close the window
--
--  To update plugins you can run
--    :Lazy update
--
require('lazy').setup({
  require 'matthias.plugins.vim-sleuth',
  require 'matthias.plugins.gitsigns',
  require 'matthias.plugins.which-key',
  require 'matthias.plugins.treesitter',
  require 'matthias.plugins.telescope',
  require 'matthias.plugins.lazydev',
  require 'matthias.plugins.luvit-meta',
  require 'matthias.plugins.nvim-lspconfig',
  require 'matthias.plugins.conform',
  require 'matthias.plugins.nvim-cmp',
  require 'matthias.plugins.catppuccin',
  require 'matthias.plugins.todo-comments',
  require 'matthias.plugins.mini',
  -- require 'kickstart.plugins.debug',
  -- require 'kickstart.plugins.indent_line',
  require 'matthias.plugins.lint',
  require 'matthias.plugins.venv-selector',
  -- require 'kickstart.plugins.autopairs',
  -- require 'kickstart.plugins.neo-tree',
  -- require 'kickstart.plugins.gitsigns', -- adds gitsigns recommend keymaps
}, {
  ui = {
    -- If you are using a Nerd Font: set icons to an empty table which will use the
    -- default lazy.nvim defined Nerd Font icons, otherwise define a unicode icons table
    icons = vim.g.have_nerd_font and {} or {
      cmd = '⌘',
      config = '🛠',
      event = '📅',
      ft = '📂',
      init = '⚙',
      keys = '🗝',
      plugin = '🔌',
      runtime = '💻',
      require = '🌙',
      source = '📄',
      start = '🚀',
      task = '📌',
      lazy = '💤 ',
    },
  },
})
