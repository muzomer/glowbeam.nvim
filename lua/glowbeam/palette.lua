local M = {}

local red = "#ff6c6b"
local orange = "#da8548"
local yellow = "#ecbe7b"
local green = "#98be65"
local teal = "#4db5bd"
local blue = "#51afef"
local magenta = "#c678dd"
local pink = "#fdb5db"
local violet = "#a9a1e1"
local white = "#bbc2cf"
local black = "#141414"

local base1 = "#1c1f24"
local base3 = "#23272e"
local base4 = "#3f444a"
local base5 = "#5b6268"
local base6 = "#73797e"
local base7 = "#9ca0a4"
local base8 = "#b1b1b1"
local base9 = "#e6e6e6"

local fold = "#f8e71c"
local accent = blue
local special = {
	red = "#ff6c6b",
	yellow = "#f2c68a",
	green = "#95e454",
	blue = "#87afff",
}

local git = {
	add = { bg = "#244032", fg = "#56d364" },
	change = { bg = "#341a00", fg = "#e3b341" },
	text = { fg = "#341a00", bg = "#fff987" },
	delete = { bg = "#462c32", fg = "#f85149" },
}

local diag = {
	error = red,
	warning = orange,
	info = blue,
	hint = violet,
	success = green,
}

---@type Colors
local govuk = {
	black = "#0b0c0c",
	blue = "#1d70b8",
	bright_purple = "#912b88",
	brown = "#b58840",
	dark_blue = "#003078",
	dark_grey = "#505a5f",
	green = "#00703c",
	light_blue = "#5694ca",
	light_green = "#85994b",
	light_grey = "#f3f2f1",
	light_pink = "#f499be",
	light_purple = "#6f72af",
	light_red = "#e28f84",
	light_yellow = "#fff4c2",
	mid_grey = "#b1b4b6",
	orange = "#f47738",
	pink = "#d53880",
	purple = "#4c2c92",
	red = "#d4351c",
	turquoise = "#28a197",
	white = "#ffffff",
	yellow = "#ffdd00",
}

---@type LowContrastColors
local lowcontrast = {
	dark_green = "#293f1a",
	dark_red = "#6a3532",
	dark_yellow = "#6a5a2a",
	darker_green = "#1d2d13",
	darker_grey = "#2a2c2e",
	darker_red = "#452f2f",
	darker_yellow = "#35311b",
	darkest_grey = "#1d1f1f",
}

local colors = {
	background = govuk.black,
	foreground = govuk.light_grey,
	interface = {
		border = lowcontrast.darker_grey,
		border_highlight = govuk.dark_grey,
		current = lowcontrast.dark_yellow,
		cursorline = lowcontrast.darkest_grey,
		match = govuk.light_blue,
		search = lowcontrast.darker_yellow,
		selection = lowcontrast.darker_yellow,
		selection_highlight = lowcontrast.dark_yellow,
	},
	intent = {
		disabled = govuk.dark_grey,
		error = govuk.red,
		hint = govuk.light_blue,
		info = govuk.light_blue,
		progress = govuk.yellow,
		success = govuk.light_green,
		warning = govuk.orange,
	},
	diff = {
		add = { fg = govuk.light_green, bg = lowcontrast.darker_green },
		add_highlight = { fg = govuk.light_green, bg = lowcontrast.dark_green },
		delete = { fg = govuk.light_red, bg = lowcontrast.darker_red },
		delete_highlight = { fg = govuk.light_red, bg = lowcontrast.dark_red },
		modify = { fg = govuk.light_yellow, bg = lowcontrast.darker_yellow },
		modify_highlight = { fg = govuk.light_yellow, bg = lowcontrast.dark_yellow },
	},
	syntax = {
		boolean = govuk.light_purple,
		builtin = govuk.blue,
		comment = govuk.dark_grey,
		constant = govuk.light_purple,
		decorator = govuk.mid_grey,
		delimiter = govuk.dark_grey,
		func = govuk.light_blue,
		key = govuk.light_blue,
		keyword = govuk.pink,
		number = govuk.light_purple,
		operator = govuk.pink,
		path = govuk.green,
		property = govuk.mid_grey,
		punctuation = govuk.mid_grey,
		regexp = govuk.brown,
		ret = govuk.bright_purple,
		string = govuk.light_green,
		tag = govuk.light_blue,
		type = govuk.turquoise,
		variable = govuk.light_grey,
	},
	markup = {
		code = govuk.light_green,
		heading = govuk.light_purple,
		href = govuk.blue,
		link = govuk.light_blue,
	},
}

