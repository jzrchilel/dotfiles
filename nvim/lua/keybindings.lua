local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- shortcut to go to normal mode
keymap('i', 'jk', '<ESC>', opts)

-- Open/Close file directory
keymap('', '<C-n>', ':NvimTreeToggle<CR>', opts)

-- Compile and run a .cpp file
keymap('n', '<leader>r', ':!g++  -std=c++17 -Wall -Weffc++ -Wsign-conversion -Werror -pedantic-errors % && ./a.out<CR>', opts)

-- Open a terminal
keymap('v', '<C-t>', ':terminal ++rows=10<CR>', opts)
keymap('n', '<C-t>', ':terminal ++rows=10<CR>', opts)

-- Adds ';' at the end of the line insert mode
keymap('i', ';;', '<ESC> A;<ESC>', { noremap = false });
-- Adds ';' at the end of the line normal mode
keymap('n', ';;', 'A;<ESC>', opts);
-- Ads ',' at the end of the line
keymap('i', ',,', '<ESC> A,<ESC>', { noremap = false })
-- Ads ',' at the end of the line normal mode
keymap('n', ',,', 'A,<ESC>', opts)

keymap('n', '<leader>g', ':GFiles<CR>', opts)
keymap('n', '<leader>b', ':Buffers<CR>', opts)
keymap('n', '<leader>f', ':Files<CR>', opts)
keymap('n', '<leader>e', ':History<CR>', opts)
