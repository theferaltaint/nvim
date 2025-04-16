local Builder = require("keymap.builder").Builder

---@class Clipboard : Builder
local Clipboard = Builder:extend()
Clipboard.__index = Clipboard

-- System-based combos: all normal mode by default
Clipboard.YankLineToSystem = Builder:New()
    :NormalMode()
    :Key('"+yy')
    :Action('"+yy')
    :Desc("Yank entire line to system clipboard")

Clipboard.YankSelectionToSystem = Builder:New()
    :VisualMode()
    :Key('"+y')
    :Action('"+y')
    :Desc("Yank visual selection to system clipboard")

Clipboard.PasteFromSystem = Builder:New()
    :NormalMode()
    :Key('"+p')
    :Action('"+p')
    :Desc("Paste from system clipboard after cursor")

Clipboard.PasteBeforeSystem = Builder:New()
    :NormalMode()
    :Key('"+P')
    :Action('"+P')
    :Desc("Paste from system clipboard before cursor")

Clipboard.YankBlockToSystem = Builder:New()
    :VisualMode()
    :Key('"+y')
    :Action('"+y')
    :Desc("Yank block in visual block mode to system clipboard")

Clipboard.DeleteSelectionToSystem = Builder:New()
    :VisualMode()
    :Key('"+d')
    :Action('"+d')
    :Desc("Delete selection to system clipboard")

Clipboard.ChangeSelectionToSystem = Builder:New()
    :VisualMode()
    :Key('"+c')
    :Action('"+c')
    :Desc("Change selection using system clipboard")

Clipboard.ReplaceWithSystem = Builder:New()
    :VisualMode()
    :Key('"+gp')
    :Action('"+gp')
    :Desc("Replace selection with system clipboard")

Clipboard.SelectAll = Builder:New()
    :NormalMode()
    :Key("ggVG")
    :Action("ggVG")
    :Desc("Select entire file")

Clipboard.YankFileToSystem = Builder:New()
    :NormalMode()
    :Action('ggVG"+y')
    :Desc("Yank entire file to system clipboard")

Clipboard.ClearRegister = Builder:New()
    :NormalMode()
    :Key("qaq")
    :Action("qaq")
    :Desc("Clear register a (example)")

Clipboard.AppendToRegister = Builder:New()
    :NormalMode()
    :Key('"Ayy')
    :Action('"Ayy')
    :Desc("Append current line to register A")

return Clipboard
