local Builder = require("keymap.builder").Builder

---@class Jump : Builder
local Jump = Builder:extend()
Jump.__index = Jump

Jump.Next = Builder:New()
    :NormalMode()
    :Key("<C-i>")
    :Action("<C-i>")
    :Desc("Jump forward in jump list")

Jump.Prev = Builder:New()
    :NormalMode()
    :Key("<C-o>")
    :Action("<C-o>")
    :Desc("Jump backward in jump list")

Jump.ChangeListNext = Builder:New()
    :NormalMode()
    :Key("g;")
    :Action("g;")
    :Desc("Jump to older change")

Jump.ChangeListPrev = Builder:New()
    :NormalMode()
    :Key("g,")
    :Action("g,")
    :Desc("Jump to newer change")

Jump.ListJumps = Builder:New()
    :NormalMode()
    :Action(":jumps<CR>")
    :Desc("List jump positions")

Jump.ListChanges = Builder:New()
    :NormalMode()
    :Action(":changes<CR>")
    :Desc("List change positions")

return Jump