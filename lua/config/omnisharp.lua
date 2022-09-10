local status, omnisharp = pcall(require, "omnisharp-vim")
  if (not status) then return end

omnisharp.setup {}
