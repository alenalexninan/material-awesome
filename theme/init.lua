local gears = require('gears')
local lain = require('lain')
local markup = require('lain.util.markup')
local theme = {}
theme.dir = os.getenv('HOME') .. '/.config/awesome/theme'
--theme.dir             = os.getenv("HOME") .. "/code/awesome-pro/themes/pro-dark"

theme.icons = theme.dir .. '/icons/'
--theme.wallpaper = theme.dir .. '/wallpapers/pro-dark-shadow.png'
theme.wallpaper = '#e0e0e0'
theme.panel = 'png:' .. theme.icons .. 'tag-list/panel.png'
theme.font = 'Roboto medium 10'
theme.calendar_font = 'Meslo LGS Regular 10'
theme.fs_font = 'Meslo LGS Regular 10'

theme.primary = '#003f6b'
theme.primary_hue_300 = '#174a78'
theme.primary_hue_800 = '#00345f'

theme.accent = '#003f6b'
theme.accent_hue_300 = '#174a78'
theme.accent_hue_800 = '#00345f'

theme.appBackground = '#212121'
theme.background = '#192933'
theme.panel_bg = '#192933'

theme.background_hue_800 = '#151515'

theme.fg_normal = '#ffffffde'

theme.fg_focus = '#e4e4e4'
theme.fg_urgent = '#CC9393'
theme.bat_fg_critical = '#232323'

theme.bg_normal = theme.appBackground
theme.bg_focus = '#5a5a5a'
theme.bg_urgent = '#3F3F3F'
theme.bg_systray = theme.background
theme.bat_bg_critical = '#ff0000'
theme.clockgf = '#ffffff'

-- Borders

theme.border_width = 2
theme.border_normal = theme.background
theme.border_focus = theme.primary_hue_300
theme.border_marked = '#CC9393'

-- Menu

theme.menu_height = 16
theme.menu_width = 160

-- Notifications
theme.notification_font = 'Roboto Regular 12'
theme.notification_bg = '#232323'
theme.notification_fg = '#e4e4e4'
theme.notification_border_width = 0
theme.notification_border_color = '#232323'
theme.notification_shape = gears.shape.rounded
theme.notification_opacity = 1
theme.notification_margin = 30

-- Layout

theme.layout_max = theme.icons .. 'layouts/arrow-expand-all.png'
theme.layout_tile = theme.icons .. 'layouts/view-quilt.png'

-- Taglist

theme.taglist_bg_empty = 'png:' .. theme.icons .. 'tag-list/unselected.png'
theme.taglist_bg_occupied = 'png:' .. theme.icons .. 'tag-list/unselected.png'
theme.taglist_bg_urgent = 'png:' .. theme.icons .. 'tag-list/urgent.png'
theme.taglist_bg_focus = 'png:' .. theme.icons .. 'tag-list/selected.png'

-- Tasklist

theme.tasklist_font = 'Roboto medium 11'
theme.tasklist_bg_normal = theme.background
theme.tasklist_bg_focus =
    'linear:0,0:0,48:0,' ..
    theme.background .. ':0.95,' .. theme.background .. ':0.95,' .. theme.fg_normal .. ':1,' .. theme.fg_normal
theme.tasklist_bg_urgent = theme.primary_hue_800
theme.tasklist_fg_focus = '#DDDDDD'
theme.tasklist_fg_urgent = theme.fg_normal
theme.tasklist_fg_normal = '#AAAAAA'

-- ALSA volume
theme.volume =
    lain.widget.alsa(
    {
        --togglechannel = "IEC958,3",
        settings = function()
            header = ' Vol '
            vlevel = volume_now.level

            if volume_now.status == 'off' then
                vlevel = vlevel .. 'M '
            else
                vlevel = vlevel .. ' '
            end

            widget:set_markup(markup.font(theme.font, markup('#9E9C9A', header) .. vlevel))
        end
    }
)
-- Widget

theme.widget_display = theme.icons .. 'panel/widgets/display/widget_display.png'
theme.widget_display_r = theme.icons .. 'panel/widgets/display/widget_display_r.png'
theme.widget_display_c = theme.icons .. 'panel/widgets/display/widget_display_c.png'
theme.widget_display_l = theme.icons .. 'panel/widgets/display/widget_display_l.png'

-- Separators

theme.spr = theme.icons .. 'panel/separators/spr.png'
theme.sprtr = theme.icons .. 'panel/separators/sprtr.png'
theme.spr4px = theme.icons .. 'panel/separators/spr4px.png'
theme.spr5px = theme.icons .. 'panel/separators/spr5px.png'

-- Battery
theme.widget_ac = theme.icons .. 'panel/widgets/battery/ac.png'
theme.widget_battery = theme.icons .. 'panel/widgets/battery/battery.png'
theme.widget_battery_low = theme.icons .. 'panel/widgets/battery/battery_low.png'
theme.widget_battery_empty = theme.icons .. 'panel/widgets/battery/battery_empty.png'

-- Misc

theme.menu_submenu_icon = theme.icons .. 'submenu.png'

theme.home = theme.dir .. '/icons/magnify.png'
theme.add = theme.dir .. '/icons/plus.png'

return theme
