
vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.equalalways = false
if vim.fn.has('win32') == 1 then
  vim.o.shell = 'powershell'
else
  vim.o.shell = 'pwsh'
end

vim.o.shellcmdflag = '-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.Encoding]::UTF8;'
vim.o.shellredir = '2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode'
vim.o.shellpipe = '2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode'
vim.o.shellquote = ''
vim.o.shellxquote = ''
vim.opt.clipboard = 'unnamedplus'
vim.opt.updatetime = 50
vim.opt.splitright = true
vim.opt.encoding = 'utf-8'

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2

vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.g.loaded_netrwPlugin = 1
vim.g.loaded_netrw = 1
