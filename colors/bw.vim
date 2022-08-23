" bw.vim
" By Michał Góral
"

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

let s:voidBlack = {'gui': '#282828', 'cterm256': '235'}
let s:voidGray0 = {'gui': '#3C3836', 'cterm256': '238'}
let s:voidGray1 = {'gui': '#504945', 'cterm256': '239'}
let s:voidGray2 = {'gui': '#665C64', 'cterm256': '240'}
let s:voidGray3 = {'gui': '#928374', 'cterm256': '241'}
let s:voidGray4 = {'gui': '#A89984', 'cterm256': '242'}
let s:voidCream = {'gui': '#EBDBB2', 'cterm256': '230'}
let s:voidBlue = {'gui': '#83A598', 'cterm256': '109'}
let s:voidGreen = {'gui': '#98971A', 'cterm256': '64'}
let s:voidGold = {'gui': '#D79921', 'cterm256': '136'}
let s:voidRed1 = {'gui': '#9D0006', 'cterm256': '124'}
let s:voidRed2 = {'gui': '#CC241D', 'cterm256': '196'}
let s:none = {'gui': 'NONE', 'cterm256': 'NONE'}

" ==========================
" Definitions
" ==========================
"    <sid>hi(GROUP, FOREGROUND, BACKGROUND, ATTRIBUTE)

" Editor
call <sid>hi('ColorColumn', s:none, s:voidGray0, 'none')
call <sid>hi('Cursor', s:voidBlack, s:voidCream, 'none')
call <sid>hi('CursorColumn', s:none, s:voidGray0, 'none')
call <sid>hi('CursorLine', s:none, s:voidGray0, 'none')
call <sid>hi('CursorLineNr', s:voidCream, s:voidGray0, 'bold')
call <sid>hi('Directory', s:voidCream, s:voidBlack, 'none')
call <sid>hi('FoldColumn', s:none, s:voidBlack, 'none')
call <sid>hi('Folded', s:voidGray3, s:none, 'none')
call <sid>hi('IncSearch', s:voidBlack, s:voidGold, 'none')
call <sid>hi('LineNr', s:voidGray3, s:voidBlack, 'none')
call <sid>hi('MatchParen', s:none, s:voidGray2, 'bold')
call <sid>hi('Normal', s:voidCream, s:voidBlack, 'none')
call <sid>hi('Pmenu', s:voidBlack, s:voidGray4, 'none')
call <sid>hi('PmenuSel', s:none, s:voidGray2, 'none')
call <sid>hi('Search', s:voidBlack, s:voidGold, 'none')
call <sid>hi('SignColumn', s:none, s:voidBlack, 'bold')
call <sid>hi('StatusLine', s:voidCream, s:voidGray0, 'none')
call <sid>hi('StatusLineNC', s:voidGray3, s:voidGray0, 'none')
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
call <sid>hi('DiffAdd', s:voidGreen, s:none, 'none')
call <sid>hi('DiffChange', s:voidGold, s:none, 'none')
call <sid>hi('DiffDelete', s:voidRed2, s:none, 'none')
call <sid>hi('DiffText', s:voidBlue, s:none, 'none')
call <sid>hi('ErrorMsg', s:voidCream, s:voidRed1, 'none')
call <sid>hi('Float', s:voidCream, s:none, 'none')
call <sid>hi('Function', s:voidCream, s:none, 'none')
call <sid>hi('Identifier', s:voidCream, s:none, 'none')
call <sid>hi('Keyword', s:voidCream, s:none, 'none')
call <sid>hi('Label', s:voidCream, s:none, 'none')
call <sid>hi('NonText', s:voidGray3, s:none, 'none')
call <sid>hi('Number', s:voidCream, s:none, 'none')
call <sid>hi('Operator', s:voidCream, s:none, 'none')
call <sid>hi('PreProc', s:voidCream, s:none, 'none')
call <sid>hi('QuickFixLine', s:voidBlack, s:voidGold, 'none')
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
call <sid>hi('WarningMsg', s:voidCream, s:voidRed1, 'none')
call <sid>hi('WildMenu', s:voidBlack, s:voidBlue, 'none')

" Neovim Treesitter
call <sid>hi('TSError', s:voidRed2, s:none, 'none')
call <sid>hi('TSComment', s:voidGray3, s:none, 'none')
call <sid>hi('TSPunctDelimiter', s:voidCream, s:none, 'none')
call <sid>hi('TSPunctBracket', s:voidCream, s:none, 'none')
call <sid>hi('TSPunctSpecial', s:voidCream, s:none, 'none')

