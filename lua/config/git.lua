local status, git = pcall(require, "vim-fugitive")
  if (not status) then return end

git.setup()
