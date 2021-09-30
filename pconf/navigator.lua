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

  default_mapping = false,  -- set to false if you will remap every key
  keymaps = {
    {key = "gh", func = "references()"},
    -- {mode = "i", key = "<M-k>", func = "signature_help()"},
    {key = "gs", func = "signature_help()"},
    {key = "g0", func = "document_symbol()"},
    {key = "gW", func = "workspace_symbol()"},
    {key = "gD", func = "definition()"},
    {key = "gK", func = "declaration({ border = 'rounded', max_width = 80 })"},
    {key = "gp", func = "require('navigator.definition').definition_preview()"},
    {key = "gT", func = "require('navigator.treesitter').buf_ts()"},
    {key = "<leader>gT", func = "require('navigator.treesitter').bufs_ts()"},
    {key = "K", func = "hover({ popup_opts = { border = single, max_width = 80 }})"},
    {key = "<leader>ca", mode = "n", func = "code_action()"},
    {key = "<leader>cA", mode = "v", func = "range_code_action()"},
    {key = "<leader>re", func = "rename()"},
    -- {key = "<Space>rn", func = "require('navigator.rename').rename()"},
    -- {key = "<leader>gi", func = "incoming_calls()"},
    -- {key = "<leader>go", func = "outgoing_calls()"},
    {key = "gi", func = "implementation()"},
    {key = "<Space>D", func = "type_definition()"},
    -- {key = "gL", func = "require('navigator.diagnostics').show_line_diagnostics()"},
    -- {key = "gG", func = "require('navigator.diagnostics').show_diagnostic()"},
    {key = "]d", func = "diagnostic.goto_next({ border = 'rounded', max_width = 80})"},
    {key = "[d", func = "diagnostic.goto_prev({ border = 'rounded', max_width = 80})"},
    {key = "]r", func = "require('navigator.treesitter').goto_next_usage()"},
    {key = "[r", func = "require('navigator.treesitter').goto_previous_usage()"},
    {key = "<C-LeftMouse>", func = "definition()"},
    {key = "g<LeftMouse>", func = "implementation()"},
    {key = "<leader>k", func = "require('navigator.dochighlight').hi_symbol()"},
    -- {key = '<Space>wa', func = 'add_workspace_folder()'},
    -- {key = '<Space>wr', func = 'remove_workspace_folder()'},
    -- {key = '<Space>ff', func = 'formatting()', mode='n'},
    -- {key = '<Space>ff', func = 'range_formatting()', mode='v'},
    -- {key = '<Space>wl', func = 'print(vim.inspect(vim.lsp.buf.list_workspace_folders()))'},
    -- {key = "<Space>la", mode = "n", func = "require('navigator.codelens').run_action()"},
  }, -- a list of key maps
  treesitter_analysis = true, -- treesitter variable context
  code_action_prompt = {enable = true, sign = true, sign_priority = 40, virtual_text = true},
  icons = {
    icons = true, -- set to false to use system default ( if you using a terminal does not have nerd/icon)
    -- Code action
    code_action_icon = "💡", -- "",
    -- code lens
    code_lens_action_icon = " ",
    -- Diagnostics
    diagnostic_head = '🐛',
    diagnostic_err = "📛",
    diagnostic_warn = "👎",
    diagnostic_info = [[👩]],
    diagnostic_hint = [[💁]],

    diagnostic_head_severity_1 = "🈲",
    diagnostic_head_severity_2 = "☣️",
    diagnostic_head_severity_3 = "👎",
    diagnostic_head_description = "👹",
    diagnostic_virtual_text = "🦊",
    diagnostic_file = "🚑",
    -- Values
    value_changed = "📝",
    value_definition = "🦕",
    -- Treesitter
    match_kinds = {
      var = "👹 ", -- "", -- Vampaire
      method = "ƒ ", --  "🍔", -- mac
      ["function"] = " ", -- "🤣", -- Fun
      parameter = "  ", -- Pi
      associated = "🤝",
      namespace = "🚀",
      type = " ",
      field = "🏈",
    },
    treesitter_defult = "🌲",
  },
  lspinstall = true,
  -- lsp = {
  --   format_on_save = false, -- set to false to disasble lsp code format on save (if you are using prettier/efm/formater etc)
  --   diagnostic_virtual_text = true,  -- show virtual for diagnostic message
  --   diagnostic_update_in_insert = false, -- update diagnostic message in insert mode
  --   disply_diagnostic_qf = true,
  --   solargraph = {},
  --   tsserver = {
  --     filetypes = {'typescript', 'javascript'}
  --   },
  -- }
})
