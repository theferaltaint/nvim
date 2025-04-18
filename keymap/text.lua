local Builder = require("keymap.builder").Builder

---@class Text : Builder
local Text = Builder:extend()
Text.__index = Text

-- Words
Text.InsideWord = Builder:New()
    :VisualMode()
    :OperatorMode()
    :Key("iw")
    :Action("iw")
    :Desc("Inside word")

Text.AroundWord = Builder:New()
    :VisualMode()
    :OperatorMode()
    :Key("aw")
    :Action("aw")
    :Desc("Around word")

Text.InsideBigWord = Builder:New()
    :VisualMode()
    :OperatorMode()
    :Key("iW")
    :Action("iW")
    :Desc("Inside WORD")

Text.AroundBigWord = Builder:New()
    :VisualMode()
    :OperatorMode()
    :Key("aW")
    :Action("aW")
    :Desc("Around WORD")

-- Paragraphs
Text.InsideParagraph = Builder:New()
    :VisualMode()
    :OperatorMode()
    :Key("ip")
    :Action("ip")
    :Desc("Inside paragraph")

Text.AroundParagraph = Builder:New()
    :VisualMode()
    :OperatorMode()
    :Key("ap")
    :Action("ap")
    :Desc("Around paragraph")

-- Sentences
Text.InsideSentence = Builder:New()
    :VisualMode()
    :OperatorMode()
    :Key("is")
    :Action("is")
    :Desc("Inside sentence")

Text.AroundSentence = Builder:New()
    :VisualMode()
    :OperatorMode()
    :Key("as")
    :Action("as")
    :Desc("Around sentence")

-- Lines
Text.InsideLine = Builder:New()
    :VisualMode()
    :OperatorMode()
    :Key("il")
    :Action("il")
    :Desc("Inside line (excluding newline)")

Text.AroundLine = Builder:New()
    :VisualMode()
    :OperatorMode()
    :Key("al")
    :Action("al")
    :Desc("Around line (including newline)")

-- Quotes
Text.InsideSingleQuote = Builder:New()
    :VisualMode()
    :OperatorMode()
    :Key("i'")
    :Action("i'")
    :Desc("Inside single quotes")

Text.AroundSingleQuote = Builder:New()
    :VisualMode()
    :OperatorMode()
    :Key("a'")
    :Action("a'")
    :Desc("Around single quotes")

Text.InsideDoubleQuote = Builder:New()
    :VisualMode()
    :OperatorMode()
    :Key('i"')
    :Action('i"')
    :Desc("Inside double quotes")

Text.AroundDoubleQuote = Builder:New()
    :VisualMode()
    :OperatorMode()
    :Key('a"')
    :Action('a"')
    :Desc("Around double quotes")

Text.InsideBacktick = Builder:New()
    :VisualMode()
    :OperatorMode()
    :Key("i`")
    :Action("i`")
    :Desc("Inside backticks")

Text.AroundBacktick = Builder:New()
    :VisualMode()
    :OperatorMode()
    :Key("a`")
    :Action("a`")
    :Desc("Around backticks")

-- Brackets / Parentheses
Text.InsideParen = Builder:New()
    :VisualMode()
    :OperatorMode()
    :Key("i(")
    :Action("i(")
    :Desc("Inside parentheses")

Text.AroundParen = Builder:New()
    :VisualMode()
    :OperatorMode()
    :Key("a(")
    :Action("a(")
    :Desc("Around parentheses")

Text.InsideParenAlt = Builder:New()
    :VisualMode()
    :OperatorMode()
    :Key("i)")
    :Action("i)")
    :Desc("Inside alt parentheses")

Text.AroundParenAlt = Builder:New()
    :VisualMode()
    :OperatorMode()
    :Key("a)")
    :Action("a)")
    :Desc("Around alt parentheses")

Text.InsideBrace = Builder:New()
    :VisualMode()
    :OperatorMode()
    :Key("i{")
    :Action("i{")
    :Desc("Inside curly braces")

Text.AroundBrace = Builder:New()
    :VisualMode()
    :OperatorMode()
    :Key("a{")
    :Action("a{")
    :Desc("Around curly braces")

Text.InsideBraceAlt = Builder:New()
    :VisualMode()
    :OperatorMode()
    :Key("i}")
    :Action("i}")
    :Desc("Inside alt curly braces")

Text.AroundBraceAlt = Builder:New()
    :VisualMode()
    :OperatorMode()
    :Key("a}")
    :Action("a}")
    :Desc("Around alt curly braces")

Text.InsideBracket = Builder:New()
    :VisualMode()
    :OperatorMode()
    :Key("i[")
    :Action("i[")
    :Desc("Inside square brackets")

Text.AroundBracket = Builder:New()
    :VisualMode()
    :OperatorMode()
    :Key("a[")
    :Action("a[")
    :Desc("Around square brackets")

Text.InsideBracketAlt = Builder:New()
    :VisualMode()
    :OperatorMode()
    :Key("i]")
    :Action("i]")
    :Desc("Inside alt square brackets")

Text.AroundBracketAlt = Builder:New()
    :VisualMode()
    :OperatorMode()
    :Key("a]")
    :Action("a]")
    :Desc("Around alt square brackets")

Text.InsideAngle = Builder:New()
    :VisualMode()
    :OperatorMode()
    :Key("i<")
    :Action("i<")
    :Desc("Inside angle brackets")

Text.AroundAngle = Builder:New()
    :VisualMode()
    :OperatorMode()
    :Key("a<")
    :Action("a<")
    :Desc("Around angle brackets")

Text.InsideAngleAlt = Builder:New()
    :VisualMode()
    :OperatorMode()
    :Key("i>")
    :Action("i>")
    :Desc("Inside alt angle brackets")

Text.AroundAngleAlt = Builder:New()
    :VisualMode()
    :OperatorMode()
    :Key("a>")
    :Action("a>")
    :Desc("Around alt angle brackets")

-- Tags
Text.InsideTag = Builder:New()
    :VisualMode()
    :OperatorMode()
    :Key("it")
    :Action("it")
    :Desc("Inside tag")

Text.AroundTag = Builder:New()
    :VisualMode()
    :OperatorMode()
    :Key("at")
    :Action("at")
    :Desc("Around tag")

-- Block
Text.InsideBlock = Builder:New()
    :VisualMode()
    :OperatorMode()
    :Key("ib")
    :Action("ib")
    :Desc("Inside block")

Text.AroundBlock = Builder:New()
    :VisualMode()
    :OperatorMode()
    :Key("ab")
    :Action("ab")
    :Desc("Around block")

return Text
