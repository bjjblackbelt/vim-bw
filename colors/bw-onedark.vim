" bw-onedark.vim
" By Michał Góral
"
" This theme is based on Fogbell by Jared Gorski, which is available
" here: https://github.com/jaredgorski/fogbell
" Also on onedark.vim: https://github.com/joshdick/onedark.vim

scriptencoding utf-8
hi clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name="bw-onedark"

" ==========================
" Highlighting Function
" ==========================
"  >> (inspired by https://github.com/tomasiser/vim-code-dark and https://github.com/chriskempson/base16-vim)
fun! <sid>hi(group, fg, bg, attr)
  if !empty(a:fg)
    exec "hi " . a:group . " guifg=" . a:fg.gui 
  endif
  if !empty(a:bg)
    exec "hi " . a:group . " guibg=" . a:bg.gui 
  endif
  if a:attr != ""
    exec "hi " . a:group . " gui=" . a:attr 
  endif
endfun

" ==========================
" Color Variables
" ==========================

let s:black = {'gui': '#282c34', 'cterm256': '235'}
let s:white = {'gui': '#ABB2BF', 'cterm256': '145'}
let s:light_white = {'gui': '#dbdcdf', 'cterm256': '248'}
let s:gray = {'gui': '#2C323C', 'cterm256': '236'}
let s:medium_gray = {'gui': '#4B5263', 'cterm256': '238'}
let s:dark_gray = {'gui': '#5C6370', 'cterm256': '59'}
let s:bright_white = {'gui': '#ECEFF4', 'cterm256': '252'}
let s:blue = {'gui': '#61AFEF', 'cterm256': '39'}
let s:green = {'gui': '#98C379', 'cterm256': '114'}
let s:gold = {'gui': '#E5C07B', 'cterm256': '180'}
let s:red = {'gui': '#E06C75', 'cterm256': '204'}
let s:purple = {'gui': '#C678DD', 'cterm256': '170'}
let s:none = {'gui': 'NONE', 'cterm256': 'NONE'}

" ==========================
" Definitions
" ==========================
"    <sid>hi(GROUP, FOREGROUND, BACKGROUND, ATTRIBUTE)

" Editor
call <sid>hi('ColorColumn', s:none, s:gray, 'none')
call <sid>hi('Cursor', s:black, s:white, 'none')
call <sid>hi('CursorColumn', s:none, s:gray, 'none')
call <sid>hi('CursorLine', s:none, s:gray, 'none')
call <sid>hi('CursorLineNr', s:white, s:gray, 'bold')
call <sid>hi('Directory', s:white, s:black, 'none')
call <sid>hi('FoldColumn', s:none, s:black, 'none')
call <sid>hi('Folded', s:dark_gray, s:none, 'none')
call <sid>hi('IncSearch', s:black, s:gold, 'none')
call <sid>hi('LineNr', s:dark_gray, s:black, 'none')
call <sid>hi('MatchParen', s:none, s:medium_gray, 'bold')
call <sid>hi('Normal', s:white, s:black, 'none')
call <sid>hi('Pmenu', s:white, s:medium_gray, 'none')
call <sid>hi('PmenuSel', s:none, s:gray, 'none')
call <sid>hi('Search', s:black, s:gold, 'none')
call <sid>hi('SignColumn', s:none, s:black, 'bold')
call <sid>hi('StatusLine', s:black, s:white, 'none')
call <sid>hi('StatusLineNC', s:dark_gray, s:black, 'none')
call <sid>hi('VertSplit', s:dark_gray, s:none, 'none')
call <sid>hi('Visual', s:none, s:medium_gray, 'none')

