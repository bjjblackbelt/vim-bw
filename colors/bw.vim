" bw.vim
" By Michał Góral
"
" This theme is based on Fogbell by Jared Gorski, which is available
" here: https://github.com/jaredgorski/fogbell

scriptencoding utf-8
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

let s:is_dark=(&background == 'dark')

let s:voidBlack1 = {'gui': '#282828', 'cterm256': '235'}
let s:voidGray1 = {'gui': '#504945', 'cterm256': '237'}
let s:voidGray2 = {'gui': '#665C64', 'cterm256': '239'}
let s:voidGray3 = {'gui': '#928374', 'cterm256': '242'}
let s:voidGray4 = {'gui': '#A89984', 'cterm256': '249'}
let s:voidGray5 = {'gui': '#D0D0D0', 'cterm256': '253'}
let s:voidGray6 = {'gui': '#B0B0B0', 'cterm256': '250'}
let s:voidGray7 = {'gui': '#797974', 'cterm256': '247'}
let s:voidCream1 = {'gui': '#F3F3EF', 'cterm256': '255'}
let s:voidCream2 = {'gui': '#EBDBB2', 'cterm256': '253'}
let s:voidBlue = {'gui': '#83A598', 'cterm256': '109'}
let s:voidGreen = {'gui': '#98971A', 'cterm256': '71'}
let s:voidGold = {'gui': '#D79921', 'cterm256': '136'}
let s:voidRed1 = {'gui': '#9D0006', 'cterm256': '1'}
let s:voidRed2 = {'gui': '#CC241D', 'cterm256': '196'}
let s:none = {'gui': 'NONE', 'cterm256': 'NONE'}

if s:is_dark
    let s:voidFg = s:voidCream2
    let s:voidBg = s:voidBlack1
    let s:voidBg2 = s:voidGray1  " used for cursor line etc.
    let s:voidShade1 = s:voidGray1
    let s:voidShade2 = s:voidGray2
    let s:voidShade3 = s:voidGray3
    let s:voidShade4 = s:voidGray4
else
    let s:voidFg = s:voidBlack1
    let s:voidBg = s:voidCream1
    let s:voidBg2 = s:voidGray5  " used for cursor line etc
    let s:voidShade1 = s:voidCream2
    let s:voidShade2 = s:voidGray6
    let s:voidShade3 = s:voidGray4
    let s:voidShade4 = s:voidGray7

    " some colors must be darker to be visible on light background
    let s:voidBlue = {'gui': '#076678', 'cterm256': '109'}
    let s:voidGold = {'gui': '#B57614', 'cterm256': '136'}
endif

" ==========================
" Definitions
" ==========================
"    <sid>hi(GROUP, FOREGROUND, BACKGROUND, ATTRIBUTE)

" Editor
call <sid>hi('ColorColumn', s:none, s:voidBg2, 'none')
call <sid>hi('Cursor', s:voidBg, s:voidFg, 'none')
call <sid>hi('CursorColumn', s:none, s:voidBg2, 'none')
call <sid>hi('CursorLine', s:none, s:voidBg2, 'none')
call <sid>hi('CursorLineNr', s:voidFg, s:voidBg2, 'bold')
call <sid>hi('Directory', s:voidFg, s:voidBg, 'none')
call <sid>hi('FoldColumn', s:none, s:voidBg, 'none')
call <sid>hi('Folded', s:voidShade3, s:none, 'none')
call <sid>hi('IncSearch', s:voidBg, s:voidBlue, 'none')
call <sid>hi('LineNr', s:voidShade3, s:voidBg, 'none')
call <sid>hi('MatchParen', s:voidBg, s:voidShade3, 'none')
call <sid>hi('Normal', s:voidFg, s:voidBg, 'none')
call <sid>hi('Pmenu', s:voidBg, s:voidShade4, 'none')
call <sid>hi('PmenuSel', s:none, s:voidShade2, 'none')
call <sid>hi('Search', s:voidBg, s:voidBlue, 'none')
call <sid>hi('SignColumn', s:none, s:voidBg, 'none')
call <sid>hi('StatusLine', s:voidBg, s:voidFg, 'none')
call <sid>hi('StatusLineNC', s:voidShade3, s:voidBg, 'none')
call <sid>hi('VertSplit', s:voidShade3, s:none, 'none')
call <sid>hi('Visual', s:none, s:voidShade2, 'none')

