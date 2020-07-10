"
"
"        ┌─┐┌─┐┌─┐┌┐ ┌─┐┬  ┬
"        ├┤ │ ││ ┬├┴┐├┤ │  │
"        └  └─┘└─┘└─┘└─┘┴─┘┴─┘
"
"
" by Jared Gorski
" https://github.com/jaredgorski/fogbell
"
" This theme was based on Fogbell by Jared Gorski.

scriptencoding utf-8

set background=dark
hi clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name="bw"

" ==========================
" Highlighting Function
" ==========================
"  >> (inspired by https://github.com/tomasiser/vim-code-dark and https://github.com/chriskempson/base16-vim)
fun! <sid>hi(group, fg, bg, attr)
  if !empty(a:fg)
    exec "hi " . a:group . " guifg=" . a:fg.gui . " ctermfg=" .  a:fg.cterm256
  endif
  if !empty(a:bg)
    exec "hi " . a:group . " guibg=" . a:bg.gui . " ctermbg=" .  a:bg.cterm256
  endif
  if a:attr != ""
    exec "hi " . a:group . " gui=" . a:attr . " cterm=" . a:attr
  endif
endfun

" ==========================
" Color Variables
" ==========================
let s:voidBlack = {'gui': '#282828', 'cterm256': '235'}
let s:voidBlack2 = {'gui': '#262626', 'cterm256': '236'}
let s:voidGray1 = {'gui': '#504945', 'cterm256': '237'}
let s:voidGray2 = {'gui': '#665C64', 'cterm256': '239'}
let s:voidGray3 = {'gui': '#928374', 'cterm256': '242'}
let s:voidGray4 = {'gui': '#A89984', 'cterm256': '249'}
let s:voidCream = {'gui': '#EBDBB2', 'cterm256': '255'}
let s:voidBlue = {'gui': '#83A598', 'cterm256': '109'}
let s:voidGreen = {'gui': '#98971A', 'cterm256': '71'}
let s:voidGold = {'gui': '#D79921', 'cterm256': '136'}
let s:voidRed = {'gui': '#9D0006', 'cterm256': '1'}
let s:voidRed2 = {'gui': '#CC241D', 'cterm256': '196'}
let s:none = {'gui': 'NONE', 'cterm256': 'NONE'}

" ==========================
" Definitions
" ==========================
"    <sid>hi(GROUP, FOREGROUND, BACKGROUND, ATTRIBUTE)

" Editor
call <sid>hi('ColorColumn', s:none, s:voidGray1, 'none')
call <sid>hi('Cursor', s:voidBlack, s:voidCream, 'none')
call <sid>hi('CursorColumn', s:none, s:voidGray1, 'none')
call <sid>hi('CursorLine', s:none, s:voidGray1, 'none')
call <sid>hi('CursorLineNr', s:voidCream, s:voidGray1, 'bold')
call <sid>hi('Directory', s:voidCream, s:voidBlack2, 'none')
call <sid>hi('FoldColumn', s:none, s:voidBlack2, 'none')
call <sid>hi('Folded', s:voidGray3, s:none, 'none')
call <sid>hi('IncSearch', s:voidBlack, s:voidGold, 'none')
call <sid>hi('LineNr', s:voidGray3, s:voidBlack2, 'none')
call <sid>hi('MatchParen', s:voidBlack2, s:voidGray3, 'none')
call <sid>hi('Normal', s:voidCream, s:voidBlack, 'none')
call <sid>hi('Pmenu', s:voidBlack, s:voidGray4, 'none')
call <sid>hi('PmenuSel', s:none, s:voidGray2, 'none')
call <sid>hi('Search', s:voidBlack, s:voidGold, 'none')
call <sid>hi('SignColumn', s:none, s:voidBlack2, 'none')
call <sid>hi('StatusLine', s:voidBlack, s:voidCream, 'none')
call <sid>hi('StatusLineNC', s:voidGray3, s:voidBlack2, 'none')
call <sid>hi('VertSplit', s:voidGray3, s:none, 'none')
call <sid>hi('Visual', s:none, s:voidGray2, 'none')

