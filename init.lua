-- init.lua with default keybindings and comments for Neovim in VSCode
-- This file explicitly sets all standard keybindings so you can override them manually
-- Note: These are Neovim defaults and NOT VSCode-specific Vim extension bindings

local map  = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }



-- ════════════════════════════════════════════════════════════════
-- Key: All raw keypress constants (physical or virtual keys)
-- ════════════════════════════════════════════════════════════════
Key = {
    -- ════════════════════════════════════════════════
    -- Navigation Keys
    -- ════════════════════════════════════════════════
    Up           = '<Up>',       -- Arrow Up
    Down         = '<Down>',     -- Arrow Down
    Left         = '<Left>',     -- Arrow Left
    Right        = '<Right>',    -- Arrow Right
    PageUp       = '<PageUp>',   -- Page Up
    PageDown     = '<PageDown>', -- Page Down
    Home         = '<Home>',     -- Home key
    End          = '<End>',      -- End key
    Insert       = '<Insert>',   -- Insert key
    Delete       = '<Del>',      -- Delete key
    Backspace    = '<BS>',       -- Backspace key

    -- ════════════════════════════════════════════════
    -- Entry & Editing
    -- ════════════════════════════════════════════════
    Enter        = '<CR>',    -- Enter / Return
    Esc          = '<Esc>',   -- Escape key
    Space        = '<Space>', -- Spacebar
    Tab          = '<Tab>',   -- Tab
    ShiftTab     = '<S-Tab>', -- Shift + Tab

    -- ════════════════════════════════════════════════
    -- Function Keys
    -- ════════════════════════════════════════════════
    F1           = '<F1>',
    F2           = '<F2>',
    F3           = '<F3>',
    F4           = '<F4>',
    F5           = '<F5>',
    F6           = '<F6>',
    F7           = '<F7>',
    F8           = '<F8>',
    F9           = '<F9>',
    F10          = '<F10>',
    F11          = '<F11>',
    F12          = '<F12>',

    -- ════════════════════════════════════════════════
    -- Modifier Combinations (direct)
    -- ════════════════════════════════════════════════
    CtrlTab      = '<C-Tab>',   -- Ctrl + Tab
    CtrlShiftTab = '<C-S-Tab>', -- Ctrl + Shift + Tab
    CtrlEnter    = '<C-CR>',    -- Ctrl + Enter
    CtrlEsc      = '<C-Esc>',   -- Ctrl + Escape
    CtrlBS       = '<C-BS>',    -- Ctrl + Backspace

    -- ════════════════════════════════════════════════
    -- Meta/Modifier Key Templates (use for building combos)
    -- ════════════════════════════════════════════════
    Ctrl         = '<C-',     -- Prefix: Ctrl
    Shift        = '<S-',     -- Prefix: Shift
    Alt          = '<A-',     -- Prefix: Alt/Meta
    CtrlShift    = '<C-S-',   -- Prefix: Ctrl + Shift
    CtrlAlt      = '<C-A-',   -- Prefix: Ctrl + Alt
    ShiftAlt     = '<S-A-',   -- Prefix: Shift + Alt
    CtrlShiftAlt = '<C-S-A-', -- Prefix: Ctrl + Shift + Alt

    -- ════════════════════════════════════════════════
    -- Leader Keys
    -- ════════════════════════════════════════════════
    Leader       = '<leader>',      -- Global leader key
    LocalLeader  = '<localleader>', -- Local leader key
}

-- Combine multiple key components into a single keybind string
-- Example: CombineKeys(Ctrl, "w", "h") -> "<C-w>h"

local function CombineKeys(...)
    local keys = {}
    for _, k in ipairs({ ... }) do
        table.insert(keys, k)
    end
    return table.concat(keys, "")
end

