require('cord').setup {
  editor = {
    client = 'neovim',
    tooltip = 'The Superior Text Editor',
    icon = nil
  },
  workspace = {
    root_markers = {
      '.git',
      '.hg',
      '.svn',
    },
    limit_to_cwd = false,
  },
}
