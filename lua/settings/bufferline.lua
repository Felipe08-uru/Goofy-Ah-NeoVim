require("bufferline").setup{
  options = {
    mode = "buffers",
    numbers = "none",
    middle_mouse_command = nil,
    indicator = {
      icon = ' ',
      style = 'icon'
    },
    buffer_close_icon = '',
    modified_icon = '●',
    close_icon = '',
    diagnostics = "coc",
    diagnostics_update_in_insert = false,
    offsets = {
      {
        filetype = "NvimTree",
        text = "File Explorer",
        texit_align = "left",
        separator = false
      }
    },
    show_close_icon = false,
    -- separator_style = "slant",
  },
  highlights = {
    buffer_selected = {
      italic = false,
    }
  }
}
