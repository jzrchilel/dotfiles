local DATA_PATH = vim.fn.stdpath('data')

local function documentHighlight(client, bufnr)
    -- Set autocommands conditional on server_capabilities
    if client.resolved_capabilities.document_highlight then
        vim.api.nvim_exec([[
      hi LspReferenceRead cterm=bold ctermbg=red guibg=#464646
      hi LspReferenceText cterm=bold ctermbg=red guibg=#464646
      hi LspReferenceWrite cterm=bold ctermbg=red guibg=#464646
      augroup lsp_document_highlight
        autocmd! * <buffer>
        autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()
        autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()
      augroup END
    ]], false)
    end
end

require'lspconfig'.clangd.setup {
    cmd = {DATA_PATH .. "/lspinstall/cpp/clangd/bin/clangd", "--background-index"},
    filetypes = {"c", "cpp", "objc", "objcpp"}
}

-- *****************************************************************************
-- TYPESCRIPT
-- *****************************************************************************
require'lspconfig'.tsserver.setup {
    cmd = {
        DATA_PATH .. "/lspinstall/typescript/node_modules/.bin/typescript-language-server",
        "--stdio"
    },
    on_attach = documentHighlight,
    -- This makes sure tsserver is not used for formatting (I prefer prettier)
    -- on_attach = require'lsp'.common_on_attach,
    settings = {documentFormatting = false}
}