" General
call <sid>hi('Boolean', s:white, s:none, 'none')
call <sid>hi('Character', s:bright_white, s:none, 'none')
call <sid>hi('Comment', s:dark_gray, s:none, 'italic')
call <sid>hi('Conceal', s:white, s:none, 'none')
call <sid>hi('Conditional', s:white, s:none, 'none')
call <sid>hi('Constant', s:white, s:none, 'none')
call <sid>hi('Define', s:white, s:none, 'none')
call <sid>hi('DiffAdd', s:black, s:green, 'none')
call <sid>hi('DiffChange', s:black, s:gold, 'none')
call <sid>hi('DiffDelete', s:white, s:red, 'none')
call <sid>hi('DiffText', s:gray, s:blue, 'none')
call <sid>hi('ErrorMsg', s:black, s:red, 'none')
call <sid>hi('Float', s:white, s:none, 'none')
call <sid>hi('Function', s:white, s:none, 'none')
call <sid>hi('Identifier', s:white, s:none, 'none')
call <sid>hi('Keyword', s:white, s:none, 'none')
call <sid>hi('Label', s:white, s:none, 'none')
call <sid>hi('NonText', s:dark_gray, s:none, 'none')
call <sid>hi('Number', s:white, s:none, 'none')
call <sid>hi('Operator', s:white, s:none, 'none')
call <sid>hi('PreProc', s:white, s:none, 'none')
call <sid>hi('QuickFixLine', s:black, s:gold, 'none')
call <sid>hi('Special', s:white, s:none, 'none')
call <sid>hi('SpecialKey', s:white, s:none, 'none')
call <sid>hi('SpellBad', s:red, s:none, 'italic,undercurl')
call <sid>hi('SpellCap', s:white, s:none, 'italic,undercurl')
call <sid>hi('SpellLocal', s:white, s:none, 'undercurl')
call <sid>hi('Statement', s:white, s:none, 'bold')
call <sid>hi('StorageClass', s:white, s:none, 'none')
call <sid>hi('String', s:bright_white, s:none, 'none')
call <sid>hi('Tag', s:white, s:none, 'none')
call <sid>hi('Title', s:bright_white, s:none, 'bold')
call <sid>hi('Todo', s:dark_gray, s:none, 'inverse,bold')
call <sid>hi('Type', s:none, s:none, 'none')
call <sid>hi('Underlined', s:none, s:none, 'underline')
call <sid>hi('WarningMsg', s:black, s:red, 'none')
call <sid>hi('WildMenu', s:black, s:blue, 'none')

call <sid>hi('DiffAdd', s:green, s:none, 'underline')
call <sid>hi('DiffChange', s:gold, s:none, 'underline')
call <sid>hi('DiffDelete', s:red, s:none, 'underline')
call <sid>hi('DiffText', s:blue, s:none, 'underline')

" Neovim Treesitter
call <sid>hi('TSError', s:red, s:none, 'none')
call <sid>hi('TSComment', s:dark_gray, s:none, 'italic')
call <sid>hi('TSPunctDelimiter', s:white, s:none, 'none')
call <sid>hi('TSPunctBracket', s:white, s:none, 'none')
call <sid>hi('TSPunctSpecial', s:white, s:none, 'none')

call <sid>hi('TSConstant', s:white, s:none, 'none')
call <sid>hi('TSConstBuiltin', s:white, s:none, 'none')
call <sid>hi('TSConstMacro', s:white, s:none, 'none')
call <sid>hi('TSStringRegex', s:bright_white, s:none, 'none')
call <sid>hi('TSString', s:bright_white, s:none, 'none')
call <sid>hi('TSStringEscape', s:white, s:none, 'none')
call <sid>hi('TSCharacter', s:bright_white, s:none, 'none')
call <sid>hi('TSNumber', s:white, s:none, 'none')
call <sid>hi('TSBoolean', s:white, s:none, 'none')
call <sid>hi('TSFloat', s:white, s:none, 'none')
call <sid>hi('TSAnnotation', s:white, s:none, 'none')
call <sid>hi('TSAttribute', s:white, s:none, 'none')
call <sid>hi('TSNamespace', s:white, s:none, 'none')

call <sid>hi('TSFuncBuiltin', s:white, s:none, 'none')
call <sid>hi('TSFunction', s:white, s:none, 'none')
call <sid>hi('TSFuncMacro', s:white, s:none, 'none')
call <sid>hi('TSParameter', s:white, s:none, 'none')
call <sid>hi('TSParameterReference', s:white, s:none, 'none')
call <sid>hi('TSMethod', s:white, s:none, 'none')
call <sid>hi('TSField', s:white, s:none, 'none')
call <sid>hi('TSProperty', s:white, s:none, 'none')
call <sid>hi('TSConstructor', s:white, s:none, 'none')

call <sid>hi('TSConditional', s:white, s:none, 'bold')
call <sid>hi('TSRepeat', s:white, s:none, 'bold')
call <sid>hi('TSLabel', s:white, s:none, 'none')
call <sid>hi('TSKeyword', s:white, s:none, 'bold')
call <sid>hi('TSKeywordFunction', s:white, s:none, 'bold')
call <sid>hi('TSKeywordOperator', s:white, s:none, 'none')
call <sid>hi('TSOperator', s:white, s:none, 'none')
call <sid>hi('TSException', s:white, s:none, 'none')
call <sid>hi('TSType', s:white, s:none, 'none')
call <sid>hi('TSTypeBuiltin', s:white, s:none, 'none')
call <sid>hi('TSStructure', s:white, s:none, 'none')
call <sid>hi('TSInclude', s:white, s:none, 'none')

