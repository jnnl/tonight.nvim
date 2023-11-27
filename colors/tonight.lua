-- tonight.lua

local c = {
    fg = '#c6c6c6',
    bg = '#262626',

    grey_0 = '#303030',
    grey_1 = '#3d3d3d',
    grey_2 = '#474747',
    grey_3 = '#525252',
    grey_4 = '#5c5c5c',
    grey_5 = '#666666',
    grey_6 = '#707070',
    grey_7 = '#7a7a7a',
    grey_8 = '#858585',
    grey_9 = '#8f8f8f',
    grey_10 = '#999999',
    grey_11 = '#a3a3a3',
    grey_12 = '#adadad',
    grey_13 = '#b8b8b8',
    grey_14 = '#c2c2c2',
    grey_15 = '#cccccc',

    red = '#d75f5f',
    light_red = '#f78f8f',
    dark_red = '#5f0000',
    orange = '#d7875f',
    light_orange = '#d8ad84',
    dark_orange = '#bd580d',
    green = '#a8a658',
    light_green = '#dfdf8f',
    dark_green = '#5f7f2f',
    teal = '#87afaf',
    light_teal = '#b7dfdf',
    dark_teal = '#609f9f',
    blue = '#759dbb',
    light_blue = '#a5c9fb',
    dark_blue = '#55799b',
    purple = '#af87af',
    light_purple = '#dfb7df',
    dark_purple = '#5f005f',
}

