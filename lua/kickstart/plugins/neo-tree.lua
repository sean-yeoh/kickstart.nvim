-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  lazy = false,
  keys = {
    { '\\', ':Neotree reveal<CR>', desc = 'NeoTree reveal', silent = true },
    { '<leader>e', ':Neotree focus<CR>', desc = 'Explorer NeoTree (Focus)', silent = true },
  },
  opts = {
    filesystem = {
      bind_to_cwd = true, -- THIS syncs the terminal's directory with the tree
      follow_current_file = {
        enabled = true, -- THIS makes the tree jump to the file you are editing
      },
      window = {
        mappings = {
          ['\\'] = 'close_window',
          ['<bs>'] = 'noop', -- "noop" means No Operation (does nothing)
        },
      },
    },
  },
}
