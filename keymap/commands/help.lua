local Builder = require("keymap.builder").Builder

---@class Help : Builder
local Help = Builder:extend()
Help.__index = Help

Help.General = Builder:New()
    :NormalMode()
    :Action(":help<CR>")
    :Desc("Open general help")

Help.Topic = Builder:New()
    :NormalMode()
    :Action(":help ")
    :Desc("Show help for topic")

Help.Keyword = Builder:New()
    :NormalMode()
    :Key("K")
    :Action("K")
    :Desc("Look up keyword under cursor")

Help.SearchTag = Builder:New()
    :NormalMode()
    :Key("<C-]>")
    :Action("<C-]>")
    :Desc("Jump to tag under cursor in help")

Help.TagBack = Builder:New()
    :NormalMode()
    :Key("<C-t>")
    :Action("<C-t>")
    :Desc("Jump back from tag")

Help.HelpTags = Builder:New()
    :NormalMode()
    :Action(":helptags ")
    :Desc("Generate help tags for directory")

Help.Options = Builder:New()
    :NormalMode()
    :Action(":help 'option'")
    :Desc("Show help for an option")

Help.Command = Builder:New()
    :NormalMode()
    :Action(":help :")
    :Desc("Show help for Ex commands")

Help.Function = Builder:New()
    :NormalMode()
    :Action(":help function()")
    :Desc("Show help for a function")

return Help