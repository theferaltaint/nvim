local Builder = require("keymap.builder").Builder

---@class Register : Builder
local Register = Builder:extend()
Register.__index = Register

Register.PasteRegister = Builder:New()
    :NormalMode()
    :Key('"{r}p')
    :Action('"{r}p')
    :Desc("Paste from register r")

Register.YankToRegister = Builder:New()
    :NormalMode()
    :Key('"{r}y{motion}')
    :Action('"{r}y{motion}')
    :Desc("Yank to register r")

Register.DeleteToRegister = Builder:New()
    :NormalMode()
    :Key('"{r}d{motion}')
    :Action('"{r}d{motion}')
    :Desc("Delete to register r")

Register.ChangeToRegister = Builder:New()
    :NormalMode()
    :Key('"{r}c{motion}')
    :Action('"{r}c{motion}')
    :Desc("Change to register r")

Register.RecordMacroTo = Builder:New()
    :NormalMode()
    :Key('q{r}')
    :Action('q{r}')
    :Desc("Start macro recording in register r")

Register.ViewRegisters = Builder:New()
    :NormalMode()
    :Action(":registers<CR>")
    :Desc("Show all register contents")

Register.Expression = Builder:New()
    :NormalMode()
    :Key('"=')
    :Action('"=')
    :Desc("Use expression register")

Register.SpecificRegister = Builder:New()
    :NormalMode()
    :Action(":registers {r}<CR>")
    :Desc("View specific register")

Register.PasteInInsert = Builder:New()
    :InsertMode()
    :Key("<C-r>{r}")
    :Action("<C-r>{r}")
    :Desc("Paste register r in insert mode")

Register.PutBefore = Builder:New()
    :NormalMode()
    :Key("[p")
    :Action("[p")
    :Desc("Put before with indent adjust")

Register.PutAfter = Builder:New()
    :NormalMode()
    :Key("]p")
    :Action("]p")
    :Desc("Put after with indent adjust")

Register.PutExpr = Builder:New()
    :InsertMode()
    :Key("<C-r>=")
    :Action("<C-r>=")
    :Desc("Insert expression result in Insert mode")

return Register
