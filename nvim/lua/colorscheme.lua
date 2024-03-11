-- Colorscheme
local set_highlight = require("utils").set_highlight

local cmd = vim.cmd

cmd.hi("clear")

if vim.fn.exists("syntax_on") then
	cmd.syntax("reset")
end

local colors = {
	bg = "#000810",
	blue = "#007ce9",
	fg = "#eedcd2",
	yellow = "#eea47f",
}

local groups = {
	Comment = {
		fg = colors.fg,
		italic = true,
	},

	Constant = {
		fg = colors.fg,
	},

	Identifier = {
		fg = colors.fg,
	},

	Statement = {
		fg = colors.fg,
	},

	PreProc = {
		fg = colors.fg,
		italic = true,
	},

	Type = {
		fg = colors.fg,
	},

	Special = {
		fg = colors.fg,
	},

	Underlined = {
		fg = colors.fg,
		underline = true,
	},

	Ignore = {
		fg = colors.fg,
	},

	Error = {
		fg = colors.fg,
	},

	Todo = {
		fg = colors.fg,
	},

	ColorColumn = {
		fg = colors.fg,
		bg = colors.bg,
	},

	Conceal = {
		fg = colors.fg,
		bg = colors.bg,
	},

	CurSearch = {
		link = "Search",
	},

	Cursor = {
		fg = bg,
		bg = fg,
	},

	lCursor = {
		fg = bg,
		bg = fg,
	},

	CursorColumn = {
		fg = colors.fg,
		bg = colors.bg,
	},

	CursorLine = {
		fg = colors.fg,
		bg = colors.bg,
		underline = true,
	},

	Directory = {
		fg = colors.fg,
		bg = colors.bg,
	},

	DiffAdd = {
		fg = colors.fg,
		bg = colors.bg,
	},

	DiffChange = {
		fg = colors.fg,
		bg = colors.bg,
	},

	DiffDelete = {
		fg = colors.fg,
		bg = colors.bg,
	},

	DiffText = {
		fg = colors.fg,
		bg = colors.bg,
	},

	EndOfBuffer = {
		link = "NonText",
	},

	TermCursor = {
		reverse = true,
	},

	TermCursorNC = {},

	ErrorMsg = {
		fg = colors.yellow,
		bg = colors.bg,
	},

	WinSeparator = {
		link = "VertSplit",
	},

	Folded = {
		fg = colors.blue,
		bg = colors.bg,
	},

	FoldColumn = {
		fg = colors.blue,
		bg = colors.bg,
	},

	SignColumn = {
		fg = colors.blue,
		bg = colors.bg,
	},

	IncSearch = {
		reverse = true,
	},

	Substitute = {
		link = "Search",
	},

	LineNr = {
		fg = colors.yellow,
	},

	LineNrAbove = {
		link = "LineNr",
	},

	LineNrBelow = {
		link = "LineNr",
	},

	CursorLineNr = {
		fg = colors.yellow,
		underline = true,
		bold = true,
	},

	CursorLineFold = {
		link = "FoldColumn",
	},

	CursorLineSign = {
		link = "SignColumn",
	},

	MatchParen = {
		bg = colors.blue,
	},

	ModeMsg = {
		fg = colors.blue,
	},

	MsgArea = {},

	MsgSeparator = {
		link = "StatusLine",
	},

	MoreMsg = {
		fg = colors.blue,
		bold = true,
	},

	NonText = {
		fg = colors.blue,
		bold = true,
	},

	Normal = {
		fg = colors.fg,
		bg = colors.bg,
	},

	NormalFloat = {
		link = "Pmenu",
	},

	FloatBorder = {
		link = "WinSeparator",
	},

	FloatTitle = {
		link = "Title",
	},

	NormalNC = {
		link = "Normal",
	},

	Pmenu = {
		fg = colors.fg,
		bg = colors.bg,
	},

	PmenuSel = {
		fg = colors.bg,
		bg = colors.fg,
	},

	PmenuKind = {
		link = "Pmenu",
	},

	PmenuKindSel = {
		link = "PmenuSel",
	},

	PmenuExtra = {
		link = "Pmenu",
	},

	PmenuExtraSel = {
		link = "PmenuSel",
	},

	PmenuSbar = {
		bg = colors.bg,
	},

	PmenuThumb = {
		bg = colors.fg,
	},

	Question = {
		fg = colors.blue,
		bold = true,
	},

	QuickFixLine = {
		link = "Search",
	},

	Search = {
		fg = colors.bg,
		bg = colors.blue,
	},

	SpecialKey = {
		fg = colors.blue,
	},

	SpellBad = {
		undercurl = true,
	},

	SpellCap = {
		link = "SpellBad",
	},

	SpellLocal = {
		link = "SpellBad",
	},

	SpellRare = {
		link = "SpellBad",
	},

	StatusLine = {
		link = "Comment",
	},

	StatusLineNC = {
		link = "Comment",
	},

	TabLine = {
		fg = colors.fg,
		bg = colors.bg,
		underline = true,
	},

	TabLineFill = {
		reverse = true,
	},

	TabLineSel = {
		bold = true,
	},

	Title = {
		fg = colors.blue,
		bold = true,
	},

	Visual = {
		bg = colors.blue,
	},

	VisualNOS = {},

	WarningMsg = {
		fg = colors.yellow,
	},

	Whitespace = {
		link = "NonText",
	},

	WildMenu = {
		fg = colors.bg,
		bg = colors.blue,
	},

	WinBar = {
		bold = true,
	},

	WinBarNC = {
		link = "WinBar",
	},

	VertSplit = {
		link = "Comment",
	},
}

set_highlight(groups)

vim.g.colors_name = "alcedo"