call <sid>hi('TSConstant', s:voidCream, s:none, 'none')
call <sid>hi('TSConstBuiltin', s:voidCream, s:none, 'none')
call <sid>hi('TSConstMacro', s:voidCream, s:none, 'none')
call <sid>hi('TSStringRegex', s:voidGray4, s:none, 'none')
call <sid>hi('TSString', s:voidGray4, s:none, 'none')
call <sid>hi('TSStringEscape', s:voidCream, s:none, 'none')
call <sid>hi('TSCharacter', s:voidGray4, s:none, 'none')
call <sid>hi('TSNumber', s:voidCream, s:none, 'none')
call <sid>hi('TSBoolean', s:voidCream, s:none, 'none')
call <sid>hi('TSFloat', s:voidCream, s:none, 'none')
call <sid>hi('TSAnnotation', s:voidCream, s:none, 'none')
call <sid>hi('TSAttribute', s:voidCream, s:none, 'none')
call <sid>hi('TSNamespace', s:voidCream, s:none, 'none')

call <sid>hi('TSFuncBuiltin', s:voidCream, s:none, 'none')
call <sid>hi('TSFunction', s:voidCream, s:none, 'none')
call <sid>hi('TSFuncMacro', s:voidCream, s:none, 'none')
call <sid>hi('TSParameter', s:voidCream, s:none, 'none')
call <sid>hi('TSParameterReference', s:voidCream, s:none, 'none')
call <sid>hi('TSMethod', s:voidCream, s:none, 'none')
call <sid>hi('TSField', s:voidCream, s:none, 'none')
call <sid>hi('TSProperty', s:voidCream, s:none, 'none')
call <sid>hi('TSConstructor', s:voidCream, s:none, 'none')

call <sid>hi('TSConditional', s:voidCream, s:none, 'bold')
call <sid>hi('TSRepeat', s:voidCream, s:none, 'none')
call <sid>hi('TSLabel', s:voidCream, s:none, 'none')
call <sid>hi('TSKeyword', s:voidCream, s:none, 'bold')
call <sid>hi('TSKeywordFunction', s:voidCream, s:none, 'bold')
call <sid>hi('TSKeywordOperator', s:voidCream, s:none, 'none')
call <sid>hi('TSOperator', s:voidCream, s:none, 'none')
call <sid>hi('TSException', s:voidCream, s:none, 'none')
call <sid>hi('TSType', s:voidCream, s:none, 'none')
call <sid>hi('TSTypeBuiltin', s:voidCream, s:none, 'none')
call <sid>hi('TSStructure', s:voidCream, s:none, 'none')
call <sid>hi('TSInclude', s:voidCream, s:none, 'none')

call <sid>hi('TSVariable', s:voidCream, s:none, 'none')
call <sid>hi('TSVariableBuiltin', s:voidCream, s:none, 'none')

call <sid>hi('TSText', s:voidCream, s:none, 'none')
call <sid>hi('TSStrong', s:voidCream, s:none, 'bold')
call <sid>hi('TSEmphasis', s:voidCream, s:none, 'italic')
call <sid>hi('TSUnderline', s:voidCream, s:none, 'underline')
call <sid>hi('TSTitle', s:voidCream, s:none, 'none')
call <sid>hi('TSLiteral', s:voidCream, s:none, 'none')
call <sid>hi('TSURI', s:voidBlue, s:none, 'none')

call <sid>hi('TSTag', s:voidCream, s:none, 'none')
call <sid>hi('TSTagDelimiter', s:voidCream, s:none, 'none')

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
call <sid>hi('asciidoctorExampleBlock', s:voidGray4, s:none, 'none')
call <sid>hi('asciidoctorFile', s:voidGray4, s:none, 'none')
call <sid>hi('asciidoctorItalic', s:voidCream, s:none, 'italic')
call <sid>hi('asciidoctorListContinuation', s:voidGray2, s:none, 'none')
call <sid>hi('asciidoctorListMarker', s:voidGray4, s:none, 'none')
call <sid>hi('asciidoctorListingBlock', s:voidGray4, s:none, 'none')
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
call <sid>hi('mailHeader', s:voidGray4, s:none, 'none')

