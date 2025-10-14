local function preview_image(path)
  local width = math.floor(vim.o.columns * 0.8)
  local height = math.floor(vim.o.lines * 0.8)

  local buf = vim.api.nvim_create_buf(false, true)
  local win = vim.api.nvim_open_win(buf, true, {
    relative = 'editor',
    width = width,
    height = height,
    row = math.floor((vim.o.lines - height) / 2),
    col = math.floor((vim.o.columns - width) / 2),
    style = 'minimal',
    border = 'single',
  })

  -- Mark buffer as terminal
  vim.fn.termopen { 'viu', '-w', tostring(width - 16), path }

  vim.api.nvim_buf_set_keymap(buf, 'n', 'q', '<cmd>bd!<CR>', {
    nowait = true,
    noremap = true,
    silent = true,
  })

  vim.cmd 'startinsert'
end
return {
  {
    'nvim-neo-tree/neo-tree.nvim',
    version = '*',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-tree/nvim-web-devicons',
      'MunifTanjim/nui.nvim',
    },
    cmd = 'Neotree',
    keys = {
      {
        '\\',
        function()
          vim.cmd 'Neotree reveal'
        end,
        desc = 'NeoTree reveal',
      },
    },
    ---@module "neo-tree"
    ---@type neotree.Config?
    opts = {
      filesystem = {
        hijack_netrw_behavior = 'disabled',
        window = {
          position = 'current',
          mappings = {
            ['\\'] = 'close_window',
            ['o'] = 'open_with_viewer',
            ['<cr>'] = 'open_with_viewer',
          },
        },
        commands = {
          open_with_viewer = function(state)
            local node = state.tree:get_node()
            if node.type == 'directory' then
              state.commands.toggle_node(state)
            else
              local path = node.path
              local extension = path:match '%.([^%.]+)$'
              if extension and vim.tbl_contains({ 'png', 'jpg', 'jpeg', 'gif', 'webp' }, extension:lower()) then
                preview_image(path)
              else
                state.commands.open(state)
              end
            end
          end,
        },
      },
    },
  },
  {
    'antosha417/nvim-lsp-file-operations',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-neo-tree/neo-tree.nvim',
    },
    config = function()
      require('lsp-file-operations').setup()
    end,
  },
}