call <sid>hi('TSVariable', s:white, s:none, 'none')
call <sid>hi('TSVariableBuiltin', s:white, s:none, 'none')

call <sid>hi('TSText', s:white, s:none, 'none')
call <sid>hi('TSStrong', s:white, s:none, 'bold')
call <sid>hi('TSEmphasis', s:white, s:none, 'italic')
call <sid>hi('TSUnderline', s:white, s:none, 'underline')
call <sid>hi('TSTitle', s:bright_white, s:none, 'none')
call <sid>hi('TSLiteral', s:white, s:none, 'none')
call <sid>hi('TSURI', s:blue, s:none, 'none')

call <sid>hi('TSTag', s:white, s:none, 'none')
call <sid>hi('TSTagDelimiter', s:white, s:none, 'none')

" ------------
" Languages
" ------------

" AsciiDoc
call <sid>hi('asciidocAttributeEntry', s:dark_gray, s:none, 'none')
call <sid>hi('asciidocAttributeRef', s:dark_gray, s:none, 'none')
call <sid>hi('asciidocListingBlock', s:bright_white, s:none, 'none')
call <sid>hi('asciidocLiteralBlock', s:bright_white, s:none, 'none')
call <sid>hi('asciidocMacro', s:bright_white, s:none, 'none')
call <sid>hi('asciidocMacroAttributes', s:bright_white, s:none, 'none')
call <sid>hi('asciidocPassthroughBlock', s:bright_white, s:none, 'none')
call <sid>hi('asciidocQuotedBold', s:white, s:none, 'bold')
call <sid>hi('asciidocQuotedEmphasized', s:white, s:none, 'italic')
call <sid>hi('asciidocQuotedMonospaced2', s:bright_white, s:none, 'none')
call <sid>hi('asciidocQuotedUnconstrainedBold', s:white, s:none, 'bold')
call <sid>hi('asciidocQuotedUnconstrainedEmphasized', s:white, s:none, 'italic')
call <sid>hi('asciidocRefMacro', s:bright_white, s:none, 'none')
call <sid>hi('asciidocTableDelimiter', s:dark_gray, s:none, 'none')
call <sid>hi('asciidocTablePrefix', s:dark_gray, s:none, 'none')
call <sid>hi('asciidocURL', s:white, s:none, 'underline')

" Asciidoctor
call <sid>hi('asciidoctorAnchor', s:blue, s:none, 'underline')
call <sid>hi('asciidoctorBlock', s:medium_gray, s:none, 'none')
call <sid>hi('asciidoctorBlockOptions', s:dark_gray, s:none, 'none')
call <sid>hi('asciidoctorBold', s:white, s:none, 'bold')
call <sid>hi('asciidoctorCode', s:light_white, s:none, 'none')
call <sid>hi('asciidoctorFile', s:bright_white, s:none, 'none')
call <sid>hi('asciidoctorItalic', s:white, s:none, 'italic')
call <sid>hi('asciidoctorListContinuation', s:medium_gray, s:none, 'none')
call <sid>hi('asciidoctorListMarker', s:bright_white, s:none, 'none')
call <sid>hi('asciidoctorLiteralBlock', s:bright_white, s:none, 'none')
call <sid>hi('asciidoctorOption', s:dark_gray, s:none, 'none')
call <sid>hi('asciidoctorSourceBlock', s:light_white, s:none, 'none')
call <sid>hi('asciidoctorUrlDescription', s:white, s:none, 'none')

" C
call <sid>hi('cConditional', s:white, s:none, 'bold')
call <sid>hi('cConstant', s:white, s:none, 'none')
call <sid>hi('cFormat', s:white, s:none, 'none')
call <sid>hi('cMulti', s:white, s:none, 'none')
call <sid>hi('cNumbers', s:white, s:none, 'none')
call <sid>hi('cOperator', s:white, s:none, 'none')
call <sid>hi('cSpecial', s:white, s:none, 'none')
call <sid>hi('cSpecialCharacter', s:white, s:none, 'none')
call <sid>hi('cStatement', s:white, s:none, 'bold')
call <sid>hi('cStorageClass', s:white, s:none, 'none')
call <sid>hi('cString', s:bright_white, s:none, 'none')
call <sid>hi('cStructure', s:white, s:none, 'bold')
call <sid>hi('cType', s:white, s:none, 'none')

