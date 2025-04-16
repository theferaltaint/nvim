---@class Input
---@field Input string
local Input = {}
Input.__index = Input

function Input:Press(key)
    local instance = setmetatable({}, self)
    instance.Input = key
    return instance
end

function Input:Combo(...)
    local keys = { ... }
    local combo = self.Input
    for _, key in ipairs(keys) do
        combo = combo .. key
    end
    return Input:Press(combo)
end