" General
call <sid>hi('Boolean', s:voidCream, s:none, 'none')
call <sid>hi('Character', s:voidCream, s:none, 'none')
call <sid>hi('Comment', s:voidGray3, s:none, 'none')
call <sid>hi('Conceal', s:voidGray4, s:none, 'none')
call <sid>hi('Conditional', s:voidCream, s:none, 'none')
call <sid>hi('Constant', s:voidCream, s:none, 'none')
call <sid>hi('Define', s:voidCream, s:none, 'none')
call <sid>hi('DiffAdd', s:voidBlack, s:voidGreen, 'none')
call <sid>hi('DiffChange', s:voidBlack, s:voidGold, 'none')
call <sid>hi('DiffDelete', s:voidCream, s:voidRed, 'none')
call <sid>hi('DiffText', s:voidGray1, s:voidBlue, 'none')
call <sid>hi('ErrorMsg', s:voidCream, s:voidRed, 'none')
call <sid>hi('Float', s:voidCream, s:none, 'none')
call <sid>hi('Function', s:voidCream, s:none, 'none')
call <sid>hi('Identifier', s:voidCream, s:none, 'none')
call <sid>hi('Keyword', s:voidCream, s:none, 'none')
call <sid>hi('Label', s:voidCream, s:none, 'none')
call <sid>hi('NonText', s:voidGray3, s:none, 'none')
call <sid>hi('Number', s:voidCream, s:none, 'none')
call <sid>hi('Operator', s:voidCream, s:none, 'none')
call <sid>hi('PreProc', s:voidCream, s:none, 'none')
call <sid>hi('Special', s:voidCream, s:none, 'none')
call <sid>hi('SpecialKey', s:voidCream, s:none, 'none')
call <sid>hi('SpellBad', s:voidRed2, s:none, 'italic,undercurl')
call <sid>hi('SpellCap', s:voidCream, s:none, 'italic,undercurl')
call <sid>hi('SpellLocal', s:voidCream, s:none, 'undercurl')
call <sid>hi('Statement', s:voidCream, s:none, 'bold')
call <sid>hi('StorageClass', s:voidCream, s:none, 'none')
call <sid>hi('String', s:voidGray4, s:none, 'none')
call <sid>hi('Tag', s:voidCream, s:none, 'none')
call <sid>hi('Title', s:none, s:none, 'bold')
call <sid>hi('Todo', s:voidGray3, s:none, 'inverse,bold')
call <sid>hi('Type', s:none, s:none, 'none')
call <sid>hi('Underlined', s:none, s:none, 'underline')
call <sid>hi('WarningMsg', s:voidCream, s:voidRed, 'none')

" Diff Mode
if &diff
  call <sid>hi('DiffAdd', s:voidBlack, s:voidGreen, 'none')
  call <sid>hi('DiffChange', s:voidBlack, s:voidGold, 'none')
  call <sid>hi('DiffDelete', s:voidRed2, s:voidRed, 'none')
  call <sid>hi('DiffText', s:voidBlack2, s:voidBlue, 'none')
else
  call <sid>hi('DiffAdd', s:voidGreen, s:none, 'none')
  call <sid>hi('DiffChange', s:voidGold, s:none, 'none')
  call <sid>hi('DiffDelete', s:voidRed2, s:none, 'none')
  call <sid>hi('DiffText', s:voidBlue, s:none, 'none')
endif

" ------------
" Languages
" ------------

