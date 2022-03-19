vim.bo.omnifunc = "v:lua.vim.lsp.omnifunc"

vim.fn.sign_define("LspDiagnosticsSignError", {text = "✗"})
vim.fn.sign_define("LspDiagnosticsSignWarning", {text = "--"})
vim.fn.sign_define("LspDiagnosticsSignInformation", {text = "•"})
vim.fn.sign_define("LspDiagnosticsSignHint", {text = "•"})

function cFormatter()
    return {exe = "clang-format", args = {}, stdin = true}
end

require('formatter').setup({
  logging = false,
  filetype = {
    cpp = {cFormatter}
  }
})

vim.api.nvim_exec([[
augroup FormatAutogroup
  autocmd FileType cpp autocmd BufWritePost <buffer> FormatWrite
augroup END
]], true)