-- ════════════════════════════════════════════════════════════════
-- Action: All native executable Neovim commands grouped logically
-- Each entry is a valid command or mappable behavior (excluding plugins)
-- This section: File, Buffer, Tab, Window, and Terminal control
-- ════════════════════════════════════════════════════════════════
Action               = {

    -- ════════════════════════════════════════════════
    -- File Operations
    -- ════════════════════════════════════════════════
    File = {
        Save          = ':w<CR>',    -- Save current buffer
        SaveAll       = ':wa<CR>',   -- Save all buffers
        SaveAs        = ':saveas ',  -- Save to specific file
        Reload        = ':e<CR>',    -- Reload current buffer
        ReloadForce   = ':e!<CR>',   -- Reload discarding changes
        Quit          = ':q<CR>',    -- Quit current window
        QuitAll       = ':qa<CR>',   -- Quit all windows
        QuitForce     = ':q!<CR>',   -- Force quit current window
        QuitAllForce  = ':qa!<CR>',  -- Force quit all windows
        SaveQuit      = ':wq<CR>',   -- Save and quit
        SaveQuitAll   = ':wqa<CR>',  -- Save all and quit
        EditFile      = ':e ',       -- Edit specific file
        NewFile       = ':enew<CR>', -- Create empty new buffer
        BrowseFiles   = ':Ex<CR>',   -- Open file explorer
        MakeDirectory = ':!mkdir ',  -- Create new directory
    },

    -- ════════════════════════════════════════════════
    -- Buffer Management
    -- ════════════════════════════════════════════════
    Buffer = {
        Next        = ':bn<CR>',       -- Next buffer
        Prev        = ':bp<CR>',       -- Previous buffer
        Delete      = ':bd<CR>',       -- Delete current buffer
        DeleteForce = ':bd!<CR>',      -- Force delete buffer
        Wipeout     = ':bwipeout<CR>', -- Wipeout buffer completely
        List        = ':ls<CR>',       -- List all buffers
        BufferN     = ':buffer ',      -- Go to buffer by number
        ArgsList    = ':args<CR>',     -- Show argument list
    },

    -- ════════════════════════════════════════════════
    -- Tab Management
    -- ════════════════════════════════════════════════
    Tab = {
        New       = ':tabnew<CR>',     -- New tab
        Close     = ':tabclose<CR>',   -- Close tab
        Next      = ':tabnext<CR>',    -- Next tab
        Prev      = ':tabprev<CR>',    -- Previous tab
        First     = ':tabfirst<CR>',   -- First tab
        Last      = ':tablast<CR>',    -- Last tab
        MoveLeft  = ':tabmove -1<CR>', -- Move tab left
        MoveRight = ':tabmove +1<CR>', -- Move tab right
        List      = ':tabs<CR>',       -- List all tabs
    },

    -- ════════════════════════════════════════════════
    -- Window Management
    -- ════════════════════════════════════════════════
    Window = {
        SplitHorizontal = ':split<CR>',  -- Horizontal split
        SplitVertical   = ':vsplit<CR>', -- Vertical split
        Close           = ':close<CR>',  -- Close current split
        CloseOthers     = ':only<CR>',   -- Close all but current
        Equalize        = '<C-w>=',      -- Equalize window sizes
        Swap            = '<C-w>x',      -- Swap with another window
        RotateUp        = '<C-w>r',      -- Rotate layout up
        RotateDown      = '<C-w>R',      -- Rotate layout down
        CycleNext       = '<C-w>w',      -- Go to next window
        CyclePrev       = '<C-w>W',      -- Go to previous window
        MoveToLeft      = '<C-w>H',      -- Move window to far left
        MoveToRight     = '<C-w>L',      -- Move window to far right
        MoveToTop       = '<C-w>K',      -- Move window to top
        MoveToBottom    = '<C-w>J',      -- Move window to bottom
    },

    -- ════════════════════════════════════════════════
    -- Terminal Mode (Built-in terminal control)
    -- ════════════════════════════════════════════════
    Terminal = {
        OpenHorizontal = ':split | terminal<CR>',  -- Open terminal below
        OpenVertical   = ':vsplit | terminal<CR>', -- Open terminal beside
        OpenNewTab     = ':tabnew | terminal<CR>', -- Terminal in new tab
        ExitInsert     = '<C-\\><C-n>',            -- Exit terminal insert mode
        SendCommand    = 'i<CR>',                  -- Send command (in terminal)
    },

    -- ════════════════════════════════════════════════
    -- Search & Substitute
    -- ════════════════════════════════════════════════
    Search = {
        StartForward     = '/',                  -- Enter forward search mode
        StartBackward    = '?',                  -- Enter backward search mode
        NextMatch        = 'n',                  -- Jump to next match
        PrevMatch        = 'N',                  -- Jump to previous match
        ClearHighlight   = ':nohlsearch<CR>',    -- Clear all search highlights
        SubstitutePrompt = ':%s//g<Left><Left>', -- Start substitute prompt
        SubstituteGlobal = ':%s/old/new/g<CR>',  -- Replace all (manual fill)
        SubstituteLine   = ':s/old/new/g<CR>',   -- Replace in current line
        RepeatLastSearch = ':&&<CR>',            -- Repeat last substitute
    },

    -- ════════════════════════════════════════════════
    -- Marks & Jumps
    -- ════════════════════════════════════════════════
    Mark = {
        SetMark        = 'm{char}',      -- Set mark at cursor (m[a-zA-Z])
        JumpToMark     = '`{char}',      -- Jump to mark location
        JumpToMarkLine = '' .. '{char}', -- Jump to start of marked line
        ListMarks      = ':marks<CR>',   -- List all defined marks
    },

    Jump = {
        JumplistBack    = '<C-o>', -- Jump to older position
        JumplistForward = '<C-i>', -- Jump to newer position
        GoToLastInsert  = '``',    -- Jump to last insert position
        GoToLastEdit    = '`. ',   -- Jump to last change
        GoToPrevContext = '[{',    -- Jump to previous context
        GoToNextContext = ']}'     -- Jump to next context
    },

    -- ════════════════════════════════════════════════
    -- Macros & Recording
    -- ════════════════════════════════════════════════
    Macro = {
        StartRecording  = 'q{a-z}',      -- Start recording macro into register
        StopRecording   = 'q',           -- Stop recording
        PlayMacro       = '@{a-z}',      -- Play macro from register
        RepeatLastMacro = '@@',          -- Repeat last executed macro
        ExecuteRegister = ':@{a-z}<CR>', -- Execute content of register as Ex
    },

    -- ════════════════════════════════════════════════
    -- Registers (access or inspect register content)
    -- ════════════════════════════════════════════════
    Register = {
        PasteRegister    = '"{r}p',          -- Paste from register r
        YankToRegister   = '"{r}y{motion}',  -- Yank to register
        DeleteToRegister = '"{r}d{motion}',  -- Delete to register
        ChangeToRegister = '"{r}c{motion}',  -- Change to register
        RecordMacroTo    = 'q{r}',           -- Start macro recording in register
        ViewRegisters    = ':registers<CR>', -- Show all register contents
        Expression       = '"=',             -- Use expression register
    },

    -- ════════════════════════════════════════════════
    -- Folding
    -- ════════════════════════════════════════════════
    Fold = {
        ToggleFold       = 'za',         -- Toggle fold at cursor
        OpenFold         = 'zo',         -- Open fold
        CloseFold        = 'zc',         -- Close fold
        OpenAllFolds     = 'zR',         -- Open all folds
        CloseAllFolds    = 'zM',         -- Close all folds
        CreateManualFold = 'zf{motion}', -- Create manual fold over range
        DeleteFold       = 'zd',         -- Delete fold at cursor
        DeleteAllFolds   = 'zE',         -- Remove all manually defined folds
        FoldMore         = 'zC',         -- Close more folds
        FoldLess         = 'zO',         -- Open more folds
        RecomputeFolds   = 'zx',         -- Recompute folds and close
        PreviewFold      = 'zv',         -- Open folds just enough to view cursor
    },

    -- ════════════════════════════════════════════════
    -- Scrolling (Screen-level view movement)
    -- ════════════════════════════════════════════════
    Scroll = {
        PageUp       = '<C-b>', -- Scroll page up
        PageDown     = '<C-f>', -- Scroll page down
        HalfPageUp   = '<C-u>', -- Scroll half page up
        HalfPageDown = '<C-d>', -- Scroll half page down
        LineUp       = '<C-y>', -- Scroll screen up one line
        LineDown     = '<C-e>', -- Scroll screen down one line
        CenterCursor = 'zz',    -- Center cursor on screen
        TopCursor    = 'zt',    -- Move cursor to top of screen
        BottomCursor = 'zb',    -- Move cursor to bottom
    },

    -- ════════════════════════════════════════════════
    -- View & Cursor Sync
    -- ════════════════════════════════════════════════
    View = {
        ScrollBind     = ':set scrollbind<CR>',     -- Lock scrolling with other windows
        NoScrollBind   = ':set noscrollbind<CR>',   -- Unlock scrolling
        CursorBind     = ':set cursorbind<CR>',     -- Lock cursor position across windows
        NoCursorBind   = ':set nocursorbind<CR>',   -- Unlock cursor sync
        CursorColumn   = ':set cursorcolumn<CR>',   -- Highlight current column
        CursorLine     = ':set cursorline<CR>',     -- Highlight current line
        RelativeNumber = ':set relativenumber<CR>', -- Show relative line numbers
    },

    -- ════════════════════════════════════════════════
    -- Clipboard Actions (using system clipboard)
    -- ════════════════════════════════════════════════
    Clipboard = {
        YankLineToSystem      = '"+yy',    -- Yank entire line to system clipboard
        YankSelectionToSystem = '"+y',     -- Yank visual selection
        PasteFromSystem       = '"+p',     -- Paste from clipboard after cursor
        PasteBeforeSystem     = '"+P',     -- Paste from clipboard before cursor
        YankBlockToSystem     = '"+y<CR>', -- Yank block in visual block mode
    },

    -- ════════════════════════════════════════════════
    -- Command-Line Mode Editing
    -- ════════════════════════════════════════════════
    Cmdline = {
        CmdlineBackspace  = '<C-h>',   -- Delete character left
        CmdlineForward    = '<Right>', -- Move cursor right
        CmdlineBackward   = '<Left>',  -- Move cursor left
        CmdlineClear      = '<C-u>',   -- Clear entire line
        CmdlineDeleteWord = '<C-w>',   -- Delete word before cursor
        CmdlineInsertFile = '<C-r>%',  -- Insert current file name
        CmdlineInsertAlt  = '<C-r>#',  -- Insert alternate file name
        CmdlinePrevCmd    = '<Up>',    -- Previous command history
        CmdlineNextCmd    = '<Down>',  -- Next command history
    },

    -- ════════════════════════════════════════════════
    -- Visual Mode Actions
    -- ════════════════════════════════════════════════
    Visual = {
        ReselectLast    = 'gv',      -- Reselect last visual selection
        IndentLeft      = '<',       -- Shift left
        IndentRight     = '>',       -- Shift right
        FormatSelection = 'gq',      -- Format text (used with motion)
        Uppercase       = 'gU',      -- Uppercase selection
        Lowercase       = 'gu',      -- Lowercase selection
        SwapCase        = 'g~',      -- Toggle case
        Paste           = 'p',       -- Paste over selection
        Replace         = 'r{char}', -- Replace selection with character
    },

    -- ════════════════════════════════════════════════
    -- Miscellaneous Actions
    -- ════════════════════════════════════════════════
    Misc = {
        RepeatLastCommand = '.',                                                          -- Repeat last change
        RedrawScreen      = ':redraw!<CR>',                                               -- Force screen redraw
        ShowKeybindings   = ':map<CR>',                                                   -- Show all normal mode maps
        ShowSettings      = ':set<CR>',                                                   -- Show all settings
        ShowKeymaps       = ':verbose map<CR>',                                           -- Show verbose keymaps
        ShowSyntaxGroup   = ':echo synIDattr(synID(line("."), col("."), 1), "name")<CR>', -- Show syntax at cursor
        SpellToggle       = ':set spell!<CR>',                                            -- Toggle spell checking
        SpellNext         = ']s',                                                         -- Go to next misspelled word
        SpellPrev         = '[s',                                                         -- Go to previous misspelled word
        SpellCorrect      = 'z=',                                                         -- Open spell suggestions
        InsertRegister    = '<C-r>{reg}',                                                 -- Insert register in insert mode
        LineJoin          = 'J',                                                          -- Join line below with current
        FormatBuffer      = 'gg=G',                                                       -- Autoindent entire file
        ShowHelp          = ':help<CR>',                                                  -- Open help
        Manual            = ':man ',                                                      -- Open system man page
        ShellCmd          = ':! ',                                                        -- Run shell command
        TogglePaste       = ':set paste!<CR>',                                            -- Toggle paste mode
    }
}

