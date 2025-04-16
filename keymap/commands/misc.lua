local Builder = require("keymap.builder").Builder

---@class Misc : Builder
local Misc = Builder:extend()
Misc.__index = Misc

Misc.RepeatLastCommand = Builder:New()
    :NormalMode()
    :Key(".")
    :Action(".")
    :Desc("Repeat last change")

Misc.RedrawScreen = Builder:New()
    :NormalMode()
    :Action(":redraw!<CR>")
    :Desc("Force screen redraw")

Misc.ShowKeybindings = Builder:New()
    :NormalMode()
    :Action(":map<CR>")
    :Desc("Show all normal mode maps")

Misc.ShowSettings = Builder:New()
    :NormalMode()
    :Action(":set<CR>")
    :Desc("Show all settings")

Misc.ShowKeymaps = Builder:New()
    :NormalMode()
    :Action(":verbose map<CR>")
    :Desc("Show verbose keymaps")

Misc.ShowSyntaxGroup = Builder:New()
    :NormalMode()
    :Action(':echo synIDattr(synID(line("."), col("."), 1), "name")<CR>')
    :Desc("Show syntax at cursor")

Misc.SpellToggle = Builder:New()
    :NormalMode()
    :Action(":set spell!<CR>")
    :Desc("Toggle spell checking")

Misc.SpellNext = Builder:New()
    :NormalMode()
    :Key("]s")
    :Action("]s")
    :Desc("Go to next misspelled word")

Misc.SpellPrev = Builder:New()
    :NormalMode()
    :Key("[s")
    :Action("[s")
    :Desc("Go to previous misspelled word")

Misc.SpellCorrect = Builder:New()
    :NormalMode()
    :Key("z=")
    :Action("z=")
    :Desc("Open spell suggestions")

-- Because <C-r>{reg} in Insert mode is truly Insert,
-- it might belong in Insert class, but if you want it here:
Misc.InsertRegister = Builder:New()
    :InsertMode()
    :Key("<C-r>{reg}")
    :Action("<C-r>{reg}")
    :Desc("Insert register in Insert mode")

Misc.LineJoin = Builder:New()
    :NormalMode()
    :Key("J")
    :Action("J")
    :Desc("Join line below with current")

Misc.FormatBuffer = Builder:New()
    :NormalMode()
    :Action("gg=G")
    :Desc("Autoindent entire file")

Misc.ShowHelp = Builder:New()
    :NormalMode()
    :Action(":help<CR>")
    :Desc("Open help")

Misc.Manual = Builder:New()
    :NormalMode()
    :Action(":man ")
    :Desc("Open system man page")

Misc.ShellCmd = Builder:New()
    :NormalMode()
    :Action(":! ")
    :Desc("Run shell command")

Misc.TogglePaste = Builder:New()
    :NormalMode()
    :Action(":set paste!<CR>")
    :Desc("Toggle paste mode")

Misc.SwapChars = Builder:New()
    :NormalMode()
    :Key("xp")
    :Action("xp")
    :Desc("Swap character with next")

Misc.SortSelection = Builder:New()
    :VisualMode()
    :Action(":sort<CR>")
    :Desc("Sort selected lines")

Misc.SortSelectionUnique = Builder:New()
    :VisualMode()
    :Action(":sort u<CR>")
    :Desc("Sort selected lines unique")

Misc.SortSelectionReverse = Builder:New()
    :VisualMode()
    :Action(":sort!<CR>")
    :Desc("Sort selected lines reverse")

Misc.ConvertToHex = Builder:New()
    :NormalMode()
    :Action(":%!xxd<CR>")
    :Desc("Convert buffer to hex dump")

Misc.ConvertFromHex = Builder:New()
    :NormalMode()
    :Action(":%!xxd -r<CR>")
    :Desc("Convert hex dump back to text")

Misc.ToggleList = Builder:New()
    :NormalMode()
    :Action(":set list!<CR>")
    :Desc("Toggle visibility of whitespace")

Misc.SaveWithSudo = Builder:New()
    :NormalMode()
    :Action(":w !sudo tee % > /dev/null<CR>")
    :Desc("Save with sudo")

Misc.ToggleColorcolumn = Builder:New()
    :NormalMode()
    :Action(":set colorcolumn=<CR>")
    :Desc("Toggle color column off/on")

Misc.SetColorcolumn = Builder:New()
    :NormalMode()
    :Action(":set colorcolumn=80<CR>")
    :Desc("Set color column at 80")

Misc.ViewHighlightGroups = Builder:New()
    :NormalMode()
    :Action(":so $VIMRUNTIME/syntax/hitest.vim<CR>")
    :Desc("View all highlight groups")

Misc.ViewHighlightUnderCursor = Builder:New()
    :NormalMode()
    :Action(
    ':echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . "> trans<" . synIDattr(synID(line("."),col("."),0),"name") . "> lo<" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>')
    :Desc("View highlight under cursor")

Misc.Retab = Builder:New()
    :NormalMode()
    :Action(":%retab<CR>")
    :Desc("Convert tabs to spaces")

Misc.TrimTrailingWhitespace = Builder:New()
    :NormalMode()
    :Action(":%s/\\s\\+$//e<CR>")
    :Desc("Trim trailing whitespace")

Misc.ConvertToUnix = Builder:New()
    :NormalMode()
    :Action(":set ff=unix<CR>")
    :Desc("Convert line endings to Unix")

Misc.ConvertToDos = Builder:New()
    :NormalMode()
    :Action(":set ff=dos<CR>")
    :Desc("Convert line endings to DOS")

Misc.ToggleConceal = Builder:New()
    :NormalMode()
    :Action(":set conceallevel=<CR>")
    :Desc("Toggle conceallevel")

Misc.ToggleFoldColumn = Builder:New()
    :NormalMode()
    :Action(":set foldcolumn=<CR>")
    :Desc("Toggle fold column")

Misc.ToggleLineBreak = Builder:New()
    :NormalMode()
    :Action(":set linebreak!<CR>")
    :Desc("Toggle line break wrapping")

Misc.LoadPlugin = Builder:New()
    :NormalMode()
    :Action(":packadd <CR>")
    :Desc("Load optional plugin")

Misc.Highlight = Builder:New()
    :NormalMode()
    :Action(":match Search /<CR>")
    :Desc("Create highlight match")

Misc.ClearMatch = Builder:New()
    :NormalMode()
    :Action(":match none<CR>")
    :Desc("Clear matches")

Misc.Redirect = Builder:New()
    :NormalMode()
    :Action(":redir => variable<CR>")
    :Desc("Redirect command output")

Misc.RedirectEnd = Builder:New()
    :NormalMode()
    :Action(":redir END<CR>")
    :Desc("End command redirect")

Misc.LuaEvalLine = Builder:New()
    :NormalMode()
    :Action(":lua <CR>")
    :Desc("Evaluate Lua code line")

Misc.LuaEvalFile = Builder:New()
    :NormalMode()
    :Action(":luafile <CR>")
    :Desc("Evaluate Lua file")

return Misc
