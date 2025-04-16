local Builder = require("keymap.builder").Builder

---@class Mark : Builder
local Mark = Builder:extend()
Mark.__index = Mark

-- Setting / Jumping
Mark.SetMark = Builder:New()
    :NormalMode()
    :Key("m{char}")
    :Action("m{char}")
    :Desc("Set mark at cursor")

Mark.JumpToMark = Builder:New()
    :NormalMode()
    :Key("`{char}")
    :Action("`{char}")
    :Desc("Jump to mark location")

Mark.JumpToMarkLine = Builder:New()
    :NormalMode()
    :Key("'{char}")
    :Action("'{char}")
    :Desc("Jump to start of marked line")

Mark.JumpToLastPos = Builder:New()
    :NormalMode()
    :Key("``")
    :Action("``")
    :Desc("Jump to last position")

-- Listing / Deleting
Mark.ListMarks = Builder:New()
    :NormalMode()
    :Action(":marks<CR>")
    :Desc("List all defined marks")

Mark.DeleteMarks = Builder:New()
    :NormalMode()
    :Action(":delmarks ")
    :Desc("Delete specified marks (append char)")

Mark.DeleteAllMarks = Builder:New()
    :NormalMode()
    :Action(":delmarks!<CR>")
    :Desc("Delete all lowercase marks")

-- Jumps to last edits, inserts, selects
Mark.JumpLastEdit = Builder:New()
    :NormalMode()
    :Key("`.")
    :Action("`.")
    :Desc("Jump to last edit")

Mark.JumpLastInsert = Builder:New()
    :NormalMode()
    :Key("`^")
    :Action("`^")
    :Desc("Jump to last insert")

Mark.JumpLastSelect = Builder:New()
    :NormalMode()
    :Key("`<")
    :Action("`<")
    :Desc("Jump to start of last selection")

Mark.JumpLastSelectEnd = Builder:New()
    :NormalMode()
    :Key("`>")
    :Action("`>")
    :Desc("Jump to end of last selection")

return Mark
