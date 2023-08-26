-- DevIcons
local status_ok, devicons = pcall(require, "nvim-web-devicons")
if not status_ok then
	return
end

devicons.get_icons()
devicons.set_icon {
  ["js"] = {
    icon = "",
    color = "#fff200",
    cterm_color = "185",
    name = "Js",
  },
  ["ts"] = {
    icon = "",
    color = "#519aba",
    cterm_color = "67",
    name = "Ts",
  },
  ["cs"] = {
    -- icon = "",
    icon = "",
    color = "#953DAC",
    cterm_color = "58",
    name = "Cs",
  },
  ["webpack.common.js"] = {
    icon = "ﰩ",
    color = "#519aba",
    cterm_color = "67",
    name = "Webpack",
  },
  ["webpack.prod.js"] = {
    icon = "ﰩ",
    color = "#519aba",
    cterm_color = "67",
    name = "Webpack",
  },
  ["webpack.dev.js"] = {
    icon = "ﰩ",
    color = "#519aba",
    cterm_color = "67",
    name = "Webpack",
  },
  ["webpack.js"] = {
    icon = "ﰩ",
    color = "#519aba",
    cterm_color = "67",
    name = "Webpack",
  },
  ["gulpfile.js"] = {
    icon = "",
    color = "#cc3e44",
    cterm_color = "167",
    name = "Gulpfile",
  },

  ["Dockerfile"] = {
    icon = "",
    color = "#2496ED",
    cterm_color = "59",
    name = "Dockerfile",
  },
}
