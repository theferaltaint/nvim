local Builder = require("keymap.builder").Builder

---@class View : Builder
local View = Builder:extend()
View.__index = View

View.ScrollBind = Builder:New()
    :NormalMode()
    :Action(":set scrollbind<CR>")
    :Desc("Lock scrolling with other windows")

View.NoScrollBind = Builder:New()
    :NormalMode()
    :Action(":set noscrollbind<CR>")
    :Desc("Unlock scrolling")

View.CursorBind = Builder:New()
    :NormalMode()
    :Action(":set cursorbind<CR>")
    :Desc("Lock cursor position across windows")

View.NoCursorBind = Builder:New()
    :NormalMode()
    :Action(":set nocursorbind<CR>")
    :Desc("Unlock cursor sync")

View.CursorColumn = Builder:New()
    :NormalMode()
    :Action(":set cursorcolumn<CR>")
    :Desc("Highlight current column")

View.CursorLine = Builder:New()
    :NormalMode()
    :Action(":set cursorline<CR>")
    :Desc("Highlight current line")

View.RelativeNumber = Builder:New()
    :NormalMode()
    :Action(":set relativenumber<CR>")
    :Desc("Use relative line numbers")

View.AbsoluteNumber = Builder:New()
    :NormalMode()
    :Action(":set number<CR>")
    :Desc("Use absolute line numbers")

View.ToggleWrapping = Builder:New()
    :NormalMode()
    :Action(":set wrap!<CR>")
    :Desc("Toggle line wrapping")

View.ToggleScrollBind = Builder:New()
    :NormalMode()
    :Action(":set scrollbind!<CR>")
    :Desc("Toggle scroll binding")

View.ToggleCursorBind = Builder:New()
    :NormalMode()
    :Action(":set cursorbind!<CR>")
    :Desc("Toggle cursor bind")

View.ToggleCursorLine = Builder:New()
    :NormalMode()
    :Action(":set cursorline!<CR>")
    :Desc("Toggle cursor line highlight")

View.ToggleCursorColumn = Builder:New()
    :NormalMode()
    :Action(":set cursorcolumn!<CR>")
    :Desc("Toggle cursor column highlight")

View.ToggleNumber = Builder:New()
    :NormalMode()
    :Action(":set number!<CR>")
    :Desc("Toggle absolute line numbers")

View.ToggleRelNumber = Builder:New()
    :NormalMode()
    :Action(":set relativenumber!<CR>")
    :Desc("Toggle relative line numbers")

View.DiffThisWindow = Builder:New()
    :NormalMode()
    :Action(":diffthis<CR>")
    :Desc("Add current window to diff")

View.DiffOff = Builder:New()
    :NormalMode()
    :Action(":diffoff<CR>")
    :Desc("Turn off diff in current window")

View.DiffOffAll = Builder:New()
    :NormalMode()
    :Action(":diffoff!<CR>")
    :Desc("Turn off diff in all windows")

View.DiffUpdate = Builder:New()
    :NormalMode()
    :Action(":diffupdate<CR>")
    :Desc("Update diff highlights")

return View
