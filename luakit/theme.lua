--------------------------
-- Default luakit theme --
--------------------------

local theme = {}

-- Default settings
theme.tab_font = "Profont normal 6"
theme.font = "Terminus normal 4"
theme.fg   = "#9360A6"
theme.bg   = "#000000"

-- Genaral colours
theme.success_fg = "#0f0"
theme.loaded_fg  = "#33AADD"
theme.error_fg = "#FFF"
theme.error_bg = "#F00"

-- Warning colours
theme.warning_fg = "#F00"
theme.warning_bg = "#FFF"

-- Notification colours
theme.notif_fg = "#FFF"
theme.notif_bg = "#444"

-- Menu colours
theme.menu_fg                   = "#fff"
theme.menu_bg                   = "#202020"
theme.menu_selected_fg          = "#9360A6"
theme.menu_selected_bg          = "#000030"
theme.menu_title_bg             = "#444"
theme.menu_primary_title_fg     = "#ff0"
theme.menu_secondary_title_fg   = "#bbb"

-- Proxy manager
theme.proxy_active_menu_fg      = '#0ff'
theme.proxy_active_menu_bg      = '#000'
theme.proxy_inactive_menu_fg    = '#fff'
theme.proxy_inactive_menu_bg    = '#000'

-- User Agent manager
theme.useragent_active_menu_fg   = '#0ff'
theme.useragent_active_menu_bg   = '#000'
theme.useragent_inactive_menu_fg = '#fff'
theme.useragent_inactive_menu_bg = '#000'

-- Statusbar specific
theme.sbar_fg         = "#9360A6"
theme.sbar_bg         = "#000"

-- Downloadbar specific
theme.dbar_fg         = "#fff"
theme.dbar_bg         = "#000"
theme.dbar_error_fg   = "#F00"

-- Input bar specific
theme.ibar_fg           = "#9360A6"
theme.ibar_bg           = "#000"

-- Tab label
theme.tab_fg            = "#F8F8F8"
theme.tab_bg            = "#505080"
theme.tab_ntheme        = "#ddd"
theme.selected_fg       = "#9360A6"
theme.selected_bg       = "#000030"
theme.selected_ntheme   = "#ddd"
theme.loading_fg        = "#33AADD"
theme.loading_bg        = "#000"

-- Trusted/untrusted ssl colours
theme.trust_fg          = "#0F0"
theme.notrust_fg        = "#F00"

-- Blocked/Unblocked scripts/pluging
theme.nsw_disabled      = "#F00"
theme.nsw_enabled       = "#0F0"


theme.rpolicy_active_menu_fg   = "#0ff"
theme.rpolicy_inactive_menu_fg = "#fff"

-- Follow hints
theme.follow = {}
theme.follow.focus_bg      = "#00ff00"
theme.follow.normal_bg     = "#ffff99"
theme.follow.opacity       = 0.3
theme.follow.border        = "1px solid #000000"
theme.follow.frame_border  = "1px solid #880000"
theme.follow.tick_frame_bg = "#880000"
theme.follow.tick_fg       = "#ffffff"
theme.follow.tick_bg       = "#000088"
theme.follow.tick_border   = "1px solid #000000"
theme.follow.tick_opacity  = 0.4
theme.follow.tick_font     = "11px profont normal"
theme.follow.vert_offset   = 0
theme.follow.horiz_offset  = -10

return theme
-- vim: et:sw=4:ts=8:sts=4:tw=80
