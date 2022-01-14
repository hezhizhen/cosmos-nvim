local stdpath = vim.fn.stdpath

return {
  user_config_path = vim.fn.expand('$HOME/.cosmos-nvim.lua'),
  cosmos_configs_root = stdpath("config"),
  cosmos = {
    enable_beacon = true,
    enable_smooth_scrolling = true,
    enable_rainbow = true,
    python3_host_prog = '~/.pyenv/versions/nvim-py3/bin/python',
    indentLine_fileTypeExclude = { 'alpha' },
    telescope_theme = 'ivy',
    tab_complete_copilot_first = true,
  },
}
