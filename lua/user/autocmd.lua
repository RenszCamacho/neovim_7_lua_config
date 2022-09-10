local cmd = vim.cmd

cmd("autocmd!")

cmd 'set noshowmode'
cmd 'set hidden'
cmd 'set nowrap'
cmd 'let g:nordic_italic=0'

-- Undercurl
cmd([[let &t_Cs = "\e[4:3m]"]])
cmd([[let &t_Ce = "\e[4:0m]"]])
cmd[[tnoremap <ESC> <C-\><C-N>]]
