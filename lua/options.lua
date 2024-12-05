require "nvchad.options"

-- add yours here!

-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!


vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"
vim.opt.scrolloff = 10
vim.opt.sidescrolloff = 10
vim.opt.wrap = false -- No Wrap lines
-- Undercurl
vim.cmd([[let &t_Cs = "\e[4:3m"]])
vim.cmd([[let &t_Ce = "\e[4:0m"]])

-- Neovim opacity background
vim.cmd([[
hi NonText ctermbg=none guibg=NONE
hi Normal guibg=NONE ctermbg=NONE
hi NormalNC guibg=NONE ctermbg=NONE
hi SignColumn ctermbg=NONE ctermfg=NONE guibg=NONE
hi Pmenu ctermbg=NONE ctermfg=NONE guibg=NONE
hi FloatBorder ctermbg=NONE ctermfg=NONE guibg=NONE
hi NormalFloat ctermbg=NONE ctermfg=NONE guibg=NONE
hi TabLine ctermbg=None ctermfg=None guibg=None
]])
-- Neovide Intergration
if vim.g.neovide then
  --vim.o.guifont = "JetBrains_Mono:Khmer OS:h12" -- text below applies for VimScript
  vim.o.guifont = "JetBrains Mono:h12" -- text below applies for VimScript
  vim.opt.linespace = 0
  --vim.g.neovide_transparency = 0.5
  vim.g.neovide_transparency = 0.9
  --vim.g.neovide_transparency = 1
  vim.g.neovide_hide_mouse_when_typing = true
  vim.g.neovide_cursor_animation_length = 0.05
  vim.g.neovide_cursor_vfx_mode = "ripple"
end
