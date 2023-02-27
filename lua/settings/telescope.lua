local telescope = require('telescope')

telescope.setup {
  pickers = {
    find_files = {
      hidden = true
    }
  },
  extensions = {
    require('telescope').load_extension "file_browser"
  }
}
