vim.g.nvim_tree_show_icons = {
  git = 0,
  folders = 0,
  files = 0,
  folder_arrows = 0,
}

require'nvim-tree'.setup {
  disable_netrw = true,
}
