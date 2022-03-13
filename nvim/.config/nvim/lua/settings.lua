local scopes = { o = vim.o, b = vim.bo, w = vim.wo }

local function opt(scope, key, value)
  scopes[scope][key] = value
  if scope ~= "o" then
    scopes["o"][key] = value
  end
end

-- History
opt("o", "backup", false)
opt("o", "writebackup", false)
opt("o", "swapfile", false)
opt("o", "history", 500)
opt("o", "undodir", vim.fn.expand("~/.vim/undodir"))
opt("o", "undofile", true)

-- File navigation
opt("w", "number", true)
opt("o", "numberwidth", 2)
opt("o", "relativenumber", true)
opt("o", "incsearch", true)
opt("o", "inccommand", "nosplit")
opt("o", "grepprg", "rg --vimgrep")
opt("o", "ignorecase", true)
opt("o", "smartcase", true)
opt("o", "scrolloff", 8)

-- Visual
opt("o", "termguicolors", true)
opt("o", "wrap", false)
opt("o", "ruler", false)
opt("w", "signcolumn", "yes")
opt("o", "cmdheight", 1)

-- Indentation
opt("o", "autoindent", true)
opt("b", "expandtab", true)
opt("b", "shiftwidth", 2)
opt("b", "smartindent", true)

-- Standard
opt("o", "hidden", true)
opt("o", "showcmd", true)
opt("o", "showmode", false)
opt("o", "autowrite", true)
opt("o", "splitbelow", true)
opt("o", "splitright", true)
opt("o", "joinspaces", false)
opt("o", "gdefault", true)
opt("o", "mouse", "a")
opt("o", "wildmode", "longest:full,list:full")

opt("o", "updatetime", 250)
opt("o", "clipboard", "unnamedplus")

opt("o", "formatoptions", string.gsub(vim.o.formatoptions, "[at]", "")) -- Disable autoformatting
opt("o", "formatoptions", vim.o.formatoptions .. "c") -- Respect textwidth in comments
opt("o", "formatoptions", vim.o.formatoptions .. "q") -- Format comments with gq
opt("o", "formatoptions", string.gsub(vim.o.formatoptions, "[o]", "")) -- Don"t continue comments with o and O
opt("o", "formatoptions", vim.o.formatoptions .. "r") -- Enter continues comments
opt("o", "formatoptions", vim.o.formatoptions .. "n") -- Indent past the formatlistpat, not underneath it.
opt("o", "formatoptions", vim.o.formatoptions .. "j") -- Auto-remove comments if possible.
opt("o", "formatoptions", string.gsub(vim.o.formatoptions, "2", ""))

local M = {}

function M.is_buffer_empty()
  -- Check if the current buffer is empty
  return vim.fn.empty(vim.fn.expand("%:t")) == 1
end

function M.has_width_gt(cols)
  -- Check if the windows width is greater than a given number of columns
  return vim.fn.winwidth(0) / 2 > cols
end

-- File extension specific tabbing
vim.cmd([[autocmd Filetype python setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4]])

return M

