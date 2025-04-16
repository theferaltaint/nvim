local Builder = require("keymap.builder").Builder

---@class Macro : Builder
local Macro = Builder:extend()
Macro.__index = Macro

-- Recording / Playback
Macro.StartRecording = Builder:New()
    :NormalMode()
    :Key("q{a-z}")
    :Action("q{a-z}")
    :Desc("Start recording macro into register")

Macro.StopRecording = Builder:New()
    :NormalMode()
    :Key("q")
    :Action("q")
    :Desc("Stop recording macro")

Macro.PlayMacro = Builder:New()
    :NormalMode()
    :Key("@{a-z}")
    :Action("@{a-z}")
    :Desc("Play macro from register")

Macro.RepeatLastMacro = Builder:New()
    :NormalMode()
    :Key("@@")
    :Action("@@")
    :Desc("Repeat last executed macro")

-- Ex-style
Macro.ExecuteRegister = Builder:New()
    :NormalMode()
    :Action(":@{a-z}<CR>")
    :Desc("Execute content of register as Ex command")

Macro.EditMacro = Builder:New()
    :NormalMode()
    :Key('"qp')
    :Action('"qp')
    :Desc("Edit macro in register q")

Macro.StoreMacro = Builder:New()
    :NormalMode()
    :Key('"qyy')
    :Action('"qyy')
    :Desc("Store current line as macro in register q")

Macro.AppendMacro = Builder:New()
    :NormalMode()
    :Key("qQ")
    :Action("qQ")
    :Desc("Append to existing macro (capital letter)")

Macro.PlayMacroLines = Builder:New()
    :NormalMode()
    :Action(":[range]normal @q<CR>")
    :Desc("Play macro on multiple lines")

return Macro
