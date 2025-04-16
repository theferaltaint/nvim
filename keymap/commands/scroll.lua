local Builder = require("keymap.builder").Builder

---@class Scroll : Builder
local Scroll = Builder:extend()
Scroll.__index = Scroll

Scroll.PageUp = Builder:New()
    :NormalMode()
    :Key("<C-b>")
    :Action("<C-b>")
    :Desc("Scroll page up")

Scroll.PageDown = Builder:New()
    :NormalMode()
    :Key("<C-f>")
    :Action("<C-f>")
    :Desc("Scroll page down")

Scroll.HalfPageUp = Builder:New()
    :NormalMode()
    :Key("<C-u>")
    :Action("<C-u>")
    :Desc("Scroll half page up")

Scroll.HalfPageDown = Builder:New()
    :NormalMode()
    :Key("<C-d>")
    :Action("<C-d>")
    :Desc("Scroll half page down")

Scroll.LineUp = Builder:New()
    :NormalMode()
    :Key("<C-y>")
    :Action("<C-y>")
    :Desc("Scroll screen up one line")

Scroll.LineDown = Builder:New()
    :NormalMode()
    :Key("<C-e>")
    :Action("<C-e>")
    :Desc("Scroll screen down one line")

Scroll.CenterCursor = Builder:New()
    :NormalMode()
    :Key("zz")
    :Action("zz")
    :Desc("Center cursor on screen")

Scroll.TopCursor = Builder:New()
    :NormalMode()
    :Key("zt")
    :Action("zt")
    :Desc("Move cursor to top of screen")

Scroll.BottomCursor = Builder:New()
    :NormalMode()
    :Key("zb")
    :Action("zb")
    :Desc("Move cursor to bottom of screen")

Scroll.ScrollLeft = Builder:New()
    :NormalMode()
    :Key("zh")
    :Action("zh")
    :Desc("Scroll view left")

Scroll.ScrollRight = Builder:New()
    :NormalMode()
    :Key("zl")
    :Action("zl")
    :Desc("Scroll view right")

Scroll.ScrollHalfLeft = Builder:New()
    :NormalMode()
    :Key("zH")
    :Action("zH")
    :Desc("Scroll half screen left")

Scroll.ScrollHalfRight = Builder:New()
    :NormalMode()
    :Key("zL")
    :Action("zL")
    :Desc("Scroll half screen right")

-- Additional toggles
Scroll.FixCursorCentered = Builder:New()
    :NormalMode()
    :Action(":set scrolloff=999<CR>")
    :Desc("Keep cursor always centered")

Scroll.FixCursorNormal = Builder:New()
    :NormalMode()
    :Action(":set scrolloff=0<CR>")
    :Desc("Restore normal cursor scrolling")

Scroll.FixCursorMargin = Builder:New()
    :NormalMode()
    :Action(":set scrolloff=3<CR>")
    :Desc("Keep cursor 3 lines from edge")

return Scroll
