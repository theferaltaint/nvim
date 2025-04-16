local Builder = require("keymap.builder")

---@class Fold : Builder
local Fold = Builder:extend()
Fold.__index = Fold

Fold.Toggle = Builder:New()
    :NormalMode()
    :Key("za")
    :Action("za")
    :Desc("Toggle fold at cursor")

Fold.Open = Builder:New()
    :NormalMode()
    :Key("zo")
    :Action("zo")
    :Desc("Open fold")

Fold.Close = Builder:New()
    :NormalMode()
    :Key("zc")
    :Action("zc")
    :Desc("Close fold")

Fold.OpenAll = Builder:New()
    :NormalMode()
    :Key("zR")
    :Action("zR")
    :Desc("Open all folds")

Fold.CloseAll = Builder:New()
    :NormalMode()
    :Key("zM")
    :Action("zM")
    :Desc("Close all folds")

Fold.Delete = Builder:New()
    :NormalMode()
    :Key("zd")
    :Action("zd")
    :Desc("Delete fold at cursor")

Fold.DeleteAll = Builder:New()
    :NormalMode()
    :Key("zE")
    :Action("zE")
    :Desc("Delete all manual folds")

Fold.FoldMore = Builder:New()
    :NormalMode()
    :Key("zC")
    :Action("zC")
    :Desc("Close more folds")

Fold.FoldLess = Builder:New()
    :NormalMode()
    :Key("zO")
    :Action("zO")
    :Desc("Open more folds")

Fold.Next = Builder:New()
    :NormalMode()
    :Key("zj")
    :Action("zj")
    :Desc("Jump to next fold")

Fold.Prev = Builder:New()
    :NormalMode()
    :Key("zk")
    :Action("zk")
    :Desc("Jump to previous fold")

Fold.FoldLevel = Builder:New()
    :NormalMode()
    :Key("zm")
    :Action("zm")
    :Desc("Decrease fold level")

Fold.UnfoldLevel = Builder:New()
    :NormalMode()
    :Key("zr")
    :Action("zr")
    :Desc("Increase fold level")

-- Fold method settings (not bound by default)
Fold.MethodExpr = Builder:New()
    :NormalMode()
    :Action(":set foldmethod=expr<CR>")
    :Desc("Set fold method to expr")

Fold.MethodIndent = Builder:New()
    :NormalMode()
    :Action(":set foldmethod=indent<CR>")
    :Desc("Set fold method to indent")

Fold.MethodMarker = Builder:New()
    :NormalMode()
    :Action(":set foldmethod=marker<CR>")
    :Desc("Set fold method to marker")

Fold.MethodManual = Builder:New()
    :NormalMode()
    :Action(":set foldmethod=manual<CR>")
    :Desc("Set fold method to manual")

Fold.MethodSyntax = Builder:New()
    :NormalMode()
    :Action(":set foldmethod=syntax<CR>")
    :Desc("Set fold method to syntax")

Fold.RecomputeFolds = Builder:New()
    :NormalMode()
    :Key("zx")
    :Action("zx")
    :Desc("Recompute folds and close them")

Fold.PreviewFold = Builder:New()
    :NormalMode()
    :Key("zv")
    :Action("zv")
    :Desc("Open folds just enough to show cursor")

return Fold
