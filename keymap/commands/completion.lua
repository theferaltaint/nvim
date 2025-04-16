local Builder = require("keymap.builder").Builder

---@class Completion : Builder
local Completion = Builder:extend()
Completion.__index = Completion

Completion.Omni = Builder:New()
    :InsertMode()
    :Key("<C-x><C-o>")
    :Action("<C-x><C-o>")
    :Desc("Omni completion")

Completion.Line = Builder:New()
    :InsertMode()
    :Key("<C-x><C-l>")
    :Action("<C-x><C-l>")
    :Desc("Line completion")

Completion.File = Builder:New()
    :InsertMode()
    :Key("<C-x><C-f>")
    :Action("<C-x><C-f>")
    :Desc("File path completion")

Completion.Dictionary = Builder:New()
    :InsertMode()
    :Key("<C-x><C-k>")
    :Action("<C-x><C-k>")
    :Desc("Dictionary completion")

Completion.Thesaurus = Builder:New()
    :InsertMode()
    :Key("<C-x><C-t>")
    :Action("<C-x><C-t>")
    :Desc("Thesaurus completion")

Completion.Tags = Builder:New()
    :InsertMode()
    :Key("<C-x><C-]>")
    :Action("<C-x><C-]>")
    :Desc("Tag completion")

Completion.Definition = Builder:New()
    :InsertMode()
    :Key("<C-x><C-d>")
    :Action("<C-x><C-d>")
    :Desc("Definition completion")

Completion.Context = Builder:New()
    :InsertMode()
    :Key("<C-x><C-p>")
    :Action("<C-x><C-p>")
    :Desc("Context-aware completion (previous)")

Completion.KeywordLocal = Builder:New()
    :InsertMode()
    :Key("<C-x><C-n>")
    :Action("<C-x><C-n>")
    :Desc("Keyword completion (next)")

Completion.SpellSuggest = Builder:New()
    :InsertMode()
    :Key("<C-x>s")
    :Action("<C-x>s")
    :Desc("Spelling suggestion")

return Completion