local highlights = {
    Normal   = {fg = c.fg, bg = c.bg},
    NormalNC = {link = 'Normal'},

    Comment = {fg = c.grey_5},

    LineNr       = {fg = c.grey_2},
    LineNrAbove  = {link = 'LineNr'},
    LineNrBelow  = {link = 'LineNr'},
    CursorLineNr = {link = 'LineNr'},
    EndOfBuffer  = {link = 'LineNr'},

    SignColumn     = {},
    ColorColumn    = {bg = c.grey_0},
    CursorLine     = {link = 'ColorColumn'},
    CursorLineFold = {link = 'FoldColumn'},
    CursorLineSign = {link = 'SignColumn'},
    CursorColumn   = {link = 'CursorLine'},

    Visual    = {bg = c.grey_1},
    VisualNOS = {bg = c.grey_0},

    Cursor       = {fg = c.bg, bg = c.fg},
    lCursor      = {link = 'Cursor'},
    CursorIM     = {link = 'Cursor'},
    TermCursor   = {fg = c.bg, bg = c.grey_5},
    TermCursorNC = {fg = c.grey_5},

    CurSearch  = {fg = c.bg, bg = c.orange},
    IncSearch  = {link = 'CurSearch'},
    Search     = {fg = c.bg, bg = c.light_orange},
    Substitute = {fg = c.bg, bg = c.light_orange},

    StatusLine   = {fg = c.light_orange, bg = c.grey_1},
    StatusLineNC = {fg = c.grey_10, bg = c.grey_1},

    ModeMsg    = {fg = c.green},
    MoreMsg    = {link = 'ModeMsg'},
    ErrorMsg   = {fg = c.red},
    WarningMsg = {fg = c.orange},

    Pmenu         = {fg = c.fg, bg = c.grey_1},
    PmenuSel      = {fg = c.bg, bg = c.teal},
    PmenuKind     = {link = 'Pmenu'},
    PmenuKindSel  = {link = 'PmenuSel'},
    PmenuExtra    = {link = 'Pmenu'},
    PmenuExtraSel = {link = 'PmenuSel'},
    PmenuSbar     = {bg = c.grey_6},
    PmenuThumb    = {bg = c.grey_10},
    QuickFixLine  = {link = 'PmenuSel'},

    WildMenu = {fg = c.bg, bg = c.teal},

    Title      = {fg = c.light_orange},
    FloatTitle = {link = 'Title'},

    Conceal   = {fg = c.teal},
    Question  = {fg = c.teal},
    Directory = {fg = c.teal},

    DiffAdd    = {fg = c.bg, bg = c.green},
    DiffChange = {fg = c.bg, bg = c.dark_green},
    DiffDelete = {fg = c.bg, bg = c.red},
    DiffText   = {fg = c.bg, bg = c.light_orange},

    Folded     = {bg = c.grey_1},
    FoldColumn = {link = 'Folded'},

    VertSplit    = {fg = c.grey_1},
    Winseparator = {link = 'VertSplit'},

    Whitespace = {fg = c.grey_5},
    NonText    = {fg = c.grey_5},
    MatchParen = {fg = c.fg, bg = c.grey_5},

    MsgArea      = {fg = c.fg},
    MsgSeparator = {fg = c.light_orange, bg = c.grey_1},

    NormalFloat = {fg = c.fg, bg = c.grey_0},
    FloatBorder = {fg = c.fg},

    SpellBad   = {fg = c.red, underline = true},
    SpellCap   = {fg = c.fg, underline = true},
    SpellLocal = {link = 'Normal'},
    SpellRare  = {link = 'Normal'},

    TabLine     = {fg = c.fg, bg = c.grey_1},
    TabLineFill = {bg = c.grey_1},
    TabLineSel  = {fg = c.light_orange, bg = c.grey_1},

    WinBar   = {fg = c.fg},
    WinBarNC = {fg = c.fg, bg = c.grey_1},

    Constant  = {fg = c.orange},
    String    = {fg = c.green},
    Character = {link = 'String'},
    Boolean   = {link = 'Constant'},
    Number    = {link = 'Constant'},
    Float     = {link = 'Constant'},

    Identifier = {fg = c.teal},
    Function   = {fg = c.blue},

    Statement   = {fg = c.purple},
    Conditional = {link = 'Statement'},
    Repeat      = {link = 'Statement'},
    Label       = {link = 'Statement'},
    Operator    = {link = 'Statement'},
    Keyword     = {link = 'Statement'},
    Exception   = {link = 'Statement'},

    PreProc   = {link = 'Statement'},
    Include   = {link = 'Statement'},
    Define    = {link = 'Statement'},
    Macro     = {link = 'Statement'},
    PreCondit = {link = 'Statement'},

    Type         = {fg = c.light_orange},
    StorageClass = {link = 'Type'},
    Structure    = {link = 'Type'},
    Typedef      = {link = 'Type'},

    Special        = {fg = c.fg},
    SpecialKey     = {link = 'Special'},
    SpecialChar    = {link = 'Special'},
    SpecialComment = {link = 'Special'},
    Tag            = {link = 'Special'},
    Delimiter      = {link = 'Special'},
    Debug          = {link = 'Special'},

    Underlined = {underline = true},
    Ignore     = {fg = c.bg},
    Error      = {fg = c.red},
    Todo       = {fg = c.orange},

    LspReferenceText            = {fg = c.teal},
    LspReferenceRead            = {link = 'LspReferenceText'},
    LspReferenceWrite           = {link = 'LspReferenceText'},
    LspSignatureActiveParameter = {fg = c.bg, bg = c.light_orange},
    LspCodeLens                 = {link = 'LspInlayHint'},
    LspCodeLensSeparator        = {link = 'LspCodeLens'},
    LspInlayHint                = {fg = c.grey_5},

    DiagnosticError          = {fg = c.red},
    DiagnosticWarn           = {fg = c.dark_orange},
    DiagnosticInfo           = {fg = c.teal},
    DiagnosticHint           = {fg = c.fg},
    DiagnosticOk             = {fg = c.green},
    DiagnosticUnderlineError = {fg = c.red, underline = true},
    DiagnosticUnderlineWarn  = {fg = c.dark_orange, underline = true},
    DiagnosticUnderlineInfo  = {fg = c.teal, underline = true},
    DiagnosticUnderlineHint  = {fg = c.fg, underline = true},
    DiagnosticUnderlineOk    = {fg = c.green, underline = true},

    ['@boolean']                       = {link = 'Boolean'},
    ['@character']                     = {link = 'Character'},
    ['@character.special']             = {link = 'SpecialChar'},
    ['@comment']                       = {link = 'Comment'},
    ['@conditional']                   = {link = 'Conditional'},
    ['@constant']                      = {link = 'Constant'},
    ['@constant.builtin']              = {link = 'Define'},
    ['@constant.macro']                = {link = 'Macro'},
    ['@constructor']                   = {link = 'Special'},
    ['@debug']                         = {link = 'Debug'},
    ['@define']                        = {link = 'Define'},
    ['@exception']                     = {link = 'Exception'},
    ['@field']                         = {link = 'Identifier'},
    ['@float']                         = {link = 'Float'},
    ['@function']                      = {link = 'Function'},
    ['@function.builtin']              = {link = 'Function'},
    ['@function.macro']                = {link = 'Macro'},
    ['@include']                       = {link = 'Include'},
    ['@keyword']                       = {link = 'Keyword'},
    ['@label']                         = {link = 'Label'},
    ['@lsp.type.member']               = {link = 'Function'},
    ['@macro']                         = {link = 'Macro'},
    ['@method']                        = {link = 'Function'},
    ['@namespace']                     = {link = 'Identifier'},
    ['@number']                        = {link = 'Number'},
    ['@operator']                      = {link = 'Operator'},
    ['@parameter']                     = {link = 'Identifier'},
    ['@preproc']                       = {link = 'PreProc'},
    ['@property']                      = {link = 'Identifier'},
    ['@punctuation']                   = {link = 'Delimiter'},
    ['@repeat']                        = {link = 'Repeat'},
    ['@storageclass']                  = {link = 'StorageClass'},
    ['@string']                        = {link = 'String'},
    ['@string.escape']                 = {link = 'SpecialChar'},
    ['@string.special']                = {link = 'SpecialChar'},
    ['@structure']                     = {link = 'Structure'},
    ['@tag']                           = {link = 'Tag'},
    ['@text.emphasis.markdown_inline'] = {fg = c.grey_10},
    ['@text.literal']                  = {link = 'Comment'},
    ['@text.literal.block.markdown']   = {fg = c.grey_10},
    ['@text.literal.markdown_inline']  = {fg = c.grey_10},
    ['@text.reference']                = {link = 'Identifier'},
    ['@text.title']                    = {link = 'Title'},
    ['@text.todo']                     = {link = 'Todo'},
    ['@text.underline']                = {link = 'Underlined'},
    ['@text.uri']                      = {link = 'Underlined'},
    ['@type']                          = {link = 'Type'},
    ['@type.definition']               = {link = 'Typedef'},
    ['@variable']                      = {link = 'Identifier'},
}

vim.cmd('highlight clear')
vim.cmd('set t_Co=256')
vim.cmd([[let g:colors_name='tonight']])

for group, attrs in pairs(highlights) do
  vim.api.nvim_set_hl(0, group, attrs)
end
