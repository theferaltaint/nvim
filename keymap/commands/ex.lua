local Builder = require("keymap.builder").Builder

---@class Ex : Builder
local Ex = Builder:extend()
Ex.__index = Ex

Ex.Global = Builder:New()
    :NormalMode()
    :Action(":g/")
    :Desc("Execute on lines matching pattern")

Ex.VGlobal = Builder:New()
    :NormalMode()
    :Action(":v/")
    :Desc("Execute on lines NOT matching pattern")

Ex.Normal = Builder:New()
    :NormalMode()
    :Action(":normal ")
    :Desc("Execute normal mode commands")

Ex.Source = Builder:New()
    :NormalMode()
    :Action(":source ")
    :Desc("Execute script file")

Ex.Execute = Builder:New()
    :NormalMode()
    :Action(":execute ")
    :Desc("Execute result of expressions")

Ex.KeepPattern = Builder:New()
    :NormalMode()
    :Action(":keeppatterns ")
    :Desc("Execute without changing search pattern")

Ex.Silent = Builder:New()
    :NormalMode()
    :Action(":silent ")
    :Desc("Execute without echoing")

Ex.Range = Builder:New()
    :NormalMode()
    :Action(":{range}")
    :Desc("Range specification for Ex commands")

Ex.Sandbox = Builder:New()
    :NormalMode()
    :Action(":sandbox ")
    :Desc("Execute in sandbox for security")

return Ex