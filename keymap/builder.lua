-- ---@class Mode
-- ---@field Normal string Normal mode
-- ---@field Insert string Insert mode
-- ---@field Visual string Visual mode
-- ---@field Command string Command mode
-- ---@field Terminal string Terminal mode
-- ---@field All string All modes
-- _G.Mode = {
--     Normal = 'n',
--     Insert = 'i',
--     Visual = 'v',
--     Command = 'c',
--     Terminal = 't',
--     All = ""
-- }

---@class Builder
---@field mode string|string[] Mode(s) this keymap applies to — e.g. `"n"` or `{ "n", "v" }`
---@field key string The key sequence to bind — e.g. `"<leader>w"`
---@field action string|fun() The action to perform — a Vim command string (e.g. `":w<CR>"`) or Lua function
---@field remap boolean Whether the keymap is remappable (`false` = `noremap`, safe default)
---@field silent boolean Suppress command-line echo when the key is triggered (`true` = quiet)
---@field desc string Optional description (used in which-key, Telescope, etc.)
---@field expr boolean If true, treat the action as an expression (e.g. returns a value like `v:lua...`)
---@field nowait boolean If true, do not wait for additional key input (used to avoid delays in combos)
---@field unique boolean If true, error if a mapping already exists (protects from overwriting)
---@field buffer integer|nil If set, apply the keybinding to a specific buffer only (e.g. `0` = current buffer)
local Builder = {}
Builder.__index = Builder

function Builder:New()
    local instance = setmetatable({}, self)
    instance.mode = self:AllModes()
    return instance
end

function Builder:NormalMode()
    if self.mode == "" then
        self.mode = "n"
    else
        self.mode = self.mode .. "n"
    end
    return self
end

function Builder:InsertMode()
    if self.mode == "" then
        self.mode = "i"
    else
        self.mode = self.mode .. "i"
    end
    return self
end

function Builder:VisualMode()
    if self.mode == "" then
        self.mode = "v"
    else
        self.mode = self.mode .. "v"
    end
    return self
end

function Builder:CommandMode()
    if self.mode == "" then
        self.mode = "c"
    else
        self.mode = self.mode .. "c"
    end
    return self
end

function Builder:TerminalMode()
    if self.mode == "" then
        self.mode = "t"
    else
        self.mode = self.mode .. "t"
    end
    return self
end

function Builder:OperatorMode()
    if self.mode == "" then
        self.mode = "o"
    else
        self.mode = self.mode .. "o"
    end
    return self
end

function Builder:AllModes()
    if self.mode == "" then
        self.mode = ""
    else
        self.mode = self.mode .. ""
    end
    return self
end

function Builder:ClearModes()
    self.mode = nil
    return self
end


function Builder:extend(values)
    local subclass = values or {}
    subclass.__index = subclass
    setmetatable(subclass, { __index = self })
    return subclass
end

function Builder:Key(k)
    self.key = k
    return self
end

function Builder:Multikey(...)
    local keys = {}
    for _, k in ipairs({ ... }) do
        table.insert(keys, k)
    end
    self.key = table.concat(keys, "")
    return self
end

function Builder:Action(a)
    self.action = a
    return self
end

function Builder:Remap(r)
    self.remap = r
    return self
end

function Builder:Silent(s)
    self.silent = s
    return self
end

function Builder:Desc(d)
    self.desc = d
    return self
end

function Builder:CanRemap()
    self.remap = true
    return self
end

function Builder:IsSilent()
    self.silent = true
    return self
end

function Builder:IsExpr(e)
    self.expr = e
    return self
end

function Builder:NoWait()
    self.nowait = true
    return self
end

function Builder:IsUnique()
    self.unique = true
    return self
end

---@param n integer
function Builder:Buffer(n)
    self.buffer = n
    return self
end

function Builder:Build()
    local modes = type(self.mode) == "string" and { self.mode } or self.mode
    local defaults = {
        noremap = self.remap,
        silent  = self.silent,
        desc    = self.desc,
    }

    if type(modes) == "string" then
        modes = { modes }
    end

    for _, m in ipairs(modes) do
        vim.keymap.set(m, self.key, self.action, defaults)
    end
end

return {
    Builder = Builder,
    -- Keymap = Keymap,
    -- KeymapBuilder = KeymapBuilder,
    -- KeymapBuilderMeta = KeymapBuilderMeta,
    -- KeymapBuilderMetaMethods = KeymapBuilderMetaMethods,
    -- KeymapBuilderMethods = KeymapBuilderMethods,
}