-- ════════════════════════════════════════════════════════════════
-- Motion: All movement-based cursor motions used for navigation
-- These can be used standalone or combined with operators (e.g., d, y, c)
-- ════════════════════════════════════════════════════════════════
Motion               = {
    -- ════════════════════════════════════════════════
    -- Cursor Motions
    -- ════════════════════════════════════════════════
    CursorUp          = 'k', -- Move cursor up one line
    CursorDown        = 'j', -- Move cursor down one line
    CursorLeft        = 'h', -- Move cursor left one character
    CursorRight       = 'l', -- Move cursor right one character

    -- ════════════════════════════════════════════════
    -- Word Motions
    -- ════════════════════════════════════════════════
    WordForward       = 'w', -- Move to beginning of next word
    WordEnd           = 'e', -- Move to end of current/next word
    WordBackward      = 'b', -- Move to beginning of previous word
    WordEndBackward   = 'ge', -- Move to end of previous word

    -- ════════════════════════════════════════════════
    -- Line Motions
    -- ════════════════════════════════════════════════
    LineStart         = '0', -- Move to beginning of line
    FirstNonBlank     = '^', -- Move to first non-blank character
    LineEnd           = '$', -- Move to end of line

    -- ════════════════════════════════════════════════
    -- Paragraph Motions
    -- ════════════════════════════════════════════════
    ParagraphForward  = '}', -- Move forward to next paragraph
    ParagraphBackward = '{', -- Move backward to previous paragraph

    -- ════════════════════════════════════════════════
    -- Sentence Motions
    -- ════════════════════════════════════════════════
    SentenceForward   = ')', -- Move forward to next sentence
    SentenceBackward  = '(', -- Move backward to previous sentence

    -- ════════════════════════════════════════════════
    -- Screen Line Motions
    -- ════════════════════════════════════════════════
    DownScreenLine    = 'gj', -- Move down by screen line (wrap aware)
    UpScreenLine      = 'gk', -- Move up by screen line (wrap aware)

    -- ════════════════════════════════════════════════
    -- File Navigation
    -- ════════════════════════════════════════════════
    TopOfFile         = 'gg',  -- Go to top of file
    BottomOfFile      = 'G',   -- Go to bottom of file
    PercentGoto       = '%',   -- Go to matching pair or N% through file
    LineNumber        = ':{n}<CR>', -- Jump to specific line number

    -- ════════════════════════════════════════════════
    -- Section Navigation
    -- ════════════════════════════════════════════════
    SectionNext       = ']]', -- Jump to next section (e.g., 'function' or '{')
    SectionPrev       = '[[', -- Jump to previous section
    SectionEndNext    = '][', -- Jump to next section end
    SectionEndPrev    = '[]', -- Jump to previous section end

    -- ════════════════════════════════════════════════
    -- Search Navigation
    -- ════════════════════════════════════════════════
    SearchForward     = '/', -- Begin forward search
    SearchBackward    = '?', -- Begin backward search
    NextSearchMatch   = 'n', -- Next match
    PrevSearchMatch   = 'N', -- Previous match

    -- ════════════════════════════════════════════════
    -- Jump List Navigation
    -- ════════════════════════════════════════════════
    JumplistBack      = '<C-o>', -- Jump to previous location
    JumplistForward   = '<C-i>', -- Jump to next location

    -- ════════════════════════════════════════════════
    -- Visual Reselect
    -- ════════════════════════════════════════════════
    VisualReselect    = 'gv', -- Reselect last visual selection
}
-- ════════════════════════════════════════════════════════════════
-- Operator: All operator keys that act on motions or text objects
-- Combine with Motion or TextObject (e.g., `daw`, `ciw`, `gU$`)
-- ════════════════════════════════════════════════════════════════
Operator             = {
    -- ════════════════════════════════════════════════
    -- Core Text Operators
    -- ════════════════════════════════════════════════
    Delete      = 'd', -- Delete text
    Yank        = 'y', -- Yank (copy) text
    Change      = 'c', -- Change (delete and enter insert mode)
    Substitute  = 's', -- Substitute character(s)

    -- ════════════════════════════════════════════════
    -- Case Transformation
    -- ════════════════════════════════════════════════
    ToggleCase  = 'g~', -- Toggle case
    ToLower     = 'gu', -- Convert to lowercase
    ToUpper     = 'gU', -- Convert to uppercase

    -- ════════════════════════════════════════════════
    -- Indentation
    -- ════════════════════════════════════════════════
    IndentRight = '>', -- Shift text right
    IndentLeft  = '<', -- Shift text left

    -- ════════════════════════════════════════════════
    -- Filter & Formatting
    -- ════════════════════════════════════════════════
    Format      = 'gq', -- Format text (like `gqap`)
    Filter      = '!',  -- Filter through external command (e.g., `!sort`)
}

