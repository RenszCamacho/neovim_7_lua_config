-- DevIcons
local status_ok, devicons = pcall(require, "nvim-web-devicons")
if not status_ok then
	return
end

-- devicons.set_icon {
--   javascript = {
--     icon = "",
--     color = "#428850",
--     cterm_color = "65",
--     name = "Javascript"
--   }
-- }

devicons.get_icons()
devicons.set_icon {
  js = {
    icon = "",
    color = "#fff200",
    cterm_color = "65",
    name = "Javascript"
  },
}
