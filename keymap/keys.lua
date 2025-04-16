---@class Key
---@field Lower table<string, string>
---@field Upper table<string, string>
---@field Num table<string, string>
---@field Punc table<string, string>
---@field NumPad table<string, string>
---@field Motion table<string, string>
---@field Action table<string, string>
---@field Fn table<string, string>
---@field Mod table<string, string>
---@field Pfx table<string, string>
---@field Leader table<string, string>
local Key = {}

Key.Lower = {
    A = 'a',
    B = 'b',
    C = 'c',
    D = 'd',
    E = 'e',
    F = 'f',
    G = 'g',
    H = 'h',
    I = 'i',
    J = 'j',
    K = 'k',
    L = 'l',
    M = 'm',
    N = 'n',
    O = 'o',
    P = 'p',
    Q = 'q',
    R = 'r',
    S = 's',
    T = 't',
    U = 'u',
    V = 'v',
    W = 'w',
    X = 'x',
    Y = 'y',
    Z = 'z',
}

Key.Upper = {
    A = 'A',
    B = 'B',
    C = 'C',
    D = 'D',
    E = 'E',
    F = 'F',
    G = 'G',
    H = 'H',
    I = 'I',
    J = 'J',
    K = 'K',
    L = 'L',
    M = 'M',
    N = 'N',
    O = 'O',
    P = 'P',
    Q = 'Q',
    R = 'R',
    S = 'S',
    T = 'T',
    U = 'U',
    V = 'V',
    W = 'W',
    X = 'X',
    Y = 'Y',
    Z = 'Z',
}

Key.Num = {
    Zero = '0',
    One = '1',
    Two = '2',
    Three = '3',
    Four = '4',
    Five = '5',
    Six = '6',
    Seven = '7',
    Eight = '8',
    Nine = '9',
}

Key.Punc = {
    Dot = '.',
    Comma = ',',
    Semicolon = ';',
    Colon = ':',
    Slash = '/',
    Backslash = '\\',
    Quote = "'",
    DoubleQuote = '"',
    BracketLeft = '[',
    BracketRight = ']',
    BraceLeft = '{',
    BraceRight = '}',
    ParenLeft = '(',
    ParenRight = ')',
    Minus = '-',
    Plus = '+',
    Equal = '=',
    Underscore = '_',
    Asterisk = '*',
    Ampersand = '&',
    Hash = '#',
    At = '@',
    Exclaim = '!',
    Question = '?',
    Pipe = '|',
    Tilde = '~',
    Backtick = '`',
    Dollar = '$',
    Percent = '%',
    Caret = '^',
}

Key.NumPad = {
    Num0 = '<Num0>',
    Num1 = '<Num1>',
    Num2 = '<Num2>',
    Num3 = '<Num3>',
    Num4 = '<Num4>',
    Num5 = '<Num5>',
    Num6 = '<Num6>',
    Num7 = '<Num7>',
    Num8 = '<Num8>',
    Num9 = '<Num9>',
    Dot = '<NumDel>',
    Add = '<Num+>',
    Sub = '<Num->',
    Mul = '<Num*>',
    Div = '<Num/>',
    Enter = '<NumCR>',
}

Key.Motion = {
    Up = '<Up>',
    Down = '<Down>',
    Left = '<Left>',
    Right = '<Right>',
    PageUp = '<PageUp>',
    PageDown = '<PageDown>',
    Home = '<Home>',
    End = '<End>',
    Insert = '<Insert>',
    Delete = '<Del>',
    Backspace = '<BS>',
}

Key.Action = {
    Enter = '<CR>',
    Esc = '<Esc>',
    Space = '<Space>',
    Tab = '<Tab>',
    ShiftTab = '<S-Tab>',
}

Key.Fn = {
    F1 = '<F1>',
    F2 = '<F2>',
    F3 = '<F3>',
    F4 = '<F4>',
    F5 = '<F5>',
    F6 = '<F6>',
    F7 = '<F7>',
    F8 = '<F8>',
    F9 = '<F9>',
    F10 = '<F10>',
    F11 = '<F11>',
    F12 = '<F12>',
}

Key.Mod = {
    CtrlTab = '<C-Tab>',
    CtrlShiftTab = '<C-S-Tab>',
    CtrlEnter = '<C-CR>',
    CtrlEsc = '<C-Esc>',
    CtrlBS = '<C-BS>',
}

Key.Pfx = {
    Ctrl = '<C-',
    Shift = '<S-',
    Alt = '<A-',
    CtrlShift = '<C-S-',
    CtrlAlt = '<C-A-',
    ShiftAlt = '<S-A-',
    CtrlShiftAlt = '<C-S-A-',
}

Key.Leader = {
    Leader = '<leader>', LocalLeader = '<localleader>',
}

return Key