-- ════════════════════════════════════════════════════════════════
-- Register: Special named registers used to prefix operations
-- These affect where text is read from or written to
-- ════════════════════════════════════════════════════════════════
Register             = {
    Unnamed         = '"',          -- Default register (unnamed)
    SystemClipboard = '"+',         -- System clipboard (read/write)
    Selection       = '"*',         -- X11 primary selection
    BlackHole       = '"_',         -- Black hole (discard)
    SmallDelete     = '"-',         -- Small delete register
    LastInsert      = '".',         -- Last inserted text
    Command         = '":',         -- Last command-line entry
    Search          = '"/',         -- Last search pattern
    Expression      = '"=',         -- Expression register (e.g., ="2+2")
    FileName        = '"%',         -- Current file name
    AltFileName     = '"#',         -- Alternate file name
    Clipboard0      = '"0',         -- Last yank
    Clipboard1to9   = '"1' .. '"9', -- Delete history
    Named           = '"a' .. '"z', -- Named registers
}

-- ════════════════════════════════════════════════════════════════
-- Text: Text objects targetable by operators (iw, aw, ip, etc.)
-- Combine with operators like `d`, `y`, `c`, `gU`, etc.
-- Prefix with `i` = inside, `a` = around
-- ════════════════════════════════════════════════════════════════
Text                 = {
    -- ════════════════════════════════════════════════
    -- Words
    -- ════════════════════════════════════════════════
    InsideWord        = 'iw', -- inside word (no space)
    AroundWord        = 'aw', -- around word (includes space)

    -- ════════════════════════════════════════════════
    -- Paragraphs
    -- ════════════════════════════════════════════════
    InsideParagraph   = 'ip', -- inside paragraph
    AroundParagraph   = 'ap', -- around paragraph

    -- ════════════════════════════════════════════════
    -- Sentences
    -- ════════════════════════════════════════════════
    InsideSentence    = 'is', -- inside sentence
    AroundSentence    = 'as', -- around sentence

    -- ════════════════════════════════════════════════
    -- Lines
    -- ════════════════════════════════════════════════
    InsideLine        = 'il', -- inside line (excludes newline)
    AroundLine        = 'al', -- around line (includes newline)

    -- ════════════════════════════════════════════════
    -- Quotes / Delimiters
    -- ════════════════════════════════════════════════
    InsideSingleQuote = "i'", -- inside single quotes
    AroundSingleQuote = "a'", -- around single quotes

    InsideDoubleQuote = 'i"', -- inside double quotes
    AroundDoubleQuote = 'a"', -- around double quotes

    InsideBacktick    = 'i`', -- inside backticks
    AroundBacktick    = 'a`', -- around backticks

    -- ════════════════════════════════════════════════
    -- Brackets / Blocks
    -- ════════════════════════════════════════════════
    InsideParen       = 'i(', -- inside parentheses
    AroundParen       = 'a(', -- around parentheses

    InsideBrace       = 'i{', -- inside curly braces
    AroundBrace       = 'a{', -- around curly braces

    InsideBracket     = 'i[', -- inside square brackets
    AroundBracket     = 'a[', -- around square brackets

    InsideAngle       = 'i<', -- inside angle brackets (if supported)
    AroundAngle       = 'a<', -- around angle brackets

    -- ════════════════════════════════════════════════
    -- Tags (HTML/XML)
    -- ════════════════════════════════════════════════
    InsideTag         = 'it', -- inside tag (requires plugins)
    AroundTag         = 'at', -- around tag (requires plugins)
}

