-- 自定义主题: my_poimbox.lua (基于 Gruvbox 结构和 Poimandres 颜色)

local colors = {
  bg0 = "#1e1e2e",         -- Poimandres background
  bg1 = "#313244",         -- Lighter background
  bg2 = "#45475a",         -- Slightly lighter
  bg3 = "#585b70",         -- Medium
  bg4 = "#6c7086",         -- Lighter medium
  fg0 = "#cdd6f4",         -- Poimandres foreground
  fg1 = "#bac2de",         -- Slightly darker foreground
  fg2 = "#a6adc8",         -- Dimmer foreground
  fg3 = "#939ab7",         -- Even dimmer
  fg4 = "#8087a2",         -- Lightest foreground
  red = "#f38ba8",         -- Poimandres red/pink
  dred = "#e06c75",        -- Darker red
  --green = "#a6e3a1",       -- Poimandres green
  green = '#b8bb26',
  dgreen = "#98c379",      -- Darker green
  yellow = "#f9e2af",      -- Poimandres yellow
  dyellow = "#e5c07b",     -- Darker yellow
  lyellow = "#d8ff1f",      -- Bright yellow (保留)
  blue = "#89b4fa",        -- Poimandres blue
  dblue = "#61afef",       -- Darker blue
  cyan = "#94e2d5",        -- Poimandres cyan/teal
  dcyan = "#56b6c2",       -- Darker cyan
  purple = "#cba6f7",      -- Poimandres purple
  dpurple = "#be5046",      -- Darker purple (调整，Poimandres 中类似颜色较少)
  aqua = "#94e2d5",        -- Poimandres aqua (与 cyan 相同)
  daqua = "#56b6c2",       -- Darker aqua (与 dcyan 相同)
  --orange = "#f5c2e7",      -- Poimandres pink/purple (作为 orange 的替代)
  orange = '#f0945d',
  dorange = "#d19a66",      -- Darker orange
  gray = "#6c7086",         -- Poimandres comment color (作为 gray 的替代)
  lgray = "#d9e0ee",        -- Lighter foreground (作为 lgray 的替代)
  violet = "#cba6f7",       -- Poimandres purple (与 purple 相同)
  magenta = "#f5c2e7",      -- Poimandres pink/purple (与 orange 相同)
}

