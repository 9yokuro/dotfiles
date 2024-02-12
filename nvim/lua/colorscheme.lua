local config = {
	defaults = {
		transparent = false,
		overrides = {},
	},
}

setmetatable(config, { __index = config.defaults })

local colors = {
	white = "#eedcd2",
	black = "#000203",
    accent = "#eea47f",
    bg = "#000810",
    fg = "#eedcd2",
    ui = "#eedcd2",
    tag = "#007ce9",
    func = "#7fc9ee",
    entity = "#007ce9",
    string = "#009c97",
    regexp = "#7fc9ee",
    markup = "#eea47f",
    keyword = "#eea47f",
    special = "#009c97",
    comment = "#8c959c",
    constant = "#c471d5",
    operator = "#eea47f",
    error = "#ee7f92",
    lsp_parameter = "#c471d5",
    line = "#001d36",
    panel_bg = "#001629",
    panel_shadow = "#000f1d",
    panel_border = "#000f1d",
    gutter_normal = "#8c959c",
    gutter_active = "#7d8d9c",
    selection_bg = "#8c959c",
    selection_inactive = "#001d36",
    selection_border = "#001629",
    guide_active = "#8c959c",
    guide_normal = "#7d8d9c",
    vcs_added = "#009c97",
    vcs_modified = "#007ce9",
    vcs_removed = "#ee7f92",
    vcs_added_bg = "#000810",
    vcs_removed_bg = "#000810",
    fg_idle = "#8c959c",
    warning = "#eea47f",
}

local function set_terminal_colors()
    vim.g.terminal_color_0 = colors.bg
    vim.g.terminal_color_1 = colors.markup
    vim.g.terminal_color_2 = colors.string
    vim.g.terminal_color_3 = colors.accent
    vim.g.terminal_color_4 = colors.tag
    vim.g.terminal_color_5 = colors.constant
    vim.g.terminal_color_6 = colors.regexp
    vim.g.terminal_color_7 = colors.fg
    vim.g.terminal_color_8 = colors.fg_idle
    vim.g.terminal_color_9 = colors.error
    vim.g.terminal_color_10 = colors.string
    vim.g.terminal_color_11 = colors.accent
    vim.g.terminal_color_12 = colors.tag
    vim.g.terminal_color_13 = colors.constant
    vim.g.terminal_color_14 = colors.regexp
    vim.g.terminal_color_15 = colors.comment
    vim.g.terminal_color_background = colors.bg
    vim.g.terminal_color_foreground = colors.fg
end

