-- Nvim Tmux
local status_ok, tmux = pcall(require, "nvim-tmux-navigation")
if not status_ok then
	return
end

-- Keybinds

local function map(m, k, v)
    vim.keymap.set(m, k, v, { silent = true })
end

local function nmap(m, k, v)
    vim.keymap.set(m, k, v, { noremap = true, silent = true })
end

-- Escape from Insert mode to Normal mode.
map('i', 'jj', '<ESC>')

-- Go back to previous buffer.
map('n', '<leader>o', '<C-o>')

-- Open a New Terminal
map('n', '<leader>t', '<CMD>terminal<CR>')

-- Increment/decrement.
map('n', '+', '<C-a>')
map('n', '-', '<C-x>')

-- Quit and Save
map('n', '<leader>q', '<CMD>q<CR>')
map('n', '<leader>w', '<CMD>w<CR>')
map('n', '<leader>z', '<CMD>wq<CR>')

-- Open Fuzzy Finder
map('n', '<leader>p', '<CMD>Telescope find_files<CR>')
map('n', '<leader>b', '<CMD>Telescope buffers<CR>')

-- Nvim Tmux
map('n', '<leader>h', tmux.NvimTmuxNavigateLeft)
map('n', '<leader>j', tmux.NvimTmuxNavigateDown)
map('n', '<leader>k', tmux.NvimTmuxNavigateUp)
map('n', '<leader>l', tmux.NvimTmuxNavigateRight)

-- Copying the vscode behaviour of making tab splits.
map('n', '<A-\\>', '<CMD>vsplit<CR>')
map('n', '<C-\\>', '<CMD>split<CR>')

-- Move line up and down in NORMAL and VISUAL modes
-- Reference: https://vim.fandom.com/wiki/Moving_lines_up_or_down
map('n', '<C-k>', '<CMD>move .-2<CR>')
map('n', '<C-j>', '<CMD>move .+1<CR>')
map('x', '<C-j>', ":move '>+1<CR>gv=gv")
map('x', '<C-k>', ":move '<-2<CR>gv=gv")

--LSP Config 
-- nmap('n', 'gd', '<CMD>lua vim.lsp.buf.definition()<CR>')
nmap('n', 'gD', '<CMD>lua vim.lsp.buf.declaration()<CR>')
-- nmap('n', 'gr', '<CMD>lua vim.lsp.buf.references()<CR>')
nmap('n', 'gi', '<CMD>lua vim.lsp.buf.implementation()<CR>')
-- nmap('n', 'K', '<CMD>lua vim.lsp.buf.hover()<CR>')
nmap('n', 'f', '<CMD>lua vim.lsp.buf.formatting()<CR>')

-- Vim Fugitive
map('n', '<leader>gs', '<CMD>Git<CR>')
map('n', '<leader>gc', '<CMD>Git commit<CR>')
map('n', '<leader>gb', '<CMD>Git branch<CR>')
map('n', '<leader>X', '<CMD>Git reset --hard<CR>')


-- Open Nvim Tree
map('n', '<leader>a', '<CMD>NvimTreeToggle<CR>')
map('n', '<leader>ac', '<CMD>NvimTreeCollapse<CR>')

-- Undo Tree
map('n', '<leader>u', '<CMD>UndotreeShow<CR>')

-- LSP Saga Config.
nmap('n', '<C-h>', '<Cmd>Lspsaga diagnostic_jump_next<CR>')
nmap('n', 'K', '<Cmd>Lspsaga hover_doc<CR>')
nmap('n', 'gd', '<Cmd>Lspsaga lsp_finder<CR>')
nmap('i', '<C-a>', '<Cmd>Lspsaga signature_help<CR>')
nmap('n', 'gp', '<Cmd>Lspsaga preview_definition<CR>')
nmap('n', 'gr', '<Cmd>Lspsaga rename<CR>')
nmap('n', '<leader>.', '<Cmd>Lspsaga code_action<CR>')
