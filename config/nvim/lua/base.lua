vim.cmd('autocmd!')

local vo = vim.opt

vim.scripencoding = 'utf-8'
vo.encoding = 'utf-8'
vo.fileencoding = 'utf-8'

vim.wo.number = true

vo.title = true
vo.autoindent = true
vo.hlsearch = true
vo.backup = false
vo.showcmd = true
vo.cmdheight = 1
vo.laststatus = 2
vo.expandtab = true
vo.smarttab = true
vo.tabstop = 2
vo.scrolloff = 10
vo.shell = 'zsh'
vo.backupskip = '/tmp/*,/private/tmp/*'
vo.inccommand = 'split'
vo.ignorecase = true
vo.breakindent = true
vo.shiftwidth = 2
vo.ai = true -- Auto indent
vo.si = true -- Smart indent
vo.wrap = false -- No wrap
vo.backspace = 'start,eol,indent'
vo.path:append { '**' } -- Finding files: Search down into subfolders
vo.wildignore:append { '*/node_modules/*' } -- Ignore node_modules

-- Undercurl
-- Not working in iTerm2 at this moment
vim.cmd([[let &t_Cs = "\e[4:3m"]])
vim.cmd([[let &t_Ce = "\e[4:0m"]])

-- Turn off pastemode when leaving insert
vim.api.nvim_create_autocmd("InsertLeave", {
  pattern = '*',
  command = "set nopaste"
})

-- Add asterisks in block comments
vo.formatoptions:append { 'r' }