" General
call <sid>hi('Boolean', s:voidFg, s:none, 'none')
call <sid>hi('Character', s:voidFg, s:none, 'none')
call <sid>hi('Comment', s:voidShade3, s:none, 'none')
call <sid>hi('Conceal', s:voidShade4, s:none, 'none')
call <sid>hi('Conditional', s:voidFg, s:none, 'none')
call <sid>hi('Constant', s:voidFg, s:none, 'none')
call <sid>hi('Define', s:voidFg, s:none, 'none')
call <sid>hi('DiffAdd', s:voidBg, s:voidGreen, 'none')
call <sid>hi('DiffChange', s:voidBg, s:voidGold, 'none')
call <sid>hi('DiffDelete', s:voidCream2, s:voidRed1, 'none')
call <sid>hi('DiffText', s:voidShade1, s:voidBlue, 'none')
call <sid>hi('ErrorMsg', s:voidCream2, s:voidRed1, 'none')
call <sid>hi('Float', s:voidFg, s:none, 'none')
call <sid>hi('Function', s:voidFg, s:none, 'none')
call <sid>hi('Identifier', s:voidFg, s:none, 'none')
call <sid>hi('Keyword', s:voidFg, s:none, 'none')
call <sid>hi('Label', s:voidFg, s:none, 'none')
call <sid>hi('NonText', s:voidShade3, s:none, 'none')
call <sid>hi('Number', s:voidFg, s:none, 'none')
call <sid>hi('Operator', s:voidFg, s:none, 'none')
call <sid>hi('PreProc', s:voidFg, s:none, 'none')
call <sid>hi('Special', s:voidFg, s:none, 'none')
call <sid>hi('SpecialKey', s:voidFg, s:none, 'none')
call <sid>hi('SpellBad', s:voidRed2, s:none, 'italic,undercurl')
call <sid>hi('SpellCap', s:voidFg, s:none, 'italic,undercurl')
call <sid>hi('SpellLocal', s:voidFg, s:none, 'undercurl')
call <sid>hi('Statement', s:voidFg, s:none, 'bold')
call <sid>hi('StorageClass', s:voidFg, s:none, 'none')
call <sid>hi('String', s:voidShade4, s:none, 'none')
call <sid>hi('Tag', s:voidFg, s:none, 'none')
call <sid>hi('Title', s:none, s:none, 'bold')
call <sid>hi('Todo', s:voidShade3, s:none, 'inverse,bold')
call <sid>hi('Type', s:none, s:none, 'none')
call <sid>hi('Underlined', s:none, s:none, 'underline')
call <sid>hi('WarningMsg', s:voidCream2, s:voidRed1, 'none')

" Diff Mode
if &diff
  call <sid>hi('DiffAdd', s:voidBg, s:voidGreen, 'none')
  call <sid>hi('DiffChange', s:voidBg, s:voidGold, 'none')
  call <sid>hi('DiffDelete', s:voidRed2, s:voidRed1, 'none')
  call <sid>hi('DiffText', s:voidBg, s:voidBlue, 'none')
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
call <sid>hi('asciidocAttributeEntry', s:voidShade3, s:none, 'none')
call <sid>hi('asciidocAttributeRef', s:voidShade3, s:none, 'none')
call <sid>hi('asciidocListingBlock', s:voidShade4, s:none, 'none')
call <sid>hi('asciidocLiteralBlock', s:voidShade4, s:none, 'none')
call <sid>hi('asciidocMacro', s:voidShade4, s:none, 'none')
call <sid>hi('asciidocMacroAttributes', s:voidShade4, s:none, 'none')
call <sid>hi('asciidocPassthroughBlock', s:voidShade4, s:none, 'none')
call <sid>hi('asciidocQuotedBold', s:voidFg, s:none, 'bold')
call <sid>hi('asciidocQuotedEmphasized', s:voidFg, s:none, 'italic')
call <sid>hi('asciidocQuotedMonospaced2', s:voidShade4, s:none, 'none')
call <sid>hi('asciidocQuotedUnconstrainedBold', s:voidFg, s:none, 'bold')
call <sid>hi('asciidocQuotedUnconstrainedEmphasized', s:voidFg, s:none, 'italic')
call <sid>hi('asciidocRefMacro', s:voidShade4, s:none, 'none')
call <sid>hi('asciidocTableDelimiter', s:voidShade3, s:none, 'none')
call <sid>hi('asciidocTablePrefix', s:voidShade3, s:none, 'none')
call <sid>hi('asciidocURL', s:voidFg, s:none, 'underline')

