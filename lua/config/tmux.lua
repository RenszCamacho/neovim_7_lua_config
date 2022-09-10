-- Nvim Tmux
local status_ok, tmux = pcall(require, "nvim-tmux-navigation")
if not status_ok then
	return
end

tmux.setup {
    disable_when_zoomed = true -- defaults to false
}

