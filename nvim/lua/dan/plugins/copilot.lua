-- use this table to enable/disable file types globally
vim.g.copilot_filetypes = { xml = false, java = false, markdown = false }

vim.cmd([[highlight CopilotSuggestion guifg=#555555 ctermfg=8]])