" C++
call <sid>hi('cppConditional', s:white, s:none, 'bold')
call <sid>hi('cppConstant', s:white, s:none, 'none')
call <sid>hi('cppFormat', s:white, s:none, 'none')
call <sid>hi('cppMulti', s:white, s:none, 'none')
call <sid>hi('cppNumbers', s:white, s:none, 'none')
call <sid>hi('cppOperator', s:white, s:none, 'none')
call <sid>hi('cppSpecial', s:white, s:none, 'none')
call <sid>hi('cppSpecialCharacter', s:white, s:none, 'none')
call <sid>hi('cppStatement', s:white, s:none, 'bold')
call <sid>hi('cppStorageClass', s:white, s:none, 'none')
call <sid>hi('cppString', s:bright_white, s:none, 'none')
call <sid>hi('cppStructure', s:white, s:none, 'bold')
call <sid>hi('cppType', s:white, s:none, 'none')

" CSS
call <sid>hi('cssTagName', s:white, s:none, 'bold')
call <sid>hi('cssClassName', s:white, s:none, 'bold')
call <sid>hi('cssAtRule', s:white, s:none, 'bold')
call <sid>hi('cssColor', s:bright_white, s:none, 'none')

" diff
call <sid>hi('diffFile', s:white, s:none, 'bold')
call <sid>hi('diffAdded', s:green, s:none, 'none')
call <sid>hi('diffRemoved', s:red, s:none, 'none')

" HTML
call <sid>hi('htmlArg', s:white, s:none, 'none')
call <sid>hi('htmlEndTag', s:white, s:none, 'none')
call <sid>hi('htmlSpecialChar', s:white, s:none, 'none')
call <sid>hi('htmlSpecialTagName', s:white, s:none, 'none')
call <sid>hi('htmlTag', s:white, s:none, 'none')
call <sid>hi('htmlTagName', s:white, s:none, 'none')
call <sid>hi('htmlItalic', s:white, s:none, 'italic')
call <sid>hi('htmlBold', s:white, s:none, 'bold')

" Ledger
call <sid>hi('ledgerAmount', s:white, s:none, 'italic')
call <sid>hi('ledgerPostingMetadata', s:bright_white, s:none, 'none')
call <sid>hi('ledgerTag', s:dark_gray, s:none, 'none')
call <sid>hi('ledgerTags', s:dark_gray, s:none, 'none')
call <sid>hi('ledgerTransaction', s:white, s:none, 'bold')
call <sid>hi('ledgerTransactionDate', s:white, s:none, 'bold')
call <sid>hi('ledgerTransactionMetadata', s:dark_gray, s:none, 'none')

" Mail
call <sid>hi('mailHeaderKey', s:bright_white, s:none, 'none')
call <sid>hi('mailHeader', s:bright_white, s:none, 'none')

" Make
call <sid>hi('makeTarget', s:white, s:none, 'bold')
call <sid>hi('makeSpecTarget', s:white, s:none, 'none')

" Markdown
call <sid>hi('mkdFootnotes', s:dark_gray, s:none, 'underline')
call <sid>hi('mkdLinkDef', s:dark_gray, s:none, 'none')
call <sid>hi('mkdCode', s:bright_white, s:none, 'none')
call <sid>hi('mkdHeading', s:gold, s:none, 'bold')
call <sid>hi('mkdLineBreak', s:none, s:red, 'none')
call <sid>hi('mkdInlineURL', s:white, s:none, 'underline')

" org-mode
call <sid>hi('orgTodo', s:green, s:none, 'none')
call <sid>hi('orgDone', s:dark_gray, s:none, 'none')
call <sid>hi('orgTag', s:bright_white, s:none, 'none')
call <sid>hi('orgOption', s:dark_gray, s:none, 'none')
call <sid>hi('orgBlockDelimiter', s:dark_gray, s:none, 'none')
call <sid>hi('orgCode', s:white, s:none, 'none')

" orgmode.nvim
call <sid>hi('OrgTSHeadlineLevel1', s:white, s:none, 'bold')
call <sid>hi('OrgTSHeadlineLevel2', s:white, s:none, 'bold')
call <sid>hi('OrgTSHeadlineLevel3', s:white, s:none, 'bold')
call <sid>hi('OrgTSComment', s:dark_gray, s:none, 'none')
call <sid>hi('OrgTSTag', s:bright_white, s:none, 'none')
call <sid>hi('OrgTSTimestampActive', s:bright_white, s:none, 'none')
call <sid>hi('OrgTSPropertyDrawer', s:dark_gray, s:none, 'none')
call <sid>hi('OrgTSDirective', s:dark_gray, s:none, 'none')
call <sid>hi('OrgTSCheckboxChecked', s:dark_gray, s:none, 'none')
call <sid>hi('OrgTSCheckboxHalfChecked', s:bright_white, s:none, 'none')
call <sid>hi('OrgTSCheckboxUnchecked', s:bright_white, s:none, 'none')

