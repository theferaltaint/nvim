-- keymap/commands/buffer.lua
local Builder = require("keymap.builder")

---@class Buffer : Builder
local Buffer = Builder:extend()
Buffer.__index = Buffer

Buffer.Next = Builder:New()
    :NormalMode()
    :Action(":bn<CR>")
    :Desc("Go to next buffer")

Buffer.Prev = Builder:New()
    :NormalMode()
    :Action(":bp<CR>")
    :Desc("Go to previous buffer")

Buffer.Delete = Builder:New()
    :NormalMode()
    :Action(":bd<CR>")
    :Desc("Delete current buffer")

Buffer.DeleteForce = Builder:New()
    :NormalMode()
    :Action(":bd!<CR>")
    :Desc("Force delete buffer")

Buffer.Wipeout = Builder:New()
    :NormalMode()
    :Action(":bwipeout<CR>")
    :Desc("Wipeout current buffer")

Buffer.List = Builder:New()
    :NormalMode()
    :Action(":ls<CR>")
    :Desc("List all buffers")

Buffer.GoTo = Builder:New()
    :NormalMode()
    :Action(":buffer ")
    :Desc("Go to buffer by number")

Buffer.ArgsList = Builder:New()
    :NormalMode()
    :Action(":args<CR>")
    :Desc("Show argument list")

Buffer.First = Builder:New()
    :NormalMode()
    :Action(":bfirst<CR>")
    :Desc("Go to first buffer")

Buffer.Last = Builder:New()
    :NormalMode()
    :Action(":blast<CR>")
    :Desc("Go to last buffer")

Buffer.New = Builder:New()
    :NormalMode()
    :Action(":new<CR>")
    :Desc("Create new buffer with horizontal split")

Buffer.VNew = Builder:New()
    :NormalMode()
    :Action(":vnew<CR>")
    :Desc("Create new buffer with vertical split")

Buffer.Hide = Builder:New()
    :NormalMode()
    :Action(":hide<CR>")
    :Desc("Hide current buffer")

Buffer.Only = Builder:New()
    :NormalMode()
    :Action(":only<CR>")
    :Desc("Close all but current buffer")

Buffer.Alt = Builder:New()
    :NormalMode()
    :Action(":b#<CR>")
    :Desc("Switch to alternate buffer")

Buffer.NextHidden = Builder:New()
    :NormalMode()
    :Action(":sbnext<CR>")
    :Desc("Next buffer with window")

Buffer.PrevHidden = Builder:New()
    :NormalMode()
    :Action(":sbprev<CR>")
    :Desc("Previous buffer with window")

Buffer.Do = Builder:New()
    :NormalMode()
    :Action(":bufdo ")
    :Desc("Execute command in all buffers")

Buffer.Add = Builder:New()
    :NormalMode()
    :Action(":badd ")
    :Desc("Add buffer without switching")

Buffer.Unload = Builder:New()
    :NormalMode()
    :Action(":bunload<CR>")
    :Desc("Unload buffer from memory")

Buffer.Split = Builder:New()
    :NormalMode()
    :Action(":sb ")
    :Desc("Split window and edit buffer")

Buffer.VSplit = Builder:New()
    :NormalMode()
    :Action(":vert sb ")
    :Desc("Vertical split and edit buffer")

return Buffer
