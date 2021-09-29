require('navigator').setup({
  debug = false, -- log output not implemented
  code_action_icon = " ",
  width = 0.75, -- number of cols for the floating window
  height = 0.3, -- preview window size, 0.3 by default
  border = {"╭", "─", "╮", "│", "╯", "─", "╰", "│"}, -- border style, can be one of 'none', 'single', 'double',
                                                     -- 'shadow', or a list of chars which defines the border
  on_attach = nil,
  -- put a on_attach of your own here, e.g
  -- function(client, bufnr)
  --   -- the on_attach will be called at end of navigator on_attach
  -- end,
  -- The attach code will apply to all LSP clients

  default_mapping = true,  -- set to false if you will remap every key
  keymaps = {{key = "gK", func = "declaration()"}}, -- a list of key maps
  treesitter_analysis = true, -- treesitter variable context
  code_action_prompt = {enable = true, sign = true, sign_priority = 40, virtual_text = true},
  icons = {
    -- Code action
    code_action_icon = " ",
    -- Diagnostics
    diagnostic_head = ' ',
    diagnostic_head_severity_1 = " ",
    -- refer to lua/navigator.lua for more icons setups
  },
  lsp = {
    format_on_save = false, -- set to false to disasble lsp code format on save (if you are using prettier/efm/formater etc)
    solargraph = {},
    tsserver = {
      filetypes = {'typescript', 'javascript'}
    },
  }
})
