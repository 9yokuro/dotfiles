vim9script

highlight! link StatusLine Comment

highlight! link StatusLineNC Comment

highlight! link VertSplit Comment

# Keymaps

# Buffer
nnoremap [b <Cmd>bprevious<CR>

nnoremap ]b <Cmd>bnext<CR>

# Miscellaneous
g:mapleader = ";"

# Quickfix
nnoremap [q <Cmd>cprevious<CR>

nnoremap ]q <Cmd>cnext<CR>

# Terminal
nnoremap <Space>tt <Cmd>tab terminal<CR>

nnoremap <Space>ts <Cmd>bo terminal<CR>

nnoremap <Space>tv <Cmd>vert terminal<CR>

# Vimgrep
nnoremap <Space>g :silent vimgrep 

# Window
nnoremap <Space>ss <Cmd>split<CR>

nnoremap <Space>sv <Cmd>vsplit<CR>

nnoremap <Space>sc <Cmd>wincmd c<CR>

nnoremap <Space>sh <Cmd>wincmd h<CR>

nnoremap <Space>sj <Cmd>wincmd j<CR>

nnoremap <Space>sk <Cmd>wincmd k<CR>

nnoremap <Space>sl <Cmd>wincmd l<CR>

nnoremap <Space>sH <Cmd>wincmd H<CR>

nnoremap <Space>sJ <Cmd>wincmd J<CR>

nnoremap <Space>sK <Cmd>wincmd K<CR>

nnoremap <Space>sL <Cmd>wincmd L<CR>

# Colorscheme
def SetColorscheme()
    highlight clear

    if exists("syntax_on")
        syntax reset
    endif

    g:colors_name = "alcedo"

    const colors_bg = "#000810"

    const colors_fg = "#eedcd2"

    const colors_blue = "#007ce9"

    const colors_yellow = "#eea47f"

    const bold = "cterm=bold gui=bold"

    const italic = "cterm=italic gui=italic"

    const reverse = "cterm=reverse gui=reverse"

    const underline = "cterm=underline gui=underline"

    const fg = "guifg=" .. colors_fg

    const bg = "guibg=" .. colors_bg

    const fg_bg = fg .. " " .. bg

    const blue_bg = "guifg=" .. colors_blue .. " " .. bg

    const yellow_bg = "guifg=" .. colors_yellow .. " " .. bg

    exec "highlight Comment " .. fg .. " " .. italic

    exec "highlight Constant " .. fg

    exec "highlight Identifier " .. fg

    exec "highlight Statement " .. fg

    exec "highlight PreProc " .. fg .. " " .. italic

    exec "highlight Type " .. fg

    exec "highlight Special " .. fg

    exec "highlight Underlined " .. fg .. " " .. underline

    exec "highlight Ignore " .. fg

    exec "highlight Error " .. fg

    exec "highlight Todo " .. fg

    exec "highlight ColorColumn " .. fg_bg

    exec "highlight Conceal " .. fg_bg

    exec "highlight link CurSearch Search"

    exec "highlight Cursor guifg=bg guibg=fg"

    exec "highlight lCursor guifg=bg guibg=fg"

    exec "highlight CursorColumn " .. fg_bg

    exec "highlight CursorLine " .. fg_bg .. " " .. underline

    exec "highlight Directory " .. fg_bg

    exec "highlight DiffAdd " .. fg_bg

    exec "highlight DiffChange " .. fg_bg

    exec "highlight DiffDelete " .. fg_bg

    exec "highlight DiffText " .. fg_bg

    exec "highlight link EndOfBuffer NonText"

    exec "highlight TermCursor " .. reverse

    exec "highlight ErrorMsg " .. yellow_bg

    exec "highlight link WinSeparator VertSplit"

    exec "highlight Folded " .. blue_bg

    exec "highlight FoldColumn " .. blue_bg

    exec "highlight SignColumn " .. blue_bg

    exec "highlight IncSearch " .. reverse

    exec "highlight link Substitute Search"

    exec "highlight LineNr guifg=" .. colors_yellow

    exec "highlight link LineNrAbove LineNr"

    exec "highlight link LineNrBelow LineNr"

    exec "highlight CursorLineNr guifg=" .. colors_yellow .. " " .. bold .. " " .. underline

    exec "highlight link CursorLineFold FoldColumn"

    exec "highlight link CursorLineSign SignColumn"

    exec "highlight MatchParen guibg=" .. colors_blue

    exec "highlight ModeMsg guifg=" .. colors_blue

    exec "highlight link MsgSeparator StatusLine"

    exec "highlight MoreMsg guifg=" .. colors_blue .. " " .. bold

    exec "highlight NonText guifg=" .. colors_blue .. " " .. bold
    
    exec "highlight Normal " .. fg_bg

    exec "highlight link NormalFloat Pmenu"

    exec "highlight link FloatBorder WinSeparator"

    exec "highlight link FloatTitle Title"

    exec "highlight link NormalNC Normal"

    exec "highlight Pmenu " .. fg_bg

    exec "highlight PmenuSel guifg=" .. colors_bg .. " guibg=" .. colors_fg

    exec "highlight link PmenuKind Pmenu"

    exec "highlight link PmenuKindSel PmenuSel"

    exec "highlight link PmenuExtra Pmenu"

    exec "highlight link PmenuExtraSel PmenuSel"

    exec "highlight PmenuSbar " .. bg

    exec "highlight PmenuThumb guibg=" .. colors_fg

    exec "highlight Question guifg=" .. colors_blue .. " " .. bold

    exec "highlight link QuickFixLine Search"

    exec "highlight Search guifg=" .. colors_bg .. " guibg=" .. colors_blue

    exec "highlight SpecialKey guifg=" .. colors_blue

    exec "highlight SpellBad " .. underline

    exec "highlight SpellCap " .. underline

    exec "highlight SpellLocal " .. underline

    exec "highlight SpellRare " .. underline

    exec "highlight link StatusLine Comment"

    exec "highlight link StatusLineNC Comment"

    exec "highlight TabLine " .. fg_bg .. " " .. underline

    exec "highlight TabLineFill " .. reverse

    exec "highlight TabLineSel " .. bold

    exec "highlight Title guifg=" .. colors_blue .. " " .. bold

    exec "highlight Visual guibg=" .. colors_blue

    exec "highlight WarningMsg guifg=" .. colors_yellow

    exec "highlight link Whitespace NonText"

    exec "highlight WildMenu guifg=" .. colors_bg .. " guibg=" .. colors_blue

    exec "highlight WinBar " .. bold

    exec "highlight link WinBarNC WinBar"

    exec "highlight link VertSplit Comment"
enddef

SetColorscheme()
