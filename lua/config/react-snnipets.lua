local status, snippet = pcall(require, "vscode-es7-javascript-react-snippets")
if (not status) then return end

snippet.setup {}