local function set_groups()
    local groups = {
        Normal = { fg = colors.fg, bg = colors.bg },
        NormalFloat = { bg = colors.bg },
        FloatBorder = { fg = colors.comment },
        FloatTitle = { fg = colors.fg },
        ColorColumn = { bg = colors.line },
        Cursor = { fg = colors.bg, bg = colors.fg },
        CursorColumn = { bg = colors.line },
        CursorLine = { bg = colors.line },
        CursorLineNr = { fg = colors.accent, bg = colors.line },
        LineNr = { fg = colors.guide_normal },

        Directory = { fg = colors.func },
        ErrorMsg = { fg = colors.error },
        VertSplit = { fg = colors.panel_border, bg = colors.bg },
        Folded = { fg = colors.fg_idle, bg = colors.panel_bg },
        FoldColumn = { bg = colors.bg },
        SignColumn = { bg = colors.bg },

        MatchParen = { sp = colors.func, underline = true },
        ModeMsg = { fg = colors.string },
        MoreMsg = { fg = colors.string },
        NonText = { fg = colors.guide_normal },
        Pmenu = { fg = colors.fg, bg = colors.selection_inactive },
        PmenuSel = { fg = colors.fg, bg = colors.selection_inactive, reverse = true },
        Question = { fg = colors.string },
        Search = { fg = colors.bg, bg = colors.constant },
        CurSearch = { fg = colors.bg, bg = colors.special },
        IncSearch = { fg = colors.keyword, bg = colors.selection_inactive },
        SpecialKey = { fg = colors.selection_inactive },
        SpellCap = { sp = colors.tag, undercurl = true },
        SpellLocal = { sp = colors.keyword, undercurl = true },
        SpellBad = { sp = colors.error, undercurl = true },
        SpellRare = { sp = colors.regexp, undercurl = true },
        StatusLine = { fg = colors.fg, bg = colors.panel_bg },
        StatusLineNC = { fg = colors.fg_idle, bg = colors.panel_bg },
        WildMenu = { fg = colors.fg, bg = colors.markup },
        TabLine = { fg = colors.comment, bg = colors.panel_shadow },
        TabLineFill = { fg = colors.fg, bg = colors.panel_border },
        TabLineSel = { fg = colors.fg, bg = colors.bg },
        Title = { fg = colors.keyword },
        Visual = { bg = colors.selection_inactive },
        WarningMsg = { fg = colors.warning },

        Comment = { fg = colors.comment, italic = true },
        Constant = { fg = colors.constant },
        String = { fg = colors.string },
        Identifier = { fg = colors.entity },
        Function = { fg = colors.func },
        Statement = { fg = colors.keyword },
        Operator = { fg = colors.operator },
        Exception = { fg = colors.markup },
        PreProc = { fg = colors.accent },
        Type = { fg = colors.entity },
        Structure = { fg = colors.special },
        Special = { fg = colors.accent },
        Delimiter = { fg = colors.special },
        Underlined = { sp = colors.tag, underline = true },
        Ignore = { fg = colors.fg },
        Error = { fg = colors.white, bg = colors.error },
        Todo = { fg = colors.markup },
        qfLineNr = { fg = colors.keyword },
        qfError = { fg = colors.error },
        Conceal = { fg = colors.comment },
        CursorLineConceal = { fg = colors.guide_normal, bg = colors.line },

        DiffAdd = { bg = colors.vcs_added_bg },
        DiffAdded = { fg = colors.vcs_added },
        DiffDelete = { bg = colors.vcs_removed_bg },
        DiffRemoved = { fg = colors.vcs_removed },
        DiffText = { bg = colors.gutter_normal },
        DiffChange = { bg = colors.selection_inactive },

        DiagnosticError = { fg = colors.error },
        DiagnosticWarn = { fg = colors.keyword },
        DiagnosticInfo = { fg = colors.tag },
        DiagnosticHint = { fg = colors.regexp },

        DiagnosticUnderlineError = { sp = colors.error, undercurl = true },
        DiagnosticUnderlineWarn = { sp = colors.keyword, undercurl = true },
        DiagnosticUnderlineInfo = { sp = colors.tag, undercurl = true },
        DiagnosticUnderlineHint = { sp = colors.regexp, undercurl = true },

        markdownCode = { fg = colors.special },

        ["@property"] = { fg = colors.tag },
        ["@field"] = { fg = colors.tag },
        ["@parameter"] = { fg = colors.fg },
        ["@namespace"] = { fg = colors.func },
        ["@variable.builtin"] = { fg = colors.func },
        ["@text.title"] = { fg = colors.keyword },
        ["@type.qualifier"] = { fg = colors.keyword },
        ["@storageclass"] = { fg = colors.keyword },
        ["@tag"] = { fg = colors.keyword },
        ["@tag.attribute"] = { fg = colors.entity },
        ["@tag.delimiter"] = { link = "Delimiter" },
        ["@variable"] = { fg = colors.fg },

        ["@lsp.type.namespace"] = { link = "@namespace" },
        ["@lsp.type.type"] = { link = "@type" },
        ["@lsp.type.class"] = { link = "@type" },
        ["@lsp.type.enum"] = { link = "@type" },
        ["@lsp.type.interface"] = { link = "@type" },
        ["@lsp.type.struct"] = { link = "@structure" },
        ["@lsp.type.parameter"] = { fg = colors.lsp_parameter },
        ["@lsp.type.field"] = { link = "@field" },
        ["@lsp.type.variable"] = { link = "@variable" },
        ["@lsp.type.property"] = { link = "@property" },
        ["@lsp.type.enumMember"] = { link = "@constant" },
        ["@lsp.type.function"] = { link = "@function" },
        ["@lsp.type.method"] = { link = "@method" },
        ["@lsp.type.macro"] = { link = "@macro" },
        ["@lsp.type.decorator"] = { link = "@function" },
        ["@lsp.mod.constant"] = { link = "@constant" },

        TreesitterContext = { bg = colors.selection_inactive },

        GitSignsAddLn = { fg = colors.vcs_added },
        GitSignsDeleteLn = { fg = colors.vcs_removed },
        GitSignsChange = { fg = colors.vcs_modified },

        TelescopePromptBorder = { fg = colors.accent },

        CmpItemAbbrMatch = { fg = colors.keyword },
        CmpItemAbbrMatchFuzzy = { fg = colors.func },
        CmpItemKindText = { fg = colors.string },
        CmpItemKindMethod = { fg = colors.keyword },
        CmpItemKindFunction = { fg = colors.func },
        CmpItemKindConstructor = { fg = colors.keyword },
        CmpItemKindField = { fg = colors.entity },
        CmpItemKindVariable = { fg = colors.tag },
        CmpItemKindClass = { fg = colors.entity },
        CmpItemKindInterface = { fg = colors.entity },
        CmpItemKindModule = { fg = colors.keyword },
        CmpItemKindProperty = { fg = colors.keyword },
        CmpItemKindUnit = { fg = colors.constant },
        CmpItemKindValue = { fg = colors.constant },
        CmpItemKindEnum = { fg = colors.entity },
        CmpItemKindKeyword = { fg = colors.keyword },
        CmpItemKindSnippet = { fg = colors.regexp },
        CmpItemKindColor = { fg = colors.special },
        CmpItemKindFile = { fg = colors.special },
        CmpItemKindReference = { fg = colors.special },
        CmpItemKindFolder = { fg = colors.special },
        CmpItemKindEnumMember = { fg = colors.constant },
        CmpItemKindConstant = { fg = colors.constant },
        CmpItemKindStruct = { fg = colors.entity },
        CmpItemKindEvent = { fg = colors.tag },
        CmpItemKindOperator = { fg = colors.operator },
        CmpItemKindTypeParameter = { fg = colors.tag },
        CmpItemMenu = { fg = colors.comment },

        CursorWord = { bg = colors.selection_inactive },
        CursorWord0 = { bg = colors.selection_inactive },
        CursorWord1 = { bg = colors.selection_inactive },

        NoiceLspProgressTitle = { fg = colors.fg },
        NoiceLspProgressClient = { fg = colors.special },

        NvimTreeGitDirty = { fg = colors.accent },
        NvimTreeGitStaged = { fg = colors.vcs_modified },
        NvimTreeGitMerge = { fg = colors.error },
        NvimTreeGitNew = { fg = colors.vcs_added },
        NvimTreeGitDeleted = { fg = colors.vcs_removed },

        NvimTreeFolderName = { fg = colors.special },
        NvimTreeFolderIcon = { fg = colors.accent },
        NvimTreeOpenedFolderName = { fg = colors.special },
        NvimTreeRootFolder = { fg = colors.keyword },
        NvimTreeSpecialFile = { fg = colors.fg },
        NvimTreeExecFile = { fg = colors.fg },
        NvimTreeIndentMarker = { fg = colors.guide_normal },

        NvimTreeWindowPicker = { fg = colors.keyword, bg = colors.panel_border, bold = true },

        NeoTreeRootName = { fg = colors.fg, bold = true },

        WhichKeyFloat = { bg = colors.bg },

        IndentBlanklineContextChar = { fg = colors.comment },

        NeogitDiffContextHighlight = { bg = colors.line },
        NeogitHunkHeader = { fg = colors.tag },
        NeogitHunkHeaderHighlight = { fg = colors.tag, bg = colors.line },
        NeogitDiffAddHighlight = { bg = colors.vcs_added_bg },
        NeogitDiffDeleteHighlight = { bg = colors.vcs_removed_bg },

        HopNextKey = { fg = colors.keyword, bold = true, underline = true },
        HopNextKey1 = { fg = colors.entity, bold = true, underline = true },
        HopNextKey2 = { fg = colors.tag },
        HopUnmatched = { fg = colors.comment },

        LeapMatch = { fg = colors.regexp, underline = true },
        LeapLabelPrimary = { fg = colors.bg, bg = colors.regexp },
        LeapLabelSecondary = { fg = colors.bg, bg = colors.entity },
        LeapLabelSelected = { fg = colors.bg, bg = colors.tag },

        LspSignatureActiveParameter = { italic = true },

        NotifyERROR = { fg = colors.vcs_removed },
        NotifyWARN = { fg = colors.func },
        NotifyINFO = { fg = colors.vcs_added },
        NotifyDEBUG = { fg = colors.comment },
        NotifyTRACE = { fg = colors.vcs_modified },
        NotifyERRORTitle = { fg = colors.error },
        NotifyWARNTitle = { fg = colors.warning },
        NotifyINFOTitle = { fg = colors.string },
        NotifyDEBUGTitle = { fg = colors.ui },
        NotifyTRACETitle = { fg = colors.entity },

        NvimDapVirtualText = { fg = colors.regexp },

        DapUIScope = { fg = colors.func },
        DapUIType = { fg = colors.entity },
        DapUIDecoration = { fg = colors.tag },
        DapUIThread = { fg = colors.string },
        DapUIStoppedThread = { fg = colors.special },
        DapUISource = { fg = colors.regexp },
        DapUILineNumber = { fg = colors.constant },
        DapUIFloatBorder = { fg = colors.panel_border },
        DapUIWatchesEmpty = { fg = colors.warning },
        DapUIWatchesValue = { fg = colors.string },
        DapUIWatchesError = { fg = colors.error },
        DapUIBreakpointsPath = { fg = colors.regexp },
        DapUIBreakpointsInfo = { fg = colors.constant },
        DapUIBreakpointsCurrentLine = { fg = colors.constant, bold = true },

        VM_Extend = { bg = colors.selection_inactive },
        VM_Cursor = { bg = colors.selection_inactive, sp = colors.fg, underline = true },
        VM_Insert = { sp = colors.fg, underline = true },
        VM_Mono = { fg = colors.bg, bg = colors.comment },
    }

    groups = vim.tbl_extend("force", groups, type(config.overrides) == "function" and config.overrides() or config.overrides)

    for group, parameters in pairs(groups) do
            vim.api.nvim_set_hl(0, group, parameters)
    end
end

local kingfisher = {}

local function colorscheme()
	vim.api.nvim_command("hi clear")
	if vim.fn.exists("syntax_on") then
		vim.api.nvim_command("syntax reset")
	end

	if config.transparent then
		config.overrides = {
			Normal = { bg = "None" },
			ColorColumn = { bg = "None" },
			SignColumn = { bg = "None" },
			Folded = { bg = "None" },
			FoldColumn = { bg = "None" },
			CursorColumn = { bg = "None" },
			WhichKeyFloat = { bg = "None" },
			VertSplit = { bg = "None" },
		}
	end

	vim.g.VM_theme_set_by_colorscheme = true -- Required for Visual Multi
	vim.o.termguicolors = true
	vim.g.colors_name = "kingfisher"

	set_terminal_colors()
	set_groups()
end

function kingfisher.setup(values)
	setmetatable(config, { __index = vim.tbl_extend("force", config.defaults, values) })
	colorscheme()
end

return kingfisher
