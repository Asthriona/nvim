-- vim.opt.guicirsor = ""

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = true

vim.opt.swapfile = false
vim.opt.backup = false
-- vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
if vim.fn.has("win32") == 1 or vim.fn.has("win64") == 1 then
  vim.opt.undodir = os.getenv("USERPROFILE") .. "\\.vim\\undodir"
else
  vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
end
vim.opt.undofile = true

vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.cursorline = true

vim.opt.colorcolumn = "150"

vim.g["airline#extensions#tabline#enabled"] = 1
vim.g.arline_powerline_font = 1
