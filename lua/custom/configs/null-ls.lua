local null_ls = require "null-ls"

local formatting = null_ls.builtins.formatting
local lint = null_ls.builtins.diagnostics

-- https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md
local sources = {
  -- formatters
  formatting.autopep8,
  formatting.prettier,

  -- linters
  lint.pylint,
  lint.cpplint,
}

null_ls.setup {
   debug = true,
   sources = sources,
}