M.colors = colors
M.highlights = {
	Normal = { fg = white, bg = black }, -- normal text
	Comment = { fg = base6, italic = true },
	ColorColumn = { bg = base1 }, -- used for the columns set with 'colorcolumn'
	Conceal = { bg = base4 }, -- placeholder characters substituted for concealed text (see 'conceallevel')
	Cursor = { bg = special.green }, -- character under the cursor
	lCursor = { link = "Cursor" }, -- the character under the cursor when |language-mapping| is used (see 'guicursor')
	CursorIM = { bg = special.blue }, -- like Cursor, but used when in IME mode |CursorIM|
	CursorRM = { bg = special.red }, -- like Cursor, but used when in RME mode
	CursorVM = { bg = special.yellow }, -- like Cursor, but used when in RME mode
	Directory = { fg = blue, bold = true }, -- directory names (and other special names in listings)
	EndOfBuffer = { fg = base4 }, -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
	-- TermCursor   = {}, -- cursor in a focused terminal
	-- TermCursorNC = {}, -- cursor in an unfocused terminal
	VertSplit = { fg = base4 }, -- the column separating vertically split windows
	Folded = { fg = fold }, -- line used for closed folds
	FoldColumn = { fg = fold }, -- 'foldcolumn'
	SignColumn = { bg = black }, -- column where |signs| are displayed
	IncSearch = { bg = "#3B3702", sp = yellow }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
	-- Substitute   = {}, -- |:substitute| replacement text highlighting
	LineNr = { fg = base4 }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
	CursorLineNr = { fg = accent }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
	MatchParen = { fg = accent }, -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
	NormalNC = { link = "Normal" }, -- normal text in non-current windows
	Pmenu = { bg = base1 }, -- Popup menu: normal item.
	PmenuSel = { fg = base1, bg = accent }, -- Popup menu: selected item.
	PmenuSbar = { bg = base4 }, -- Popup menu: scrollbar.
	PmenuThumb = { bg = base6 }, -- Popup menu: Thumb of the scrollbar.
	Question = { fg = green }, -- |hit-enter| prompt and yes/no questions
	Search = { bg = "#3B3702" }, -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
	SpecialKey = { fg = base5, bold = true }, -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace| SpellBad  Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.  SpellCap  Word that should start with a capital. |spell| Combined with the highlighting used otherwise.  SpellLocal  Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
	SpellBad = { undercurl = true, sp = red }, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
	SpellCap = { undercurl = true, sp = yellow }, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
	SpellRare = { undercurl = true, sp = magenta }, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
	StatusLine = { fg = base8 }, -- status line of current window
	StatusLineNC = { link = "StatusLine", fg = base6 }, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
	TabLine = { fg = base7, bg = base3 }, -- tab pages line, not active tab page label
	TabLineFill = { bg = base1 }, -- tab pages line, where there are no labels
	TabLineSel = { fg = accent }, -- tab pages line, active tab page label
	Title = { fg = yellow, bold = true }, -- titles for output from ":set all", ":autocmd" etc.
	Visual = { bg = "#252A31" }, -- Visual mode selection
	VisualNOS = { link = "Visual", fg = red }, -- Visual mode selection when vim is "Not Owning the Selection".
	CursorLine = { link = "Visual" }, -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if foreground (ctermfg OR guifg) is not set.
	CursorColumn = { link = "CursorLine" }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
	QuickFixLine = { link = "Visual" }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
	Whitespace = { fg = base3 }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
	NonText = { fg = base6 }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
	-- WildMenu     = {}, -- current match in 'wildmenu' completion
	MoreMsg = { fg = green }, -- |more-prompt|
	ModeMsg = { link = "Normal" }, -- 'showmode' message (e.g., "-- INSERT -- ")
	MsgArea = { link = "Normal" }, -- Area for messages and cmdline
	MsgSeparator = { link = "Normal" }, -- Separator for scrolled messages, `msgsep` flag of 'display'
	DiffAdd = { bg = git.add.bg }, -- diff mode: Added line |diff.txt|
	DiffChange = { bg = git.change.bg, fg = git.change.fg }, -- diff mode: Changed line |diff.txt|
	DiffDelete = { bg = git.delete.bg, fg = git.delete.fg }, -- diff mode: Deleted line |diff.txt|
	DiffText = { bg = git.text.bg, fg = git.text.fg }, -- diff mode: Changed text within a changed line |diff.txt|

	GitGutterAdd = { fg = green },
	GitGutterChange = { fg = yellow },
	GitGutterDelete = { fg = red },
	GitGutterChangeDelete = { fg = orange },

	-- These groups are not listed as default vim groups,
	-- but they are defacto standard group names for syntax highlighting.
	-- commented out groups should chain up to their "preferred" group by
	-- default,
	-- Uncomment and edit if you want more specific syntax highlighting.
	Constant = { fg = green }, -- (preferred) any constant
	String = { fg = green }, --   a string constant: "this is a string"
	Number = { fg = orange }, --   a number constant: 234, 0xff
	Float = { link = "Number" }, --    a floating point constant: 2.3e10
	Character = { fg = pink }, --  a character constant: 'c', ' '
	Boolean = { fg = pink }, --  a boolean constant: TRUE, false
	Identifier = { link = "Normal" }, -- (preferred) any variable name
	Function = { fg = blue }, -- function name (also: methods for classes)
	Statement = { fg = blue }, -- (preferred) any statement
	Conditional = { link = "Statement", italic = true }, --  if, then, else, endif, switch, etc.
	Repeat = { link = "Conditional" }, --   for, do, while, etc.
	Label = { link = "Conditional" }, --    case, default, etc.
	Operator = { fg = blue }, -- "sizeof", "+", "*", etc.
	Keyword = { fg = magenta, italic = true }, --  any other keyword
	Exception = { fg = red, italic = true }, --  try, catch, throw
	PreProc = { fg = magenta }, -- (preferred) generic Preprocessor
	Include = { fg = red, italic = true }, --  preprocessor #include
	Define = { fg = magenta }, --   preprocessor #define
	Macro = { fg = teal, italic = true }, --    same as Define
	PreCondit = { fg = magenta, bold = true }, --  preprocessor #if, #else, #endif, etc.
	Type = { fg = yellow }, -- (preferred) int, long, char, etc.
	StorageClass = { fg = blue }, -- static, register, volatile, etc.
	Structure = { fg = blue }, --  struct, union, enum, etc.
	Typedef = { fg = yellow }, --  A typedef
	Special = { fg = orange }, -- (preferred) any special symbol
	SpecialChar = { fg = yellow, bold = true }, --  special character in a constant
	Tag = { fg = pink }, --    you can use CTRL-] on this
	Delimiter = { link = "Normal" }, --  character that needs attention
	SpecialComment = { fg = magenta, italic = true }, -- special things inside a comment
	Underlined = { underline = true }, -- (preferred) text that stands out, HTML links
	Bold = { bold = true },
	Italic = { italic = true },
	-- ("Ignore", below, may be invisible...)
	-- Ignore         = {}, -- (preferred) left blank, hidden  |hl-Ignore|
	Error = { fg = diag.error }, -- (preferred) any erroneous construct
	Warning = { fg = diag.warning }, -- (preferred) any warning construct
	Info = { fg = diag.info }, -- (preferred) any info construct
	Hint = { fg = diag.hint }, -- (preferred) any hint construct
	Success = { fg = diag.success }, -- (preferred) any successful construct
	Ignore = { fg = base9 },
	Muted = { fg = base7, italic = true },
	Debug = { fg = green, italic = true }, --    debugging statements
	ErrorMsg = { link = "Error" }, -- error messages on the command line
	WarningMsg = { link = "Warning" }, -- warning messages
	InfoMsg = { link = "Info" }, -- info messages
	HintMsg = { link = "Hint" }, -- hint messages
	SuccessMsg = { link = "Success" }, -- success messages
	Todo = { fg = yellow, underline = true }, -- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX
	-- These groups are for the native LSP client. Some other LSP clients may use
	-- these groups, or use their own. Consult your LSP client's documentation.
	LspDiagnosticsDefaultError = { link = "Error" }, -- used for "Error" diagnostic text
	LspDiagnosticsDefaultWarning = { link = "Warning" }, -- used for "Warning" diagnostic text
	LspDiagnosticsDefaultInformation = { link = "Info" }, -- used for "Information" diagnostic text
	LspDiagnosticsDefaultHint = { link = "Hint" }, -- used for "Hint" diagnostic text
	LspReferenceText = { fg = black, bg = red }, -- used for highlighting "text" references
	LspReferenceRead = { fg = black, bg = red }, -- used for highlighting "read" references
	LspReferenceWrite = { fg = black, bg = red }, -- used for highlighting "write" references
	LspDiagnosticsUnderline = { link = "Underlined" },
	LspDiagnosticsUnderlineError = { link = "Underlined", sp = diag.error },
	LspDiagnosticsUnderlineInfo = { link = "Underlined", sp = diag.info },
	LspDiagnosticsUnderlineWarning = { link = "Underlined", sp = diag.warning },
	LspDiagnosticsUnderlineHint = { link = "Underlined", sp = diag.hint },
	markdownH1 = { fg = red, bold = true },
	markdownH2 = { fg = orange, bold = true },
	markdownH3 = { fg = yellow, bold = true },
	markdownH4 = { fg = green, bold = true },
	markdownH5 = { fg = blue, bold = true },
	markdownH6 = { fg = magenta, bold = true },
	htmlH1 = { link = "markdownH1" },
	htmlH2 = { link = "markdownH2" },
	htmlH3 = { link = "markdownH3" },
	htmlH4 = { link = "markdownH4" },
	htmlH5 = { link = "markdownH5" },
	htmlH6 = { link = "markdownH6" },
	-- These groups are for the neovim tree-sitter highlights.
	-- As of writing, tree-sitter support is a WIP, group names may change.
	-- By default, most of these groups link to an appropriate Vim group,
	-- TSError -> Error for example, so you do not have to define these unless
	-- you explicitly want to support Treesitter's improved syntax awareness.
	-- Treesitter
	TSError = { link = "Error" }, -- For syntax/parser errors.
	TSPunctDelimiter = { link = "Delimiter" }, -- For delimiters ie: `.`
	TSPunctBracket = { link = "Delimiter" }, -- For brackets and parens.
	TSPunctSpecial = { link = "Delimiter" }, -- For special punctutation that does not fall in the catagories before.
	TSConstant = { link = "Constant" }, -- For constants
	TSConstBuiltin = { link = "TSConstant", bold = true }, -- For constant that are built in the language: `nil` in Lua.
	TSConstMacro = { link = "TSConstant", bold = true }, -- For constants that are defined by macros: `NULL` in C.
	TSString = { link = "String" }, -- For strings.
	TSStringRegex = { fg = colors.syntax.regexp }, -- For regexes.
	TSStringEscape = { fg = colors.syntax.special, bold = true }, -- For escape characters within a string.
	TSCharacter = { fg = colors.syntax.string, bold = true }, -- For characters.
	TSNumber = { link = "Number" }, -- For integers.
	TSBoolean = { link = "Number" }, -- For booleans.
	TSFloat = { link = "Number" }, -- For floats.
	TSFunction = { link = "Function" }, -- For function (calls and definitions).
	TSFuncBuiltin = { link = "TSFunction", bold = true }, -- For builtin functions: `table.insert` in Lua.
	TSFuncMacro = { link = "TSFunction", bold = true }, -- For macro defined fuctions (calls and definitions): each `macro_rules` in Rust.
	TSParameter = { link = "Identifier" }, -- For parameters of a function.
	TSParameterReference = { link = "TSParameter", bold = true }, -- For references to parameters of a function.
	TSMethod = { link = "TSFunction" }, -- For method calls and definitions.
	TSField = { link = "TSProperty" }, -- For fields.
	TSProperty = { link = "TSFunction" }, -- Same as `TSField`.
	TSConstructor = { link = "TSFunction", bold = true }, -- For constructor calls and definitions: `{}` in Lua, and Java constructors.
	TSConditional = { link = "TSKeyword" }, -- For keywords related to conditionnals.
	TSRepeat = { link = "TSKeyword" }, -- For keywords related to loops.
	TSLabel = { link = "TSKeyword" }, -- For labels: `label:` in C and `:label:` in Lua.
	TSKeyword = { link = "Statement" }, -- For keywords that don't fall in previous categories.
	TSKeywordFunction = { link = "TSKeyword", bold = true }, -- For keywords used to define a fuction.
	TSKeywordOperator = { link = "TSKeyword" },
	TSOperator = { link = "TSKeyword" }, -- For any operator: `+`, but also `->` and `*` in C.
	TSException = { link = "TSKeyword" }, -- For exception related keywords.
	TSType = { link = "Type" }, -- For types.
	TSTypeBuiltin = { link = "TSType", bold = true }, -- For builtin types (you guessed it, right ?).
	TSNamespace = { link = "TSKeyword" }, -- For identifiers referring to modules and namespaces.
	TSInclude = { link = "TSKeyword" }, -- For includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.
	TSAnnotation = { link = "TSKeyword" }, -- For C++/Dart attributes, annotations that can be attached to the code to denote some kind of meta information.
	TSText = { link = "Normal" }, -- For strings considered text in a markup language.
	TSStrong = { link = "Bold" }, -- For text to be represented with strong.
	TSEmphasis = { link = "Italic" }, -- For text to be represented with emphasis.
	TSUnderline = { link = "Underlined" }, -- For text to be represented with an underline.
	TSTitle = { link = "Title" }, -- Text that is part of a title.
	TSLiteral = { link = "String" }, -- Literal text.
	TSURI = { link = "Underlined", fg = blue }, -- Any URI like a link or email.
	TSVariable = { link = "Identifier" }, -- Any variable name that does not have another highlight.
	TSVariableBuiltin = { link = "TSVariable", bold = true }, -- Variable names that are defined by the languages, like `this` or `self`.
	TSTag = { link = "TSKeyword" },

	TabLineSeparator = { fg = black, bg = base1 },
	TabLineError = { link = "Error" },
	TabLineWarning = { link = "Warning" },
	TabLineInfo = { link = "Info" },
	TabLineHint = { link = "Hint" },
	TabLineSuccess = { link = "Success" },

	WhichKey = { fg = magenta },
	WhichKeySeperator = { fg = green },
	WhichKeyGroup = { fg = blue },
	WhichKeyDesc = { fg = orange },
	WhichKeyFloat = { link = "NormalFloat" },
	WhichKeyBorder = { link = "FloatBorder" },

	BufferLineIndicatorSelected = { fg = blue },
	BufferLineModifiedSelected = { fg = orange },
	BufferLineModified = { fg = yellow },
	BufferLineModifiedVisible = { fg = yellow },
	BufferLineDuplicate = { fg = white, italic = true },
	BufferLineDuplicateSelected = { fg = white, italic = true },
	BufferLineDuplicateVisible = { fg = white, italic = true },
	BufferLineSeparator = { fg = base1 },
	BufferLineSeparatorSelected = { fg = base1 },
	BufferLineSeparatorVisible = { fg = base1 },
	BufferLineBackground = { bg = base1 },
	BufferLineFill = { bg = base1 },
	BufferLineTabSelected = { fg = blue },
	BufferLineTab = { fg = base8 },
	BufferLineTabClose = { fg = red },
	BufferLineCloseButton = { fg = red },
	BufferLineCloseButtonSelected = { fg = red },
	BufferLineCloseButtonVisible = { fg = red },
	BufferLineError = { fg = red },
	BufferLineErrorSelected = { fg = red },
	BufferLineErrorVisible = { fg = red },
	BufferLineWarning = { fg = yellow },
	BufferLineWarningSelected = { fg = yellow },
	BufferLineWarningVisible = { fg = yellow },
	BufferLineInfo = { fg = blue },
	BufferLineInfoSelected = { fg = blue },
	BufferLineInfoVisible = { fg = blue },
	BufferLineHint = { fg = violet },
	BufferLineHintSelected = { fg = violet },
	BufferLineHintVisible = { fg = violet },
	BufferLineDiagnostic = { fg = red },
	BufferLineDiagnosticSelected = { fg = red },
	BufferLineDiagnosticVisible = { fg = red },
	BufferLineDiagnosticError = { fg = red },
	BufferLineDiagnosticErrorSelected = { fg = red },
	BufferLineDiagnosticErrorVisible = { fg = red },
	BufferLineDiagnosticWarning = { fg = yellow },
	BufferLineDiagnosticWarningSelected = { fg = yellow },
	BufferLineDiagnosticWarningVisible = { fg = yellow },
	BufferLineDiagnosticInfo = { fg = blue },
	BufferLineDiagnosticInfoSelected = { fg = blue },
	BufferLineDiagnosticInfoVisible = { fg = blue },
	BufferLineDiagnosticHint = { fg = violet },
	BufferLineDiagnosticHintSelected = { fg = violet },
	BufferLineDiagnosticHintVisible = { fg = violet },

	NeoTreeNormal = { link = "Normal" },
	NeoTreeNormalNC = { link = "NormalNC" },
	NeoTreeVertSplit = { link = "VertSplit" },
	NeoTreeWinSeparator = { link = "VertSplit" },
	NeoTreeEndOfBuffer = { link = "EndOfBuffer" },
	NeoTreeCursorLine = { link = "CursorLine" },
	NeoTreeCursor = { link = "Cursor" },
	NeoTreeIndentMarker = { link = "IndentGuidesOdd" },
	NeoTreeGitModified = { fg = blue },
	NeoTreeGitStaged = { fg = green },
	NeoTreeGitUntracked = { fg = yellow },
	NeoTreeGitUnmerged = { fg = magenta },
	NeoTreeGitDeleted = { fg = red },
	NeoTreeGitIgnored = { fg = base6 },
	NeoTreeRootName = { fg = blue, bold = true },
	NeoTreeFileName = { fg = white },
	NeoTreeDirectoryName = { fg = blue },
	NeoTreeSymlink = { fg = teal },
	NeoTreeSymbolicLink = { link = "NeoTreeSymlink" },
	NeoTreeFileIcon = { fg = white },
	NeoTreeDirectoryIcon = { fg = blue },
	NeoTreeOpenDirectoryIcon = { fg = blue },
	NeoTreeEmptyDirectoryIcon = { fg = blue },
	NeoTreeOpenFolderIcon = { fg = blue },
	NeoTreeClosedFolderIcon = { fg = blue },
	NeoTreeDotfile = { fg = base6 },
	NeoTreeHiddenFile = { fg = base6 },
	NeoTreeIndent = { fg = base4 },
	NeoTreeExpander = { fg = base6 },
	NeoTreeMessage = { fg = white },
	NeoTreeError = { fg = red },
	NeoTreeWarning = { fg = yellow },
	NeoTreeInfo = { fg = blue },
	NeoTreeHint = { fg = violet },
	NeoTreeSuccess = { fg = green },
	NeoTreeTitle = { fg = yellow, bold = true },
	NeoTreeBorder = { link = "FloatBorder" },
	NeoTreeFloatBorder = { link = "FloatBorder" },
	NeoTreeFloatTitle = { link = "NeoTreeTitle" },
	NeoTreeFloatNormal = { link = "NormalFloat" },
	NeoTreeFloatNormalNC = { link = "NormalNC" },
	NeoTreeFloatVertSplit = { link = "VertSplit" },
	NeoTreeFloatWinSeparator = { link = "VertSplit" },
	NeoTreeFloatEndOfBuffer = { link = "EndOfBuffer" },
	NeoTreeFloatCursorLine = { link = "CursorLine" },
	NeoTreeFloatCursor = { link = "Cursor" },
	NeoTreeFloatIndentMarker = { link = "IndentGuidesOdd" },
	NeoTreeFloatGitModified = { fg = blue },
	NeoTreeFloatGitStaged = { fg = green },
	NeoTreeFloatGitUntracked = { fg = yellow },
	NeoTreeFloatGitUnmerged = { fg = magenta },
	NeoTreeFloatGitDeleted = { fg = red },
	NeoTreeFloatGitIgnored = { fg = base6 },
	NeoTreeFloatRootName = { fg = blue, bold = true },
	NeoTreeFloatFileName = { fg = white },
	NeoTreeFloatDirectoryName = { fg = blue },
	NeoTreeFloatSymlink = { fg = teal },
	NeoTreeFloatSymbolicLink = { link = "NeoTreeSymlink" },
	NeoTreeFloatFileIcon = { fg = white },
	NeoTreeFloatDirectoryIcon = { fg = blue },
	NeoTreeFloatOpenDirectoryIcon = { fg = blue },
	NeoTreeFloatEmptyDirectoryIcon = { fg = blue },
	NeoTreeFloatOpenFolderIcon = { fg = blue },
	NeoTreeFloatClosedFolderIcon = { fg = blue },
	NeoTreeFloatDotfile = { fg = base6 },
	NeoTreeFloatHiddenFile = { fg = base6 },
	NeoTreeFloatIndent = { fg = base4 },
	NeoTreeFloatExpander = { fg = base6 },
	NeoTreeFloatMessage = { fg = white },
	NeoTreeFloatError = { fg = red },
	NeoTreeFloatWarning = { fg = yellow },
	NeoTreeFloatInfo = { fg = blue },
	NeoTreeFloatHint = { fg = violet },
	NeoTreeFloatSuccess = { fg = green },
	NeoTreeFloatTitle = { fg = yellow, bold = true },

	QuickScopeCursor = { bold = true, sp = special.green },
	QuickScopePrimary = { bold = true, sp = special.yellow },
	QuickScopeSecondary = { bold = true, sp = special.red },

	IndentGuidesOdd = { bg = "#181A1F" },
	IndentGuidesEven = { bg = "#1E2127" },

	-- Floating and window bar
	FloatBorder = { fg = colors.interface.border },
	NormalFloat = { link = "Normal" }, -- Normal text in floating windows.
	-- NormalFloat                      = { bg = colors.background },
	WinBar = { fg = colors.foreground, bg = colors.background },
	WinBarNc = { fg = colors.foreground, bg = colors.background },
	WinSeparator = { link = "VertSplit" },

	-- Fugitive
	diffAdded = { link = "DiffAdd" },
	diffRemoved = { link = "DiffDelete" },
}

return M
