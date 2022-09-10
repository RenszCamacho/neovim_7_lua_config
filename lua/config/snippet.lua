local status, ls = pcall(require, "luasnip")
if (not status) then return end

ls.filetype_extend("javascript", { "javascriptreact" })

ls.config.set_config {
  -- Autosnippects:
  enable_autosnippets = true
}

local filetype = vim.bo.filetype

-- if filetype == "javascriptreact" then
-- 	require("luasnip/loaders/from_vscode").load({include = {"javascriptreact"}})
-- 	return
-- end

-- if filetype == "typescriptreact" then
-- 	require("luasnip/loaders/from_vscode").load({include = {"typescriptreact"}})
-- 	return
-- end
--
if filetype == "javascriptreact" then
	require("luasnip.loaders.from_vscode").load({include = {"javascriptreact"}})
	return
end

if filetype == "typescriptreact" then
	require("luasnip.loaders.from_vscode").load({include = {"typescriptreact"}})
	return
end
