-- keymap/commands/tab.lua
local Builder = require("keymap.builder")

---@class Tab : Builder
local Tab = Builder:extend()
Tab.__index = Tab

Tab.New = Builder:New()
    :NormalMode()
    :Action(":tabnew<CR>")
    :Desc("Open new tab")

Tab.Close = Builder:New()
    :NormalMode()
    :Action(":tabclose<CR>")
    :Desc("Close current tab")

Tab.Next = Builder:New()
    :NormalMode()
    :Action(":tabnext<CR>")
    :Desc("Go to next tab")

Tab.Prev = Builder:New()
    :NormalMode()
    :Action(":tabprev<CR>")
    :Desc("Go to previous tab")

Tab.First = Builder:New()
    :NormalMode()
    :Action(":tabfirst<CR>")
    :Desc("Go to first tab")

Tab.Last = Builder:New()
    :NormalMode()
    :Action(":tablast<CR>")
    :Desc("Go to last tab")

Tab.MoveLeft = Builder:New()
    :NormalMode()
    :Action(":tabmove -1<CR>")
    :Desc("Move tab left")

Tab.MoveRight = Builder:New()
    :NormalMode()
    :Action(":tabmove +1<CR>")
    :Desc("Move tab right")

Tab.List = Builder:New()
    :NormalMode()
    :Action(":tabs<CR>")
    :Desc("List all tabs")

Tab.Open = Builder:New()
    :NormalMode()
    :Action(":tab split<CR>")
    :Desc("Open current buffer in new tab")

Tab.Num = Builder:New()
    :NormalMode()
    :Action(":tabn ")
    :Desc("Go to tab by number")

Tab.Only = Builder:New()
    :NormalMode()
    :Action(":tabonly<CR>")
    :Desc("Close all other tabs")

Tab.TabDo = Builder:New()
    :NormalMode()
    :Action(":tabdo ")
    :Desc("Run command in all tabs")

Tab.NextBuffer = Builder:New()
    :NormalMode()
    :Action(":tabnext | bn<CR>")
    :Desc("Next buffer in current tab")

Tab.PrevBuffer = Builder:New()
    :NormalMode()
    :Action(":tabnext | bp<CR>")
    :Desc("Previous buffer in current tab")

return Tab
