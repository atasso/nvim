
return {
  'nvim-telescope/telescope.nvim', tag = '0.1.1',
  dependencies = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'} },
  keys = {
    { '<C-p>', function() require 'telescope.builtin'.find_files() end, desc= "Fuzy find files"},
    { '<leader>fg', function() require  'telescope.builtin'.live_grep() end, desc="Find in file"},
    { '<leader>fb', function() require  'telescope.builtin'.buffers({initial_mode='normal'}) end, desc="List buffers"},
    { '<leader>fr', function() require 'telescope.builtin'.lsp_references() end, desc="List refernces"},
    { 'gr', function() require 'telescope.builtin'.lsp_references({initial_mode='normal'}) end, desc="List refernces"},
    { '<leader>ff', function() require 'telescope.builtin'.resume() end, desc="Resume last finder"},
    { '<leader>gs', function() require 'telescope.builtin'.git_status({initial_mode='normal'}) end, desc="List git status"},
    { '<leader>gb', function() require 'telescope.builtin'.git_branches() end, desc="List git branches"}
  },
  opts = {
    defaults = {
      mappings = {
        n = {
          ['<c-d>'] = function() require 'telescope.actions'.delete_buffer() end
        },
        i = {
          ["<C-h>"] = "which_key",
          ['<c-d>'] = function() require 'telescope.actions'.delete_buffer() end
        }
      }
    },
  }

}
