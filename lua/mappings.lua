require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- add by me
map('t', '<Esc>', [[<C-\><C-n>]], {})
map('t', 'jk', [[<C-\><C-n>]], {})
-- Add by me
map("n", "<C-t>", ":vertical topleft split term://bash<CR>", {})
map("n", "j", "gj", {})
map("n", "k", "gk", {})
map('n', '<leader>cd', ':cd %:p:h<CR>:pwd<CR>', { noremap = true, silent = true })
map('n', '<leader>rl', ':!chromium %:p<CR>', { noremap = true, silent = true })


-- config keymap for debugger netcoredbg by me
--local dap = require('dap')
--local dapui = require('dapui')

vim.api.nvim_set_keymap('n', '<leader>dc', ":lua require'dap'.continue()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>do', ":lua require'dap'.step_over()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<learder>di', ":lua require'dap'.step_into()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<learder>du', ":lua require'dap'.step_out()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>dt', ":lua require'dap'.toggle_breakpoint()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>db', ":lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>",
  { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>lp',
  ":lua require'dap'.set_breakpoint(ni, nil, vim.fn.input('Log point message: '))<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>dr', ":lua require'dap'.repl.open()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>dl', ":lua require'dap'.run_last()<CR>", { noremap = true, silent = true })