" AsciiDoc
call <sid>hi('asciidocAttributeEntry', s:voidGray3, s:none, 'none')
call <sid>hi('asciidocAttributeRef', s:voidGray3, s:none, 'none')
call <sid>hi('asciidocListingBlock', s:voidGray4, s:none, 'none')
call <sid>hi('asciidocLiteralBlock', s:voidGray4, s:none, 'none')
call <sid>hi('asciidocMacro', s:voidGray4, s:none, 'none')
call <sid>hi('asciidocMacroAttributes', s:voidGray4, s:none, 'none')
call <sid>hi('asciidocPassthroughBlock', s:voidGray4, s:none, 'none')
call <sid>hi('asciidocQuotedBold', s:voidCream, s:none, 'bold')
call <sid>hi('asciidocQuotedEmphasized', s:voidCream, s:none, 'italic')
call <sid>hi('asciidocQuotedMonospaced2', s:voidGray4, s:none, 'none')
call <sid>hi('asciidocQuotedUnconstrainedBold', s:voidCream, s:none, 'bold')
call <sid>hi('asciidocQuotedUnconstrainedEmphasized', s:voidCream, s:none, 'italic')
call <sid>hi('asciidocRefMacro', s:voidGray4, s:none, 'none')
call <sid>hi('asciidocTableDelimiter', s:voidGray3, s:none, 'none')
call <sid>hi('asciidocTablePrefix', s:voidGray3, s:none, 'none')
call <sid>hi('asciidocURL', s:voidCream, s:none, 'underline')

" Asciidoctor
call <sid>hi('asciidoctorAnchor', s:voidBlue, s:none, 'underline')
call <sid>hi('asciidoctorBlock', s:voidGray3, s:none, 'none')
call <sid>hi('asciidoctorBlockOptions', s:voidGray3, s:none, 'none')
call <sid>hi('asciidoctorBold', s:voidCream, s:none, 'bold')
call <sid>hi('asciidoctorCode', s:voidGray4, s:none, 'none')
call <sid>hi('asciidoctorFile', s:voidGray4, s:none, 'none')
call <sid>hi('asciidoctorItalic', s:voidCream, s:none, 'italic')
call <sid>hi('asciidoctorListContinuation', s:voidGray1, s:none, 'none')
call <sid>hi('asciidoctorListMarker', s:voidGray4, s:none, 'none')
call <sid>hi('asciidoctorLiteralBlock', s:voidGray4, s:none, 'none')
call <sid>hi('asciidoctorOption', s:voidGray3, s:none, 'none')
call <sid>hi('asciidoctorSourceBlock', s:voidGray4, s:none, 'none')
call <sid>hi('asciidoctorUrlDescription', s:voidCream, s:none, 'none')

" C
call <sid>hi('cConditional', s:voidCream, s:none, 'bold')
call <sid>hi('cConstant', s:voidCream, s:none, 'none')
call <sid>hi('cFormat', s:voidCream, s:none, 'none')
call <sid>hi('cMulti', s:voidCream, s:none, 'none')
call <sid>hi('cNumbers', s:voidCream, s:none, 'none')
call <sid>hi('cOperator', s:voidCream, s:none, 'none')
call <sid>hi('cSpecial', s:voidCream, s:none, 'none')
call <sid>hi('cSpecialCharacter', s:voidCream, s:none, 'none')
call <sid>hi('cStatement', s:voidCream, s:none, 'bold')
call <sid>hi('cStorageClass', s:voidCream, s:none, 'none')
call <sid>hi('cString', s:voidGray4, s:none, 'none')
call <sid>hi('cStructure', s:voidCream, s:none, 'bold')
call <sid>hi('cType', s:voidCream, s:none, 'none')

" C++
call <sid>hi('cppConditional', s:voidCream, s:none, 'bold')
call <sid>hi('cppConstant', s:voidCream, s:none, 'none')
call <sid>hi('cppFormat', s:voidCream, s:none, 'none')
call <sid>hi('cppMulti', s:voidCream, s:none, 'none')
call <sid>hi('cppNumbers', s:voidCream, s:none, 'none')
call <sid>hi('cppOperator', s:voidCream, s:none, 'none')
call <sid>hi('cppSpecial', s:voidCream, s:none, 'none')
call <sid>hi('cppSpecialCharacter', s:voidCream, s:none, 'none')
call <sid>hi('cppStatement', s:voidCream, s:none, 'bold')
call <sid>hi('cppStorageClass', s:voidCream, s:none, 'none')
call <sid>hi('cppString', s:voidGray4, s:none, 'none')
call <sid>hi('cppStructure', s:voidCream, s:none, 'bold')
call <sid>hi('cppType', s:voidCream, s:none, 'none')