" Asciidoctor
call <sid>hi('asciidoctorAnchor', s:voidBlue, s:none, 'underline')
call <sid>hi('asciidoctorBlock', s:voidShade3, s:none, 'none')
call <sid>hi('asciidoctorBlockOptions', s:voidShade3, s:none, 'none')
call <sid>hi('asciidoctorBold', s:voidFg, s:none, 'bold')
call <sid>hi('asciidoctorCode', s:voidShade4, s:none, 'none')
call <sid>hi('asciidoctorFile', s:voidShade4, s:none, 'none')
call <sid>hi('asciidoctorItalic', s:voidFg, s:none, 'italic')
call <sid>hi('asciidoctorListContinuation', s:voidShade1, s:none, 'none')
call <sid>hi('asciidoctorListMarker', s:voidShade4, s:none, 'none')
call <sid>hi('asciidoctorLiteralBlock', s:voidShade4, s:none, 'none')
call <sid>hi('asciidoctorOption', s:voidShade3, s:none, 'none')
call <sid>hi('asciidoctorSourceBlock', s:voidShade4, s:none, 'none')
call <sid>hi('asciidoctorUrlDescription', s:voidFg, s:none, 'none')

" C
call <sid>hi('cConditional', s:voidFg, s:none, 'bold')
call <sid>hi('cConstant', s:voidFg, s:none, 'none')
call <sid>hi('cFormat', s:voidFg, s:none, 'none')
call <sid>hi('cMulti', s:voidFg, s:none, 'none')
call <sid>hi('cNumbers', s:voidFg, s:none, 'none')
call <sid>hi('cOperator', s:voidFg, s:none, 'none')
call <sid>hi('cSpecial', s:voidFg, s:none, 'none')
call <sid>hi('cSpecialCharacter', s:voidFg, s:none, 'none')
call <sid>hi('cStatement', s:voidFg, s:none, 'bold')
call <sid>hi('cStorageClass', s:voidFg, s:none, 'none')
call <sid>hi('cString', s:voidShade4, s:none, 'none')
call <sid>hi('cStructure', s:voidFg, s:none, 'bold')
call <sid>hi('cType', s:voidFg, s:none, 'none')

" C++
call <sid>hi('cppConditional', s:voidFg, s:none, 'bold')
call <sid>hi('cppConstant', s:voidFg, s:none, 'none')
call <sid>hi('cppFormat', s:voidFg, s:none, 'none')
call <sid>hi('cppMulti', s:voidFg, s:none, 'none')
call <sid>hi('cppNumbers', s:voidFg, s:none, 'none')
call <sid>hi('cppOperator', s:voidFg, s:none, 'none')
call <sid>hi('cppSpecial', s:voidFg, s:none, 'none')
call <sid>hi('cppSpecialCharacter', s:voidFg, s:none, 'none')
call <sid>hi('cppStatement', s:voidFg, s:none, 'bold')
call <sid>hi('cppStorageClass', s:voidFg, s:none, 'none')
call <sid>hi('cppString', s:voidShade4, s:none, 'none')
call <sid>hi('cppStructure', s:voidFg, s:none, 'bold')
call <sid>hi('cppType', s:voidFg, s:none, 'none')

