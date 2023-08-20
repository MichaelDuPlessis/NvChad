local null_ls = require "null-ls"

local formatting = null_ls.builtins.formatting
local lint = null_ls.builtins.diagnostics

local sources = {
  -- formatters
  formatting.autopep8,

  -- linters
  lint.pylint,
  lint.cpplint,
}

null_ls.setup {
   debug = true,
   sources = sources,
}
