-- Setting up TS

local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
	return
end

configs.setup({
	ensure_installed = {
    "html",
    "css",
    "scss",
    "c_sharp",
    "javascript",
    "typescript",
    "tsx",
    "json",
    "lua",
    "sql",
    "vim",
    "vue",
    "markdown",
  }, -- one of "all" or a list of languages
	ignore_install = { "" }, -- List of parsers to ignore installing
	highlight = {
		enable = true, -- false will disable the whole extension
		disable = { }, -- list of language that will be disabled
	},
	autopairs = {
		enable = true,
	},
	indent = { enable = true, disable = { } },
  rainbow = {
      enable = true,
      extended_mode = true,
      max_file_line = nil,
      -- colors = {},
      -- disable = {"c_sharp"},
      -- termcolors = {}
  },
  autotag = {
    enable = true
  }
})