-- ════════════════════════════════════════════════
-- Vim Mode Constants (Used in Key Mappings)
-- ════════════════════════════════════════════════

local Normal         = "n"       -- Normal mode (default editing mode)
local Insert         = "i"       -- Insert mode (text input)
local Visual         = "v"       -- Visual characterwise selection
local VisualLine     = "V"       -- Visual linewise selection
local VisualBlock    = "<C-v>"   -- Visual block selection
local Select         = "s"       -- Select mode (like Visual but replaces with typed text)
local SelectLine     = "S"       -- Linewise select mode
local SelectBlock    = "<C-s>"   -- Blockwise select mode
local Replace        = "R"       -- Replace mode (overwrite characters)
local VirtualReplace = "Rv"      -- Virtual replace mode
local Command        = "c"       -- Command-line mode (after `:`)
local Ex             = "x"       -- Ex mode (Vim's line editor)
local Prompt         = "t"       -- Prompt-buffer mode (e.g. for input() or :terminal)
local Terminal       = "t"       -- Terminal mode (within :terminal buffer)
local Confirm        = "CONFIRM" -- ":confirm" prompts
local All            = ""        -- All modes (default for most mappings)

-- local function SetMode(...)
--     local modes = {}
--     for _, m in ipairs({ ... }) do
--         table.insert(modes, m)
--     end
--     return modes
-- end


---@class KeyBinding
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
local KeyBinding = {}
KeyBinding.__index = KeyBinding

function KeyBinding:New()
    return setmetatable({
        mode   = "",
        key    = "",
        action = "",
        noremap  = true,
        silent = false,
        desc   = "",
        expr   = false,
        nowait = false,
        unique = false,
        buffer = nil,
    }, self)
end

function KeyBinding:Mode(m)
    self.mode = m
    return self
end

function KeyBinding:Multimode(...)
    self.mode = { ... }
    return self
end

function KeyBinding:Key(k)
    self.key = k
    return self
end

function KeyBinding:Multikey(...)
    local keys = {}
    for _, k in ipairs({ ... }) do
        table.insert(keys, k)
    end
    self.key = table.concat(keys, "")
    return self
end

function KeyBinding:Action(a)
    self.action = a
    return self
end

function KeyBinding:Remap(r)
    self.remap = r
    return self
end

function KeyBinding:Silent(s)
    self.silent = s
    return self
end

function KeyBinding:Desc(d)
    self.desc = d
    return self
end

function KeyBinding:Build()
    local modes = type(self.mode) == "string" and { self.mode } or self.mode
    local defaults = {
        noremap = self.remap,
        silent  = self.silent,
        desc    = self.desc,
    }

    for _, m in ipairs(modes) do
        vim.keymap.set(m, self.key, self.action, defaults)
    end
end



-- NORMAL MODE KEYBINDINGS
map('n', 'h', 'h', opts)         -- move cursor left
map('n', 'j', 'j', opts)         -- move cursor down
map('n', 'k', 'k', opts)         -- move cursor up
map('n', 'l', 'l', opts)         -- move cursor right

map('n', '0', '0', opts)         -- move to beginning of line
map('n', '^', '^', opts)         -- move to first non-blank character
map('n', '$', '$', opts)         -- move to end of line

map('n', 'gg', 'gg', opts)       -- go to beginning of file
map('n', 'G', 'G', opts)         -- go to end of file

map('n', 'dd', 'dd', opts)       -- delete current line
map('n', 'yy', 'yy', opts)       -- yank (copy) current line
map('n', 'p', 'p', opts)         -- paste after cursor
map('n', 'P', 'P', opts)         -- paste before cursor
map('n', 'u', 'u', opts)         -- undo
map('n', '<C-r>', '<C-r>', opts) -- redo

map('n', '/', '/', opts)         -- search forward
map('n', '?', '?', opts)         -- search backward
map('n', 'n', 'n', opts)         -- next search match
map('n', 'N', 'N', opts)         -- previous search match

-- VISUAL MODE KEYBINDINGS
map('v', 'y', 'y', opts)   -- yank selection
map('v', 'd', 'd', opts)   -- delete selection
map('v', 'p', 'p', opts)   -- paste over selection
map('v', '<', '<gv', opts) -- indent left
map('v', '>', '>gv', opts) -- indent right

-- INSERT MODE KEYBINDINGS
map('i', '<C-h>', '<Left>', opts)  -- move cursor left
map('i', '<C-l>', '<Right>', opts) -- move cursor right
map('i', '<C-j>', '<Down>', opts)  -- move cursor down
map('i', '<C-k>', '<Up>', opts)    -- move cursor up

-- COMMAND MODE
map('n', ':', ':', opts) -- enter command-line mode

-- WINDOW NAVIGATION
map('n', '<C-w>h', '<C-w>h', opts) -- move to left window
map('n', '<C-w>j', '<C-w>j', opts) -- move to bottom window
map('n', '<C-w>k', '<C-w>k', opts) -- move to top window
map('n', '<C-w>l', '<C-w>l', opts) -- move to right window

-- SPLITS
map('n', ':sp<CR>', ':sp<CR>', opts)   -- horizontal split
map('n', ':vsp<CR>', ':vsp<CR>', opts) -- vertical split
map('n', '<C-w>q', '<C-w>q', opts)     -- close window
map('n', '<C-w>o', '<C-w>o', opts)     -- close all windows except current

-- BUFFERS
map('n', ':bn<CR>', ':bn<CR>', opts) -- next buffer
map('n', ':bp<CR>', ':bp<CR>', opts) -- previous buffer
map('n', ':bd<CR>', ':bd<CR>', opts) -- delete buffer

-- TABS
map('n', ':tabnew<CR>', ':tabnew<CR>', opts) -- new tab
map('n', ':tabn<CR>', ':tabn<CR>', opts)     -- next tab
map('n', ':tabp<CR>', ':tabp<CR>', opts)     -- previous tab
map('n', ':tabc<CR>', ':tabc<CR>', opts)     -- close tab

-- COPY/PASTE TO SYSTEM CLIPBOARD (REQUIRES +clipboard)
map('n', '<leader>y', '"+y', opts) -- yank to system clipboard
map('v', '<leader>y', '"+y', opts) -- yank visual to system clipboard
map('n', '<leader>p', '"+p', opts) -- paste from system clipboard
map('v', '<leader>p', '"+p', opts)




-- CURSOR STYLES (Visual Only in TUI/Terminal)
vim.opt.guicursor = "n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50"

-- NOTE: Additional keybindings from plugins like Telescope, LSP, or Treesitter are NOT included
-- These are pure Neovim defaults or commonly expected bindings
