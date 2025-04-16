local Builder = require("keymap.builder").Builder

---@class Operator : Builder
local Operator = Builder:extend()
Operator.__index = Operator

-- Core Text Operators
Operator.Delete = Builder:New()
    :NormalMode()
    :VisualMode()
    :OperatorMode()
    :Key("d")
    :Action("d")
    :Desc("Delete text")

Operator.Yank = Builder:New()
    :NormalMode()
    :VisualMode()
    :OperatorMode()
    :Key("y")
    :Action("y")
    :Desc("Yank (copy) text")

Operator.Change = Builder:New()
    :NormalMode()
    :VisualMode()
    :OperatorMode()
    :Key("c")
    :Action("c")
    :Desc("Change text")

Operator.Substitute = Builder:New()
    :NormalMode()
    :Key("s")
    :Action("s")
    :Desc("Substitute character(s)")

-- Case Transformation
Operator.ToggleCase = Builder:New()
    :NormalMode()
    :Key("g~")
    :Action("g~")
    :Desc("Toggle case")

Operator.ToLower = Builder:New()
    :NormalMode()
    :Key("gu")
    :Action("gu")
    :Desc("Convert to lowercase")

Operator.ToUpper = Builder:New()
    :NormalMode()
    :Key("gU")
    :Action("gU")
    :Desc("Convert to uppercase")

-- Indentation
Operator.IndentRight = Builder:New()
    :NormalMode()
    :VisualMode()
    :OperatorMode()
    :Key(">")
    :Action(">")
    :Desc("Indent right")

Operator.IndentLeft = Builder:New()
    :NormalMode()
    :VisualMode()
    :OperatorMode()
    :Key("<")
    :Action("<")
    :Desc("Indent left")

-- Filter & Formatting
Operator.Format = Builder:New()
    :NormalMode()
    :VisualMode()
    :OperatorMode()
    :Key("gq")
    :Action("gq")
    :Desc("Format text")

Operator.Filter = Builder:New()
    :NormalMode()
    :VisualMode()
    :OperatorMode()
    :Key("!")
    :Action("!")
    :Desc("Filter through external command")

-- Advanced Operators
Operator.ChangeUntilEOL = Builder:New()
    :NormalMode()
    :Key("C")
    :Action("C")
    :Desc("Change to end of line")

Operator.DeleteUntilEOL = Builder:New()
    :NormalMode()
    :Key("D")
    :Action("D")
    :Desc("Delete to end of line")

Operator.YankUntilEOL = Builder:New()
    :NormalMode()
    :Key("Y")
    :Action("Y")
    :Desc("Yank to end of line")

Operator.DeleteChar = Builder:New()
    :NormalMode()
    :VisualMode()
    :Key("x")
    :Action("x")
    :Desc("Delete character")

Operator.DeleteCharBack = Builder:New()
    :NormalMode()
    :VisualMode()
    :Key("X")
    :Action("X")
    :Desc("Delete character before cursor")

Operator.Replace = Builder:New()
    :NormalMode()
    :VisualMode()
    :Key("r")
    :Action("r")
    :Desc("Replace single character")

Operator.ReplaceMode = Builder:New()
    :NormalMode()
    :Key("R")
    :Action("R")
    :Desc("Enter Replace mode")

Operator.JoinLines = Builder:New()
    :NormalMode()
    :VisualMode()
    :Key("J")
    :Action("J")
    :Desc("Join lines")

return Operator