" CSS
call <sid>hi('cssTagName', s:voidFg, s:none, 'bold')
call <sid>hi('cssClassName', s:voidFg, s:none, 'bold')
call <sid>hi('cssAtRule', s:voidFg, s:none, 'bold')
call <sid>hi('cssColor', s:voidShade4, s:none, 'none')

" diff
call <sid>hi('diffFile', s:voidFg, s:none, 'bold')
call <sid>hi('diffAdded', s:voidGreen, s:none, 'none')
call <sid>hi('diffRemoved', s:voidRed2, s:none, 'none')

" HTML
call <sid>hi('htmlArg', s:voidFg, s:none, 'none')
call <sid>hi('htmlEndTag', s:voidFg, s:none, 'none')
call <sid>hi('htmlSpecialChar', s:voidFg, s:none, 'none')
call <sid>hi('htmlSpecialTagName', s:voidFg, s:none, 'none')
call <sid>hi('htmlTag', s:voidFg, s:none, 'none')
call <sid>hi('htmlTagName', s:voidFg, s:none, 'none')
call <sid>hi('htmlItalic', s:voidFg, s:none, 'italic')
call <sid>hi('htmlBold', s:voidFg, s:none, 'bold')

" Ledger
call <sid>hi('ledgerAmount', s:voidFg, s:none, 'italic')
call <sid>hi('ledgerPostingMetadata', s:voidShade4, s:none, 'none')
call <sid>hi('ledgerTag', s:voidShade3, s:none, 'none')
call <sid>hi('ledgerTags', s:voidShade3, s:none, 'none')
call <sid>hi('ledgerTransaction', s:voidFg, s:none, 'bold')
call <sid>hi('ledgerTransactionDate', s:voidFg, s:none, 'bold')
call <sid>hi('ledgerTransactionMetadata', s:voidShade3, s:none, 'none')

" Mail
call <sid>hi('mailHeaderKey', s:voidShade4, s:none, 'none')

" Make
call <sid>hi('makeTarget', s:voidFg, s:none, 'bold')
call <sid>hi('makeSpecTarget', s:voidFg, s:none, 'none')

" Markdown
call <sid>hi('mkdFootnotes', s:voidShade3, s:none, 'underline')
call <sid>hi('mkdLinkDef', s:voidShade3, s:none, 'none')
call <sid>hi('mkdCode', s:voidShade4, s:none, 'none')
call <sid>hi('mkdHeading', s:voidFg, s:none, 'bold')

" Python
call <sid>hi('pythonImport', s:voidFg, s:none, 'none')
call <sid>hi('pythonConditional', s:voidFg, s:none, 'bold')
call <sid>hi('pythonStrFormat', s:voidShade4, s:none, 'bold')

" SH
call <sid>hi('shShebang', s:voidShade3, s:none, 'italic')
call <sid>hi('shConditional', s:voidFg, s:none, 'bold')

" XML
call <sid>hi('xmlAttrib', s:voidFg, s:none, 'none')
call <sid>hi('xmlEndTag', s:voidFg, s:none, 'none')
call <sid>hi('xmlTag', s:voidFg, s:none, 'none')
call <sid>hi('xmlTagName', s:voidFg, s:none, 'none')

" YAML
call <sid>hi('yamlAlias', s:voidFg, s:none, 'none')
call <sid>hi('yamlAnchor', s:voidFg, s:none, 'none')
call <sid>hi('yamlDocumentHeader', s:voidFg, s:none, 'none')
call <sid>hi('yamlKey', s:voidFg, s:none, 'none')

" ------------
" Plugins
" ------------

" Fugitive
call <sid>hi('fugitiveHeading', s:voidFg, s:none, 'bold')
call <sid>hi('fugitiveUntrackedHeading', s:voidFg, s:none, 'bold')
call <sid>hi('fugitiveUnstagedHeading', s:voidFg, s:none, 'bold')
call <sid>hi('fugitiveStagedHeading', s:voidFg, s:none, 'bold')
call <sid>hi('fugitiveSymbolicRef', s:voidShade4, s:none, 'none')
