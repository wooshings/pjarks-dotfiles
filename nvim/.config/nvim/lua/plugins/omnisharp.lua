return {
  {
    "OmniSharp/omnisharp-vim",
    config = function()
      vim.g.OmniSharp_server_use_net6 = 1
      vim.g.OmniSharp_server_use_mono = 0
      vim.g.OmniSharp_server_stdio = 1
      vim.g.OmniSharp_highlighting = 3
      vim.g.OmniSharp_diagnostic_showid = 1
      vim.g.OmniSharp_diagnostic_overrides = {
        CS8019 = { type = "none" },
      }

      vim.g.OmniSharp_highlight_groups = {
        ParameterName = 0,
        FieldName = "Label",
        EnumMemberName = 0,
        LocalName = 0,
        PropertyName = 0,
        DelegateName = "Function",
        Keyword = 0,
        Identifier = 0,
        EventName = 0
      }
    end,
  },
  {
    "dense-analysis/ale",
    config = function()
      vim.g.ale_sign_column_always = 1
      vim.g.ale_sign_error = " "
      vim.g.ale_sign_warning = " "
      vim.b.ale_linters = { cs = { "OmniSharp" } }
      vim.g.ale_linters_explicit = 1
      vim.g.ale_echo_msg_error_str = " "
      vim.g.ale_echo_msg_warning_str = " "
      vim.g.ale_cs_csc_assemblies = { ".mono" }
      vim.g.ale_cs_mcsc_assemblies = { ".mono" }
    end,
  },
}
