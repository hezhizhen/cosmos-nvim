local cosmos = require('core.cosmos')
local options = require('layers.ui.options')
local configs = require('layers.ui.configs')

cosmos.add_plugin(
  'kyazdani42/nvim-web-devicons',
  {
    config = configs.web_devicons,
  }
)

cosmos.add_plugin(
  'glepnir/dashboard-nvim',
  {
    after = { 'nvim-web-devicons' },
    config = configs.dashboard,
  }
)

cosmos.add_plugin(
  'lukas-reineke/indent-blankline.nvim',
  {
    config = configs.indent_blankline,
    event = 'BufRead',
  }
)

if options.enable_todo_comments then
  cosmos.add_plugin(
    'folke/todo-comments.nvim',
  {
      requires = 'nvim-lua/plenary.nvim',
      config = configs.todo_comments,
      event = 'BufRead',
    }
  )
end

cosmos.add_plugin(
  'p00f/nvim-ts-rainbow',
  {
    after = { 'nvim-treesitter' },
  }
)

cosmos.add_plugin(
  'nvim-lualine/lualine.nvim',
  {
    after = { 'nvim-web-devicons', 'nvim-gps' },
    config = configs.lualine,
  }
)

cosmos.add_plugin(
  'j-hui/fidget.nvim',
  {
    after = 'lualine.nvim',
    config = configs.fidget,
  }
)

cosmos.add_plugin(
  'akinsho/bufferline.nvim',
  {
    after = { 'nvim-web-devicons' },
    branch = 'main',
    config = configs.bufferline,
  }
)

cosmos.add_plugin(
  'karb94/neoscroll.nvim',
  {
    disable = not options.enable_smooth_scrolling,
    config = configs.neoscroll,
    event = 'BufRead',
  }
)

cosmos.add_plugin(
  'danilamihailov/beacon.nvim',
  {
    disable = not options.enable_beacon,
    event = 'BufRead',
  }
)

cosmos.add_plugin(
  'RRethy/vim-illuminate',
  {
    disable = not options.enable_illuminate,
    event = 'BufRead',
  }
)

cosmos.add_plugin(
  'norcalli/nvim-colorizer.lua',
  {
    disable = not options.enable_colorizer,
    config = configs.colorizer,
    event = 'BufRead',
  }
)

cosmos.add_plugin(
  'petertriho/nvim-scrollbar',
  {
    disable = not options.enable_scrollbar,
    requires = {
      {
        'kevinhwang91/nvim-hlslens',
        config = configs.hlslens,
        event = 'BufRead',
      },
    },
    after = { 'nvim-hlslens' },
    config = configs.scrollbar,
  }
)

cosmos.add_plugin(
  'SmiteshP/nvim-gps',
  {
    disable = not options.enable_gps,
    after = { 'nvim-treesitter', 'nvim-web-devicons' },
    config = configs.gps,
  }
)