" CSS
call <sid>hi('cssTagName', s:voidCream, s:none, 'bold')
call <sid>hi('cssClassName', s:voidCream, s:none, 'bold')
call <sid>hi('cssAtRule', s:voidCream, s:none, 'bold')
call <sid>hi('cssColor', s:voidGray4, s:none, 'none')

" diff
call <sid>hi('diffFile', s:voidCream, s:none, 'bold')
call <sid>hi('diffAdded', s:voidGreen, s:none, 'none')
call <sid>hi('diffRemoved', s:voidRed2, s:none, 'none')

" HTML
call <sid>hi('htmlArg', s:voidCream, s:none, 'none')
call <sid>hi('htmlEndTag', s:voidCream, s:none, 'none')
call <sid>hi('htmlSpecialChar', s:voidCream, s:none, 'none')
call <sid>hi('htmlSpecialTagName', s:voidCream, s:none, 'none')
call <sid>hi('htmlTag', s:voidCream, s:none, 'none')
call <sid>hi('htmlTagName', s:voidCream, s:none, 'none')
call <sid>hi('htmlItalic', s:voidCream, s:none, 'italic')
call <sid>hi('htmlBold', s:voidCream, s:none, 'bold')

" Ledger
call <sid>hi('ledgerAmount', s:voidCream, s:none, 'italic')
call <sid>hi('ledgerPostingMetadata', s:voidGray4, s:none, 'none')
call <sid>hi('ledgerTag', s:voidGray3, s:none, 'none')
call <sid>hi('ledgerTags', s:voidGray3, s:none, 'none')
call <sid>hi('ledgerTransaction', s:voidCream, s:none, 'bold')
call <sid>hi('ledgerTransactionDate', s:voidCream, s:none, 'bold')
call <sid>hi('ledgerTransactionMetadata', s:voidGray3, s:none, 'none')

" Mail
call <sid>hi('mailHeaderKey', s:voidGray4, s:none, 'none')

" Make
call <sid>hi('makeTarget', s:voidCream, s:none, 'bold')
call <sid>hi('makeSpecTarget', s:voidCream, s:none, 'none')

" Markdown
call <sid>hi('mkdFootnotes', s:voidGray3, s:none, 'underline')
call <sid>hi('mkdLinkDef', s:voidGray3, s:none, 'none')
call <sid>hi('mkdCode', s:voidGray4, s:none, 'none')
call <sid>hi('mkdHeading', s:voidCream, s:none, 'bold')

" Python
call <sid>hi('pythonImport', s:voidCream, s:none, 'none')
call <sid>hi('pythonConditional', s:voidCream, s:none, 'bold')
call <sid>hi('pythonStrFormat', s:voidGray4, s:none, 'bold')

" SH
call <sid>hi('shShebang', s:voidGray3, s:none, 'italic')
call <sid>hi('shConditional', s:voidCream, s:none, 'bold')

" XML
call <sid>hi('xmlAttrib', s:voidCream, s:none, 'none')
call <sid>hi('xmlEndTag', s:voidCream, s:none, 'none')
call <sid>hi('xmlTag', s:voidCream, s:none, 'none')
call <sid>hi('xmlTagName', s:voidCream, s:none, 'none')

" YAML
call <sid>hi('yamlAlias', s:voidCream, s:none, 'none')
call <sid>hi('yamlAnchor', s:voidCream, s:none, 'none')
call <sid>hi('yamlDocumentHeader', s:voidCream, s:none, 'none')
call <sid>hi('yamlKey', s:voidCream, s:none, 'none')

" ------------
" Plugins
" ------------

" Fugitive
call <sid>hi('fugitiveHeading', s:voidCream, s:none, 'bold')
call <sid>hi('fugitiveUntrackedHeading', s:voidCream, s:none, 'bold')
call <sid>hi('fugitiveUnstagedHeading', s:voidCream, s:none, 'bold')
call <sid>hi('fugitiveStagedHeading', s:voidCream, s:none, 'bold')
call <sid>hi('fugitiveSymbolicRef', s:voidGray4, s:none, 'none')
