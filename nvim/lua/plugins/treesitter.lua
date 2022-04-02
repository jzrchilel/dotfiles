require'nvim-treesitter.configs'.setup {
    ensure_installed = "all",
    highlight = {enable = true},
    -- indent = {enable = true},
    -- playground = {
        -- enable = true,;
        -- disable = {},
        -- updatetime = 25, -- Debounced time for highlighting nodes in the playground from source code
        -- persist_queries = false -- Whether the query persists across vim sessions
    --},
    rainbow = {
        enable = true,
        extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
        max_file_lines = nil -- Do not enable for files with more than n lines, int
    },
    autotag = {enable = true},
    context_commentstring = {
        enable = true,
        config = {javascriptreact = {style_element = '{/*%s*/}'}}
    }
}

local parser_configs = require('nvim-treesitter.parsers').get_parser_configs()
parser_configs.norg_meta = {
    install_info = {
        url = "https://github.com/nvim-neorg/tree-sitter-norg-meta",
        files = { "src/parser.c" },
        branch = "main"
    },
}
parser_configs.norg_table = {
    install_info = {
        url = "https://github.com/nvim-neorg/tree-sitter-norg-table",
        files = { "src/parser.c" },
        branch = "main"
    },
}