" Make
call <sid>hi('makeTarget', s:voidCream, s:none, 'bold')
call <sid>hi('makeSpecTarget', s:voidCream, s:none, 'none')

" Markdown
call <sid>hi('mkdFootnotes', s:voidGray3, s:none, 'underline')
call <sid>hi('mkdLinkDef', s:voidGray3, s:none, 'none')
call <sid>hi('mkdCode', s:voidGray4, s:none, 'none')
call <sid>hi('mkdHeading', s:voidGold, s:none, 'bold')
call <sid>hi('mkdLineBreak', s:none, s:voidRed2, 'none')
call <sid>hi('mkdInlineURL', s:voidCream, s:none, 'underline')

" org-mode
call <sid>hi('orgTodo', s:voidGreen, s:none, 'none')
call <sid>hi('orgDone', s:voidGray3, s:none, 'none')
call <sid>hi('orgTag', s:voidGray4, s:none, 'none')
call <sid>hi('orgOption', s:voidGray3, s:none, 'none')
call <sid>hi('orgBlockDelimiter', s:voidGray3, s:none, 'none')
call <sid>hi('orgCode', s:voidCream, s:none, 'none')

" orgmode.nvim
call <sid>hi('OrgTSHeadlineLevel1', s:voidCream, s:none, 'bold')
call <sid>hi('OrgTSHeadlineLevel2', s:voidCream, s:none, 'bold')
call <sid>hi('OrgTSHeadlineLevel3', s:voidCream, s:none, 'bold')
call <sid>hi('OrgTSComment', s:voidGray3, s:none, 'none')
call <sid>hi('OrgTSTag', s:voidGray4, s:none, 'none')
call <sid>hi('OrgTSTimestampActive', s:voidGray4, s:none, 'none')
call <sid>hi('OrgTSPropertyDrawer', s:voidGray3, s:none, 'none')
call <sid>hi('OrgTSDirective', s:voidGray3, s:none, 'none')
call <sid>hi('OrgTSCheckboxChecked', s:voidGray3, s:none, 'none')
call <sid>hi('OrgTSCheckboxHalfChecked', s:voidGray4, s:none, 'none')
call <sid>hi('OrgTSCheckboxUnchecked', s:voidGray4, s:none, 'none')

" Python
call <sid>hi('pythonImport', s:voidCream, s:none, 'none')
call <sid>hi('pythonConditional', s:voidCream, s:none, 'bold')
call <sid>hi('pythonStrFormat', s:voidGray4, s:none, 'bold')

" Quickfix
call <sid>hi('qfError', s:voidCream, s:voidRed2, 'bold')
call <sid>hi('qfFileName', s:voidGray3, s:none, 'none')
call <sid>hi('qfLineNr', s:voidGray3, s:none, 'italic')

" Rust
call <sid>hi('rustConditional', s:voidCream, s:none, 'bold')
call <sid>hi('rustKeyword', s:voidCream, s:none, 'bold')
call <sid>hi('rustRepeat', s:voidCream, s:none, 'bold')
call <sid>hi('rustStorage', s:voidCream, s:none, 'bold')
call <sid>hi('rustStructure', s:voidCream, s:none, 'bold')

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

" Dirvish
call <sid>hi('DirvishPathTail', s:voidBlue, s:none, 'none')
call <sid>hi('DirvishArg', s:voidCream, s:none, 'none')

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
call <sid>hi('fugitiveHeading', s:voidCream, s:none, 'bold')
call <sid>hi('fugitiveUntrackedHeading', s:voidCream, s:none, 'bold')
call <sid>hi('fugitiveUnstagedHeading', s:voidCream, s:none, 'bold')
call <sid>hi('fugitiveStagedHeading', s:voidCream, s:none, 'bold')
call <sid>hi('fugitiveSymbolicRef', s:voidGray4, s:none, 'none')
call <sid>hi('fugitiveStagedModifier', s:voidGreen, s:none, 'none')

" Signify
call <sid>hi('SignifySignAdd', s:voidGreen, s:voidBlack, 'bold')
call <sid>hi('SignifySignChange', s:voidBlue, s:voidBlack, 'bold')
call <sid>hi('SignifySignDelete', s:voidRed2, s:voidBlack, 'bold')

" vim help
call <sid>hi('helpHyperTextJump', s:voidBlue, s:none, 'none')