local function setcolor()
  local groups = {
    -- Base groups
    Normal = { fg = colors.fg1, bg = colors.bg0 },
    NormalFloat = { fg = colors.fg0, bg = 'NONE' },
    FloatWin = { fg = colors.fg0, bg = colors.bg1 },
    FloatBorder = { fg = colors.fg1, bg = colors.bg1 },
    NormalNC = { link = 'Normal' },
    CursorLine = { bg = colors.bg1 },
    CursorColumn = { link = 'CursorLine' },
    CursorWord = { underline = true, fg = colors.accent }, -- 使用 accent
    TabLineTop = { fg = colors.bg0, bg = colors.bg0, bold = true },
    TabLineSel = { fg = colors.fg1, bg = colors.bg0, bold = true },
    TabLine = { fg = colors.fg4, bg = colors.bg0, bold = true },
    TabLineFill = { fg = 'NONE', bg = 'NONE' },
    MatchParen = { bg = colors.bg3, bold = true, fg = colors.fg0 },
    ColorColumn = { bg = colors.bg1 },
    Conceal = { fg = colors.dblue },
    CursorLineNr = { fg = colors.yellow },
    NonText = { fg = colors.bg2 },
    SpecialKey = { fg = colors.fg4 },
    Visual = { bg = colors.bg2 },
    VisualNOS = { link = 'Visual' },
    Search = { fg = colors.yellow, bg = colors.bg0, reverse = true },
    IncSearch = { fg = colors.orange, bg = colors.bg0, reverse = true },
    CurSearch = { link = 'IncSearch' },
    QuickFixLine = { fg = colors.bg0, bg = colors.yellow, bold = true },
    Underlined = { fg = colors.dblue, underline = true },
    StatusLine = { fg = colors.fg0, bg = colors.bg3 },
    StatusLineNC = { fg = colors.fg2, bg = colors.bg0 },
    WinBar = { fg = colors.fg4, bg = colors.bg0 },
    WinBarNC = { fg = colors.fg3, bg = colors.bg0 },
    WinSeparator = { fg = colors.bg3, bg = colors.bg0 },
    WildMenu = { fg = colors.dblue, bg = colors.bg2, bold = true },
    Directory = { fg = colors.blue, bold = true },
    Title = { fg = colors.accent, bold = true }, -- 使用 accent
    ErrorMsg = { fg = colors.fg0, bg = colors.red, bold = true },
    MoreMsg = { fg = colors.yellow, bold = true },
    ModeMsg = { fg = colors.yellow, bold = true },
    Question = { fg = colors.orange, bold = true },
    WarningMsg = { fg = colors.red, bold = true },
    LineNr = { fg = colors.bg3 },
    SignColumn = { bg = colors.bg0, fg = colors.fg2 },
    Folded = { fg = colors.gray, bg = colors.bg1, italic = true },
    FoldColumn = { fg = colors.gray, bg = colors.bg1 },
    Cursor = { fg = colors.bg0, bg = colors.accent }, -- 使用 accent
    vCursor = { link = 'Cursor' },
    iCursor = { link = 'Cursor' },
    lCursor = { link = 'Cursor' },
    Special = { fg = colors.orange },
    Comment = { fg = colors.gray, italic = true },
    Error = { fg = colors.red, bold = true },
    Done = { fg = colors.green, bold = true, italic = true },
    Statement = { fg = colors.red },
    Conditional = { fg = colors.red },
    Repeat = { fg = colors.red },
    Label = { fg = colors.red },
    Exception = { fg = colors.red },
    Operator = { fg = colors.yellow },
    Keyword = { fg = colors.red },
    Identifier = { fg = colors.blue }, -- 使用 blue
    Function = { fg = colors.accent, bold = true }, -- 使用 accent
    PreProc = { fg = colors.cyan },
    Include = { fg = colors.cyan },
    Define = { fg = colors.cyan },
    Macro = { fg = colors.cyan },
    PreCondit = { fg = colors.cyan },
    Constant = { fg = colors.purple },
    Character = { fg = colors.purple },
    String = { fg = colors.green },
    Boolean = { fg = colors.purple },
    Number = { fg = colors.purple },
    Float = { fg = colors.purple },
    Type = { fg = colors.yellow },
    StorageClass = { fg = colors.orange },
    Structure = { fg = colors.cyan },
    Typedef = { fg = colors.yellow },
    DiffDelete = { fg = colors.red, bg = colors.bg0 },
    DiffAdd = { fg = colors.green, bg = colors.bg0 },
    DiffChange = { fg = colors.blue, bg = colors.bg0 },
    DiffText = { fg = colors.yellow, bg = colors.bg0 },
    SpellCap = { undercurl = true, sp = colors.blue },
    SpellBad = { undercurl = true, sp = colors.red },
    SpellLocal = { undercurl = true, sp = colors.cyan },
    SpellRare = { undercurl = true, sp = colors.purple },
    Whitespace = { fg = colors.bg2 },
    Delimiter = { fg = colors.fg1 },
    SnippetTabstop = { link = 'Normal' },
    -- LSP Diagnostic
    DiagnosticError = { fg = colors.red },
    DiagnosticSignError = { fg = colors.red },
    DiagnosticUnderlineError = { undercurl = true, sp = colors.red },
    DiagnosticWarn = { fg = colors.yellow },
    DiagnosticSignWarn = { fg = colors.yellow },
    DiagnosticUnderlineWarn = { undercurl = true, sp = colors.yellow },
    DiagnosticInfo = { fg = colors.blue },
    DiagnosticSignInfo = { fg = colors.blue },
    DiagnosticUnderlineInfo = { undercurl = true, sp = colors.blue },
    DiagnosticHint = { fg = colors.cyan },
    DiagnosticSignHint = { fg = colors.cyan },
    DiagnosticUnderlineHint = { undercurl = true, sp = colors.cyan },
    DiagnosticFloatingError = { fg = colors.red, bg = colors.bg1 },
    DiagnosticFloatingWarn = { fg = colors.yellow, bg = colors.bg1 },
    DiagnosticFloatingInfo = { fg = colors.blue, bg = colors.bg1 },
    DiagnosticFloatingHint = { fg = colors.cyan, bg = colors.bg1 },
    DiagnosticVirtualTextError = { fg = colors.red },
    DiagnosticVirtualTextWarn = { fg = colors.yellow },
    DiagnosticVirtualTextInfo = { fg = colors.blue },
    DiagnosticVirtualTextHint = { fg = colors.cyan },
    LspReferenceRead = { fg = colors.yellow, bold = true },
    LspReferenceText = { fg = colors.yellow, bold = true },
    LspReferenceWrite = { fg = colors.orange, bold = true },
    LspCodeLens = { fg = colors.gray },
    LspSignatureActiveParameter = { link = 'Search' },
    -- gitcommit
    gitcommitSelectedFile = { fg = colors.green },
    gitcommitDiscardedFile = { fg = colors.red },
    -- gitsigns.nvim
    GitSignsAdd = { fg = colors.green },
    GitSignsChange = { fg = colors.purple }, -- 使用 purple
    GitSignsDelete = { fg = colors.red },
    GitSignsAddLn = { fg = colors.green, bg = colors.bg0 },
    GitSignsChangeLn = { fg = colors.purple, bg = colors.bg0 }, -- 使用 purple
    GitSignsDeleteLn = { fg = colors.red, bg = colors.bg0 },
    -- diff
    diffAdded = { fg = colors.green },
    diffRemoved = { fg = colors.red },
    diffChanged = { fg = colors.blue },
    diffFile = { fg = colors.orange },
    diffNewFile = { fg = colors.yellow },
    diffOldFile = { fg = colors.orange },
    diffLine = { fg = colors.dblue },
    diffIndexLine = { link = 'diffChanged' },
    -- lspsaga.nvim
    LspSagaCodeActionTitle = { link = 'Title' },
    LspSagaCodeActionBorder = { fg = colors.fg1 },
    LspSagaCodeActionContent = { fg = colors.green, bold = true },
    LspSagaLspFinderBorder = { fg = colors.fg1 },
    LspSagaAutoPreview = { fg = colors.orange },
    TargetWord = { fg = colors.blue, bold = true }, -- 使用 blue
    FinderSeparator = { fg = colors.cyan },
    LspSagaDefPreviewBorder = { fg = colors.blue }, -- 使用 blue
    LspSagaHoverBorder = { fg = colors.orange },
    LspSagaRenameBorder = { fg = colors.blue }, -- 使用 blue
    LspSagaDiagnosticSource = { fg = colors.orange },
    LspSagaDiagnosticBorder = { fg = colors.purple },
    LspSagaDiagnosticHeader = { fg = colors.green },
    LspSagaSignatureHelpBorder = { fg = colors.green },
    SagaShadow = { bg = colors.bg0 },
    -- Indent
    IndentLine = { fg = colors.bg2 },
    IndentLineCurrent = { link = 'Comment' },
    -- StatusLine
    StatusLineMode = { fg = colors.fg2, bg = colors.bg3 },
    StatusLineFileInfo = { fg = colors.fg2, bg = colors.bg3 },
    StatusLineReadOnly = { fg = colors.red, bg = colors.bg3 },
    StatusLineBranch = { fg = colors.purple, bg = colors.bg3 },
    StatusLineLsp = { fg = colors.fg4, bg = colors.bg3 },
    StatusLineFilesize = { fg = colors.fg4, bg = colors.bg3 },
    StatusLineEncoding = { fg = colors.fg4, bg = colors.bg3 },
    StatlsLineLnum = { fg = colors.fg2, bg = colors.bg3 },
    -- pmenu
    Pmenu = { fg = colors.fg0, bg = colors.bg1 },
    PmenuSel = { bg = colors.bg2, fg = colors.fg0 },
    PmenuSbar = { bg = colors.bg2 },
    PmenuThumb = { bg = colors.bg4 },
    PmenuKind = { fg = colors.purple, bg = colors.bg1 },
    PmenuKindSel = { fg = colors.bg2, bg = colors.blue, bold = true },
    PmenuExtra = { fg = colors.fg1, bg = colors.bg1 },
    PmenuExtraSel = { fg = colors.bg2, bg = colors.blue, bold = true },
    -- cmp
    Cmp = { fg = colors.fg0, bg = colors.bg1 },
    CmpBorder = { fg = colors.cyan },
    BlinkCmpMenu = { link = 'Cmp' },
    BlinkCmpMenuBorder = { link = 'CmpBorder' },
    BlinkCmpDoc = { link = 'Cmp' },
    BlinkCmpDocBorder = { link = 'CmpBorder' },
    BlinkCmpLabel = { link = 'Cmp' },
    BlinkCmpLabelMatch = { fg = colors.yellow, bold = true },
    BlinkCmpKind = { link = 'Cmp' },

    -- nvim-treesitter
    ['@comment'] = { fg = colors.gray, italic = true },
    ['@comment.note'] = { fg = colors.fg0, bg = colors.blue, bold = true, italic = true },
    ['@comment.todo'] = { fg = colors.fg0, bg = colors.yellow, bold = true, italic = true },
    ['@comment.error'] = { link = 'Error' },
    ['@none'] = { bg = 'NONE', fg = 'NONE' },
    ['@preproc'] = { fg = colors.cyan },
    ['@define'] = { fg = colors.cyan },
    ['@operator'] = { fg = colors.yellow },
    ['@punctuation.delimiter'] = { fg = colors.fg1 },
    ['@punctuation.bracket'] = { fg = colors.fg1 },
    ['@punctuation.special'] = { fg = colors.fg1 },
    ['@string'] = { fg = colors.green },
    ['@string.regex'] = { fg = colors.green },
    ['@string.escape'] = { fg = colors.orange },
    ['@string.special'] = { fg = colors.orange },
    ['@character'] = { fg = colors.purple },
    ['@character.special'] = { fg = colors.orange },
    ['@boolean'] = { fg = colors.purple },
    ['@number'] = { fg = colors.purple },
    ['@float'] = { fg = colors.purple },
    ['@function'] = { fg = colors.accent, bold = true },
    ['@function.builtin'] = { fg = colors.blue },
    ['@function.call'] = { fg = colors.accent },
    ['@function.macro'] = { fg = colors.cyan },
    ['@method'] = { fg = colors.accent, bold = true },
    ['@method.call'] = { fg = colors.accent },
    ['@constructor'] = { fg = colors.blue, bold = true },
    ['@parameter'] = { fg = colors.fg1 },
    ['@keyword'] = { fg = colors.red },
    ['@keyword.conditional'] = { fg = colors.red },
    ['@keyword.debug'] = { fg = colors.red },
    ['@keyword.directive'] = { fg = colors.cyan },
    ['@keyword.directive.define'] = { fg = colors.cyan },
    ['@keyword.exception'] = { fg = colors.red },
    ['@keyword.function'] = { fg = colors.red },
    ['@keyword.import'] = { fg = colors.cyan },
    ['@keyword.operator'] = { fg = colors.yellow },
    ['@keyword.repeat'] = { fg = colors.red },
    ['@keyword.return'] = { fg = colors.red },
    ['@keyword.storage'] = { fg = colors.orange },
    ['@conditional'] = { fg = colors.red },
    ['@repeat'] = { fg = colors.red },
    ['@debug'] = { fg = colors.red },
    ['@label'] = { fg = colors.red },
    ['@include'] = { fg = colors.cyan },
    ['@exception'] = { fg = colors.red },
    ['@type'] = { fg = colors.yellow },
    ['@type.builtin'] = { fg = colors.yellow },
    ['@type.definition'] = { fg = colors.yellow },
    ['@type.qualifier'] = { fg = colors.yellow },
    ['@storageclass'] = { fg = colors.orange },
    ['@attribute'] = { fg = colors.cyan },
    ['@field'] = { fg = colors.fg1 },
    ['@property'] = { fg = colors.fg1 },
    ['@variable'] = { fg = colors.fg1 },
    ['@variable.builtin'] = { fg = colors.blue },
    ['@variable.member'] = { fg = colors.blue },
    ['@constant'] = { fg = colors.purple },
    ['@constant.builtin'] = { fg = colors.blue },
    ['@constant.macro'] = { fg = colors.cyan },
    ['@namespace'] = { fg = colors.fg1 },
    ['@symbol'] = { fg = colors.fg1 },
    ['@text'] = { fg = colors.fg0 },
    ['@text.strong'] = { bold = true, fg = colors.fg0 },
    ['@text.emphasis'] = { italic = true, fg = colors.fg0 },
    ['@text.underline'] = { underline = true, fg = colors.fg0 },
    ['@text.strike'] = { strikethrough = true, fg = colors.fg0 },
    ['@text.title'] = { link = 'Title' },
    ['@text.literal'] = { link = 'String' },
    ['@text.uri'] = { link = 'Underlined' },
    ['@text.math'] = { link = 'Special' },
    ['@text.environment'] = { link = 'Macro' },
    ['@text.environment.name'] = { link = 'Type' },
    ['@text.reference'] = { link = 'Constant' },
    ['@text.note.comment'] = { fg = colors.blue, bold = true },
    ['@text.warning'] = { link = 'WarningMsg' },
    ['@text.danger'] = { link = 'ErrorMsg' },
    ['@text.danger.comment'] = { fg = colors.fg0, bg = colors.red, bold = true },
    ['@text.diff.add'] = { link = 'diffAdded' },
    ['@text.diff.delete'] = { link = 'diffRemoved' },
    ['@tag'] = { fg = colors.blue },
    ['@tag.attribute'] = { fg = colors.fg1 },
    ['@tag.delimiter'] = { fg = colors.fg1 },
    ['@punctuation'] = { fg = colors.fg1 },
    ['@macro'] = { fg = colors.cyan },
    ['@structure'] = { fg = colors.cyan },
    ['@lsp.type.class'] = { link = '@constructor' },
    ['@lsp.type.comment'] = {}, -- do not overwrite comments
    ['@lsp.type.decorator'] = { link = '@parameter' },
    ['@lsp.type.enum'] = { link = '@type' },
    ['@lsp.type.enumMember'] = { link = '@constant' },
    ['@lsp.type.function'] = { link = '@function' },
    ['@lsp.type.interface'] = { link = '@keyword' },
    ['@lsp.type.macro'] = { link = '@macro' },
    ['@lsp.type.method'] = { link = '@method' },
    ['@lsp.type.namespace'] = { link = '@namespace' },
    ['@lsp.type.parameter'] = { link = '@parameter' },
    ['@lsp.type.property'] = { link = '@property' },
    ['@lsp.type.struct'] = { link = '@constructor' },
    ['@lsp.type.type'] = { link = '@type' },
    ['@lsp.type.typeParameter'] = { link = '@type.definition' },
    ['@lsp.type.variable'] = { link = '@variable' },
  }

  return groups
end

local groups = setcolor()

-- add highlights
for group, settings in pairs(groups) do
  vim.api.nvim_set_hl(0, group, settings)
end
