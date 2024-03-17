vim9script

const colors = {
  black: "#000810",
  blue: "#007ce9",
  white: "#eedcd2",
  yellow: "#eea47f",
  NONE: "NONE",
}

def ExpandColor(foreground: string, background: string): string
  return "ctermfg=" .. foreground .. " guifg=" .. get(colors, foreground) .. " ctermbg=" .. background .. " guibg=" .. get(colors, background) .. " "
enddef

const decorations = {
  bold: "cterm=bold gui=bold term=bold ",
  italic: "cterm=italic gui=italic term=NONE ",
  reverse: "cterm=reverse gui=reverse term=NONE ",
  undercurl: "cterm=underline gui=undercurl term=NONE ",
  underline: "cterm=underline gui=underline term=NONE ",
  NONE: "cterm=NONE gui=NONE term=NONE ",
}

const black_blue = ExpandColor("black", "blue")

const black_white = ExpandColor("black", "white")

const blue_black = ExpandColor("blue", "black")

const blue_none = ExpandColor("blue", "NONE")

const white_none = ExpandColor("white", "NONE")

const white_black = ExpandColor("white", "black")

const yellow_black = ExpandColor("yellow", "black")

const yellow_none = ExpandColor("yellow", "NONE")

const none_black = ExpandColor("NONE", "black")

const none_blue = ExpandColor("NONE", "blue")

const none_white = ExpandColor("NONE", "white")

def SetColorscheme()
  highlight clear

  if exists("syntax_on")
      syntax reset
  endif

  g:colors_name = "alcedo"

  execute "highlight Comment " .. white_none .. decorations.italic

  execute "highlight Constant " .. white_none .. decorations.NONE

  highlight link String Constant

  highlight link Character Constant

  highlight link Number Constant

  highlight link Boolean Constant

  highlight link Float Constant

  execute "highlight Identifier " .. white_none .. decorations.NONE

  highlight link Function Identifier

  execute "highlight Statement " .. white_none .. decorations.NONE

  highlight link Conditional Statement

  highlight link Repeat Statement

  highlight link Label Statement

  highlight link Operator Statement

  highlight link Keyword Statement

  highlight link Exception Statement

  execute "highlight PreProc " .. white_none ..  decorations.italic

  highlight link Include PreProc

  highlight link Define PreProc

  highlight link Macro PreProc

  highlight link PreCondit PreProc

  execute "highlight Type " .. white_none .. decorations.NONE

  highlight link StorageClass Type

  highlight link Structure Type

  highlight link Typedef Type

  execute "highlight Special " .. white_none .. decorations.NONE

  highlight link SpecialChar Special

  highlight link Tag Special

  highlight link Delimiter Special

  highlight link SpecialComment Special

  highlight link Debug Special

  execute "highlight Underlined " .. white_none ..  decorations.underline

  execute "highlight Ignore " .. white_none .. decorations.NONE

  execute "highlight Error " .. white_none .. decorations.NONE

  execute "highlight Todo " .. white_none .. decorations.NONE

  execute "highlight ColorColumn " .. white_black .. decorations.NONE

  execute "highlight Conceal " .. white_black .. decorations.NONE

  highlight link CurSearch Search

  execute "highlight Cursor " .. decorations.reverse

  highlight link lCursor Cursor

  execute "highlight CursorColumn " .. white_black .. decorations.NONE

  execute "highlight CursorLine " .. white_black .. decorations.underline

  execute "highlight Directory " .. white_black .. decorations.NONE

  execute "highlight DiffAdd " .. white_black .. decorations.NONE

  execute "highlight DiffChange " .. white_black .. decorations.NONE

  execute "highlight DiffDelete " .. white_black .. decorations.NONE

  execute "highlight DiffText " .. white_black .. decorations.NONE

  highlight link EndOfBuffer NonText

  execute "highlight TermCursor " .. decorations.reverse

  execute "highlight ErrorMsg " .. yellow_black .. decorations.NONE

  highlight link WinSeparator VertSplit

  execute "highlight Folded " .. blue_black .. decorations.NONE

  execute "highlight FoldColumn " .. blue_black .. decorations.NONE

  execute "highlight SignColumn " .. blue_black .. decorations.NONE

  execute "highlight IncSearch " .. decorations.reverse

  highlight link Substitute Search

  execute "highlight LineNr " .. yellow_none .. decorations.NONE

  highlight link LineNrAbove LineNr

  highlight link LineNrBelow LineNr

  execute "highlight CursorLineNr " .. yellow_none .. decorations.bold .. decorations.underline

  highlight link CursorLineFold FoldColumn

  highlight link CursorLineSign SignColumn

  execute "highlight MatchParen " .. none_blue .. decorations.NONE

  execute "highlight ModeMsg " .. blue_none .. decorations.NONE

  highlight link MsgSeparator StatusLine

  execute "highlight MoreMsg " .. blue_none .. decorations.bold

  execute "highlight NonText " .. blue_none .. decorations.bold

  execute "highlight Normal " .. white_black .. decorations.NONE

  highlight link NormalFloat Pmenu

  highlight link FloatBorder WinSeparator

  highlight link FloatTitle Title

  highlight link NormalNC Normal

  execute "highlight Pmenu " .. white_black .. decorations.NONE

  execute "highlight PmenuSel " .. black_white .. decorations.NONE

  highlight link PmenuKind Pmenu

  highlight link PmenuKindSel PmenuSel

  highlight link PmenuExtra Pmenu

  highlight link PmenuExtraSel PmenuSel

  execute "highlight PmenuSbar " .. none_black .. decorations.NONE

  execute "highlight PmenuThumb " .. none_white .. decorations.NONE

  execute "highlight Question " .. blue_none .. decorations.bold

  highlight link QuickFixLine Search

  execute "highlight Search " .. black_blue .. decorations.NONE

  execute "highlight SpecialKey " .. blue_none .. decorations.NONE

  execute "highlight SpellBad guisp=NONE " .. black_white .. decorations.undercurl

  highlight link SpellCap SpellBad

  highlight link SpellLocal SpellBad

  highlight link SpellRare SpellBad

  execute "highlight StatusLine " .. white_none .. decorations.NONE

  execute "highlight StatusLineNC " .. white_none .. decorations.NONE

  execute "highlight TabLine " .. white_black .. decorations.underline

  execute "highlight TabLineFill " .. decorations.reverse

  execute "highlight TabLineSel " .. decorations.bold

  execute "highlight Title " .. blue_none .. decorations.bold

  execute "highlight Visual " .. black_blue .. decorations.NONE

  execute "highlight WarningMsg " .. yellow_none .. decorations.NONE

  highlight link Whitespace NonText

  execute "highlight WildMenu " .. blue_black .. decorations.NONE

  execute "highlight WinBar " .. decorations.bold

  highlight link WinBarNC WinBar

  execute "highlight VertSplit " .. white_none .. decorations.NONE
enddef

SetColorscheme()
