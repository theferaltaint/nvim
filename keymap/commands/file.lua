-- keymap/commands/file.lua
local Builder = require("keymap.builder")

---@class File : Builder
local File = Builder:extend()
File.__index = File

File.Save = Builder.New()
    :NormalMode()
    :Action(":w<CR>")
    :Desc("Save current buffer")

File.SaveAll = Builder.New()
    :NormalMode()
    :Action(":wa<CR>")
    :Desc("Save all buffers")

File.SaveAs = Builder.New()
    :NormalMode()
    :Action(":saveas ")
    :Desc("Save to specific file")

File.Reload = Builder.New()
    :NormalMode()
    :Action(":e<CR>")
    :Desc("Reload current buffer")

File.ReloadForce = Builder.New()
    :NormalMode()
    :Action(":e!<CR>")
    :Desc("Force reload, discard changes")

File.Quit = Builder.New()
    :NormalMode()
    :Action(":q<CR>")
    :Desc("Quit current window")

File.QuitAll = Builder.New()
    :NormalMode()
    :Action(":qa<CR>")
    :Desc("Quit all windows")

File.QuitForce = Builder.New()
    :NormalMode()
    :Action(":q!<CR>")
    :Desc("Force quit current window")

File.QuitAllForce = Builder.New()
    :NormalMode()
    :Action(":qa!<CR>")
    :Desc("Force quit all windows")

File.SaveQuit = Builder.New()
    :NormalMode()
    :Action(":wq<CR>")
    :Desc("Save and quit")

File.SaveQuitAll = Builder.New()
    :NormalMode()
    :Action(":wqa<CR>")
    :Desc("Save all and quit")

File.Edit = Builder.New()
    :NormalMode()
    :Action(":e ")
    :Desc("Edit specific file")

File.New = Builder.New()
    :NormalMode()
    :Action(":enew<CR>")
    :Desc("Create new empty buffer")

File.Browse = Builder.New()
    :NormalMode()
    :Action(":Ex<CR>")
    :Desc("Open file explorer")

File.ChangeDir = Builder.New()
    :NormalMode()
    :Action(":cd ")
    :Desc("Change directory")

File.PrintCwd = Builder.New()
    :NormalMode()
    :Action(":pwd<CR>")
    :Desc("Print current working directory")

File.Read = Builder.New()
    :NormalMode()
    :Action(":r ")
    :Desc("Read file into buffer")

File.ReadCommand = Builder.New()
    :NormalMode()
    :Action(":r! ")
    :Desc("Read command output into buffer")

File.WriteToFile = Builder.New()
    :NormalMode()
    :Action(":w ")
    :Desc("Write to file")

File.WriteShell = Builder.New()
    :NormalMode()
    :Action(":w !")
    :Desc("Write buffer to shell command input")

File.SaveFileAs = Builder.New()
    :NormalMode()
    :Action(":saveas ")
    :Desc("Save file as")

File.LastModified = Builder.New()
    :NormalMode()
    :Action(":checktime<CR>")
    :Desc("Check for external file changes")

File.Info = Builder.New()
    :NormalMode()
    :Action(":file<CR>")
    :Desc("Show file info")

File.Type = Builder.New()
    :NormalMode()
    :Action(":set filetype=")
    :Desc("Set filetype")

File.Format = Builder.New()
    :NormalMode()
    :Action(":set fileformat=")
    :Desc("Set file format")

File.Encoding = Builder.New()
    :NormalMode()
    :Action(":set fileencoding=")
    :Desc("Set file encoding")

File.MakeDir = Builder:New()
    :NormalMode()
    :Action(":!mkdir ")
    :Desc("Create new directory")

File.ChangeDirHome = Builder:New()
    :NormalMode()
    :Action(":cd ~<CR>")
    :Desc("Change to home directory")

File.Delete = Builder:New()
    :NormalMode()
    :Action(":call delete(")
    :Desc("Delete file (use with caution)")

File.Rename = Builder:New()
    :NormalMode()
    :Action(":saveas  | call delete(expand('#'))<CR>")
    :Desc("Rename current file")

return File
