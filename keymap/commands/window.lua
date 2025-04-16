-- keymap/commands/window.lua
local Builder = require("keymap.builder")

---@class Window : Builder
local Window = Builder:extend()
Window.__index = Window

Window.SplitHorizontal = Builder:New()
    :NormalMode()
    :Key("<C-w>v")
    :Action("<C-w>v")
    :Desc("Split window horizontally")

Window.SplitVertical = Builder:New()
    :NormalMode()
    :Key("<C-w>s")
    :Action("<C-w>s")
    :Desc("Split window vertically")

Window.Close = Builder:New()
    :NormalMode()
    :Key("<C-w>c")
    :Action("<C-w>c")
    :Desc("Close current window")

Window.CloseAll = Builder:New()
    :NormalMode()
    :Key("<C-w>o")
    :Action("<C-w>o")
    :Desc("Keep only current window")

Window.CloseAllButCurrent = Builder:New()
    :NormalMode()
    :Action(":only<CR>")
    :Desc("Close all but current window")

Window.RotateLeft = Builder:New()
    :NormalMode()
    :Key("<C-w>H")
    :Action("<C-w>H")
    :Desc("Move window to far left")

Window.RotateRight = Builder:New()
    :NormalMode()
    :Key("<C-w>L")
    :Action("<C-w>L")
    :Desc("Move window to far right")

Window.RotateDown = Builder:New()
    :NormalMode()
    :Key("<C-w>J")
    :Action("<C-w>J")
    :Desc("Move window to bottom")

Window.RotateUp = Builder:New()
    :NormalMode()
    :Key("<C-w>K")
    :Action("<C-w>K")
    :Desc("Move window to top")

Window.IncreaseWidth = Builder:New()
    :NormalMode()
    :Key("<C-w>>")
    :Action("<C-w>>")
    :Desc("Increase window width")

Window.DecreaseWidth = Builder:New()
    :NormalMode()
    :Key("<C-w><")
    :Action("<C-w><")
    :Desc("Decrease window width")

Window.IncreaseHeight = Builder:New()
    :NormalMode()
    :Key("<C-w>+")
    :Action("<C-w>+")
    :Desc("Increase window height")

Window.DecreaseHeight = Builder:New()
    :NormalMode()
    :Key("<C-w>-")
    :Action("<C-w>-")
    :Desc("Decrease window height")

Window.MoveLeft = Builder:New()
    :NormalMode()
    :Key("<C-w>h")
    :Action("<C-w>h")
    :Desc("Focus window left")

Window.MoveDown = Builder:New()
    :NormalMode()
    :Key("<C-w>j")
    :Action("<C-w>j")
    :Desc("Focus window down")

Window.MoveUp = Builder:New()
    :NormalMode()
    :Key("<C-w>k")
    :Action("<C-w>k")
    :Desc("Focus window up")

Window.MoveRight = Builder:New()
    :NormalMode()
    :Key("<C-w>l")
    :Action("<C-w>l")
    :Desc("Focus window right")

Window.Next = Builder:New()
    :NormalMode()
    :Key("<C-w>w")
    :Action("<C-w>w")
    :Desc("Cycle to next window")

Window.Previous = Builder:New()
    :NormalMode()
    :Key("<C-w>W")
    :Action("<C-w>W")
    :Desc("Cycle to previous window")

Window.MaxHeight = Builder:New()
    :NormalMode()
    :Key("<C-w>_")
    :Action("<C-w>_")
    :Desc("Maximize window height")

Window.MaxWidth = Builder:New()
    :NormalMode()
    :Key("<C-w>|")
    :Action("<C-w>|")
    :Desc("Maximize window width")

Window.Equalize = Builder:New()
    :NormalMode()
    :Key("<C-w>=")
    :Action("<C-w>=")
    :Desc("Equalize all window sizes")

Window.Swap = Builder:New()
    :NormalMode()
    :Key("<C-w>r")
    :Action("<C-w>r")
    :Desc("Swap windows")

Window.CloseSplit = Builder:New()
    :NormalMode()
    :Action(":close<CR>")
    :Desc("Close current split")

Window.MinHeight = Builder:New()
    :NormalMode()
    :Key("<C-w>1_")
    :Action("<C-w>1_")
    :Desc("Minimize window height")

Window.MinWidth = Builder:New()
    :NormalMode()
    :Key("<C-w>1|")
    :Action("<C-w>1|")
    :Desc("Minimize window width")

Window.Max = Builder:New()
    :NormalMode()
    :Key("<C-w>_<C-w>|")
    :Action("<C-w>_<C-w>|")
    :Desc("Maximize window in both dimensions")

Window.MoveToTab = Builder:New()
    :NormalMode()
    :Key("<C-w>T")
    :Action("<C-w>T")
    :Desc("Move current window to new tab")

return Window
