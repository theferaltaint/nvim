local Builder = require("keymap.builder").Builder

---@class Cmdline : Builder
local Cmdline = Builder:extend()
Cmdline.__index = Cmdline

-- Key handling in command-line mode uses :CommandMode(),
-- but note that many are internal to the cmdline, so normal mode fallback:

Cmdline.CmdlineBackspace = Builder:New()
    :CommandMode()
    :Key("<C-h>")
    :Action("<C-h>")
    :Desc("Delete character left in command-line")

Cmdline.CmdlineForward = Builder:New()
    :CommandMode()
    :Key("<Right>")
    :Action("<Right>")
    :Desc("Move cursor right in cmdline")

Cmdline.CmdlineBackward = Builder:New()
    :CommandMode()
    :Key("<Left>")
    :Action("<Left>")
    :Desc("Move cursor left in cmdline")

Cmdline.CmdlineClear = Builder:New()
    :CommandMode()
    :Key("<C-u>")
    :Action("<C-u>")
    :Desc("Clear entire cmdline")

Cmdline.CmdlineDeleteWord = Builder:New()
    :CommandMode()
    :Key("<C-w>")
    :Action("<C-w>")
    :Desc("Delete word before cursor in cmdline")

Cmdline.CmdlineInsertFile = Builder:New()
    :CommandMode()
    :Key("<C-r>%")
    :Action("<C-r>%")
    :Desc("Insert current file name in cmdline")

Cmdline.CmdlineInsertAlt = Builder:New()
    :CommandMode()
    :Key("<C-r>#")
    :Action("<C-r>#")
    :Desc("Insert alternate file name in cmdline")

Cmdline.CmdlinePrevCmd = Builder:New()
    :CommandMode()
    :Key("<Up>")
    :Action("<Up>")
    :Desc("Previous command history")

Cmdline.CmdlineNextCmd = Builder:New()
    :CommandMode()
    :Key("<Down>")
    :Action("<Down>")
    :Desc("Next command history")

-- The real mode for ':' is normal, but we won't rebind that.
-- If you want a mapping, do:
-- Cmdline.CmdlineStart = ...
-- But typically you don't override ':'.

Cmdline.CmdlineComplete = Builder:New()
    :CommandMode()
    :Key("<Tab>")
    :Action("<Tab>")
    :Desc("Command-line completion")

Cmdline.CmdlineHistoryBrowse = Builder:New()
    :NormalMode()
    :Key("q:")
    :Action("q:")
    :Desc("Browse command history")

Cmdline.CmdlineSearchHistoryBrowse = Builder:New()
    :NormalMode()
    :Key("q/")
    :Action("q/")
    :Desc("Browse search history")

Cmdline.CmdlineRegister = Builder:New()
    :CommandMode()
    :Key("<C-r>")
    :Action("<C-r>")
    :Desc("Insert from register in cmdline")

Cmdline.CmdlineShell = Builder:New()
    :NormalMode()
    :Action(":! ")
    :Desc("Run shell command from cmdline")

Cmdline.CmdlineWrite = Builder:New()
    :NormalMode()
    :Action(":w")
    :Desc("Write file (command-line form)")

Cmdline.CmdlineWriteQuit = Builder:New()
    :NormalMode()
    :Action(":wq")
    :Desc("Write file and quit")

Cmdline.CmdlineEdit = Builder:New()
    :CommandMode()
    :Key("<C-f>")
    :Action("<C-f>")
    :Desc("Edit cmdline in buffer")

Cmdline.CmdlineExecute = Builder:New()
    :NormalMode()
    :Key("@:")
    :Action("@:")
    :Desc("Execute last command again")

Cmdline.CmdlinePaste = Builder:New()
    :CommandMode()
    :Key('<C-r>"')
    :Action('<C-r>"')
    :Desc("Paste from default register in cmdline")

return Cmdline
