return {
  'VonHeikemen/lsp-zero.nvim',
  branch = 'v2.x',
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    -- LSP Support
    {'neovim/nvim-lspconfig'},             -- Required
    {                                      -- Optional
    'williamboman/mason.nvim',
    build = ":MasonUpdate",
  },
  {'williamboman/mason-lspconfig.nvim'}, -- Optional

  -- Autocompletion
  {
    'hrsh7th/nvim-cmp',
    opts = function ()

      local cmp = require('cmp')

      cmp.setup({
        preselect = 'item',
        mapping = {
          ['<CR>'] = cmp.mapping.confirm({select = false}),
          ['<Tab>'] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
          ['<S-Tab>'] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),
        },
        completion = {
          completeopt = 'menu,menuone,noinsert'
        },
        sources = {
          {name = 'path'},
          {name = 'nvim_lsp'},
          {name = 'nvim_lua'},
          {name = 'buffer', keyword_length = 3},
          {name = 'luasnip', keyword_length = 2},
        }
      })
    end
  },
  {'hrsh7th/cmp-nvim-lsp'}, -- Required
  {'L3MON4D3/LuaSnip'},     -- Required
}
}
