local Builder = require("keymap.builder")

---@class Terminal : Builder
local Terminal = Builder:extend()
Terminal.__index = Terminal

Terminal.OpenHorizontal = Builder:New()
    :NormalMode()
    :Action(":split | terminal<CR>")
    :Desc("Open terminal below")

Terminal.OpenVertical = Builder:New()
    :NormalMode()
    :Action(":vsplit | terminal<CR>")
    :Desc("Open terminal beside")

Terminal.OpenNewTab = Builder:New()
    :NormalMode()
    :Action(":tabnew | terminal<CR>")
    :Desc("Open terminal in new tab")

Terminal.Open = Builder:New()
    :NormalMode()
    :Action(":terminal<CR>")
    :Desc("Open terminal in current window")

Terminal.OpenWithCmd = Builder:New()
    :NormalMode()
    :Action(":terminal ")
    :Desc("Open terminal with specific command")

Terminal.Kill = Builder:New()
    :NormalMode()
    :Action(":bdelete!<CR>")
    :Desc("Kill terminal buffer")

Terminal.ExitInsert = Builder:New()
    :TerminalMode()
    :Key("<C-\\><C-n>")
    :Action("<C-\\><C-n>")
    :Desc("Exit terminal insert mode")

Terminal.SendEsc = Builder:New() -- if you want a second reference to <C-\><C-n>
    :TerminalMode()
    :Action("<C-\\><C-n>")
    :Desc("Send escape key in terminal")

Terminal.SendInterrupt = Builder:New()
    :TerminalMode()
    :Key("<C-c>")
    :Action("<C-c>")
    :Desc("Send interrupt (SIGINT) in terminal")

return Terminal