" Python
call <sid>hi('pythonImport', s:white, s:none, 'none')
call <sid>hi('pythonConditional', s:white, s:none, 'bold')
call <sid>hi('pythonStrFormat', s:bright_white, s:none, 'bold')

" Quickfix
call <sid>hi('qfError', s:black, s:red, 'bold')
call <sid>hi('qfFileName', s:dark_gray, s:none, 'none')
call <sid>hi('qfLineNr', s:dark_gray, s:none, 'italic')

" Rust
call <sid>hi('rustConditional', s:white, s:none, 'bold')
call <sid>hi('rustKeyword', s:white, s:none, 'bold')
call <sid>hi('rustRepeat', s:white, s:none, 'bold')
call <sid>hi('rustStorage', s:white, s:none, 'bold')
call <sid>hi('rustStructure', s:white, s:none, 'bold')

" SH
call <sid>hi('shShebang', s:dark_gray, s:none, 'italic')
call <sid>hi('shConditional', s:white, s:none, 'bold')

" XML
call <sid>hi('xmlAttrib', s:white, s:none, 'none')
call <sid>hi('xmlEndTag', s:white, s:none, 'none')
call <sid>hi('xmlTag', s:white, s:none, 'none')
call <sid>hi('xmlTagName', s:white, s:none, 'none')

" YAML
call <sid>hi('yamlAlias', s:white, s:none, 'none')
call <sid>hi('yamlAnchor', s:white, s:none, 'none')
call <sid>hi('yamlDocumentHeader', s:white, s:none, 'none')
call <sid>hi('yamlKey', s:white, s:none, 'none')

" ------------
" Plugins
" ------------

" Dirvish
call <sid>hi('DirvishPathTail', s:blue, s:none, 'none')
call <sid>hi('DirvishArg', s:white, s:none, 'none')

" FZF
let g:fzf_colors =
  \ { 'fg':      ['fg', 'Normal'],
    \ 'bg':      ['bg', 'Normal'],
    \ 'hl':      ['fg', 'Comment'],
    \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
    \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
    \ 'hl+':     ['fg', 'Statement'],
    \ 'info':    ['fg', 'PreProc'],
    \ 'border':  ['fg', 'Ignore'],
    \ 'prompt':  ['fg', 'Conditional'],
    \ 'pointer': ['fg', 'Exception'],
    \ 'marker':  ['fg', 'Keyword'],
    \ 'spinner': ['fg', 'Label'],
    \ 'header':  ['fg', 'Comment'] }

" Fugitive
call <sid>hi('fugitiveHeading', s:white, s:none, 'bold')
call <sid>hi('fugitiveUntrackedHeading', s:white, s:none, 'bold')
call <sid>hi('fugitiveUnstagedHeading', s:white, s:none, 'bold')
call <sid>hi('fugitiveStagedHeading', s:white, s:none, 'bold')
call <sid>hi('fugitiveSymbolicRef', s:bright_white, s:none, 'none')
call <sid>hi('fugitiveStagedModifier', s:green, s:none, 'none')

" Signify
call <sid>hi('SignifySignAdd', s:green, s:black, 'bold')
call <sid>hi('SignifySignChange', s:blue, s:black, 'bold')
call <sid>hi('SignifySignDelete', s:red, s:black, 'bold')

" vim help
call <sid>hi('helpHyperTextJump', s:blue, s:none, 'none')

" terminal

let g:terminal_color_foreground = s:green["gui"]
let g:terminal_color_background = s:black["gui"]
let g:terminal_color_0 = s:black["gui"]
let g:terminal_color_1 = s:red["gui"]
let g:terminal_color_2 = s:green["gui"]
let g:terminal_color_3 = s:gold["gui"]
let g:terminal_color_4 = s:blue["gui"]
let g:terminal_color_5 = s:purple["gui"]
let g:terminal_color_6 = s:blue["gui"]
let g:terminal_color_7 = s:medium_gray["gui"]
let g:terminal_color_8 = s:gray["gui"]
let g:terminal_color_9 = s:red["gui"]
let g:terminal_color_10 = s:green["gui"]
let g:terminal_color_11 = s:gold["gui"]
let g:terminal_color_12 = s:blue["gui"]
let g:terminal_color_13 = s:purple["gui"]
let g:terminal_color_14 = s:blue["gui"]
let g:terminal_color_15 = s:bright_white["gui"]
