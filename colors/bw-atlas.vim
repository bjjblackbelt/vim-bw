" bw-atlas.vim
" By Michał Góral
"
" This theme is based on Atlas by huyvohcmc, which is available
" here: https://github.com/huyvohcmc/atlas.vim

scriptencoding utf-8
hi clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name="bw-atlas"

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

let s:black = {'gui': '#212121', 'cterm256': '235'}
let s:white = {'gui': '#c0c0c0', 'cterm256': '255'}
let s:brightwhite = {'gui': '#ffffff', 'cterm256': '15'}
let s:gray1 = {'gui': '#444444', 'cterm256': '238'}
let s:gray2 = {'gui': '#666666', 'cterm256': '242'}
let s:gray3 = {'gui': '#999999', 'cterm256': '246'}
let s:gray4 = {'gui': '#d0d0d0', 'cterm256': '250'}
let s:blue = {'gui': '#73cef4', 'cterm256': '81'}
let s:green = {'gui': '#9faa00', 'cterm256': '142'}
let s:gold = {'gui': '#ffc24b', 'cterm256': '215'}
let s:red = {'gui': '#f43753', 'cterm256': '203'}
let s:none = {'gui': 'NONE', 'cterm256': 'NONE'}


" ==========================
" Definitions
" ==========================
"    <sid>hi(GROUP, FOREGROUND, BACKGROUND, ATTRIBUTE)

" Editor
call <sid>hi('ColorColumn', s:none, s:black, 'none')
call <sid>hi('Cursor', s:black, s:white, 'none')
call <sid>hi('CursorColumn', s:none, s:black, 'none')
call <sid>hi('CursorLine', s:none, s:black, 'none')
call <sid>hi('CursorLineNr', s:white, s:black, 'bold')
call <sid>hi('Directory', s:white, s:black, 'none')
call <sid>hi('FoldColumn', s:none, s:black, 'none')
call <sid>hi('Folded', s:gray2, s:none, 'none')
call <sid>hi('IncSearch', s:black, s:brightwhite, 'underline,bold')
call <sid>hi('LineNr', s:gray2, s:black, 'none')
call <sid>hi('MatchParen', s:red, s:none, 'bold')
call <sid>hi('Normal', s:white, s:black, 'none')
call <sid>hi('Pmenu', s:white, s:gray1, 'none')
call <sid>hi('PmenuSel', s:none, s:gray2, 'none')
call <sid>hi('Search', s:brightwhite, s:none, 'underline,bold')
call <sid>hi('SignColumn', s:gray3, s:black, 'bold')
call <sid>hi('StatusLine', s:black, s:white, 'none')
call <sid>hi('StatusLineNC', s:gray2, s:black, 'none')
call <sid>hi('VertSplit', s:gray2, s:none, 'none')
call <sid>hi('Visual', s:black, s:gray4, 'none')

" General
call <sid>hi('Boolean', s:white, s:none, 'none')
call <sid>hi('Character', s:white, s:none, 'none')
call <sid>hi('Comment', s:gray2, s:none, 'none')
call <sid>hi('Conceal', s:gray2, s:none, 'none')
call <sid>hi('Conditional', s:white, s:none, 'none')
call <sid>hi('Constant', s:white, s:none, 'none')
call <sid>hi('Define', s:white, s:none, 'none')
call <sid>hi('DiffAdd', s:black, s:green, 'none')
call <sid>hi('DiffChange', s:black, s:gold, 'none')
call <sid>hi('DiffDelete', s:white, s:red, 'none')
call <sid>hi('DiffText', s:gray2, s:blue, 'none')
call <sid>hi('ErrorMsg', s:white, s:red, 'none')
call <sid>hi('Float', s:white, s:none, 'none')
call <sid>hi('Function', s:white, s:none, 'none')
call <sid>hi('Identifier', s:white, s:none, 'none')
call <sid>hi('Keyword', s:white, s:none, 'none')
call <sid>hi('Label', s:white, s:none, 'none')
call <sid>hi('NonText', s:gray2, s:none, 'none')
call <sid>hi('Number', s:white, s:none, 'none')
call <sid>hi('Operator', s:white, s:none, 'none')
call <sid>hi('PreProc', s:white, s:none, 'none')
call <sid>hi('QuickFixLine', s:white, s:gold, 'none')
call <sid>hi('Special', s:white, s:none, 'none')
call <sid>hi('SpecialKey', s:white, s:none, 'none')
call <sid>hi('SpellBad', s:red, s:none, 'italic,undercurl')
call <sid>hi('SpellCap', s:white, s:none, 'italic,undercurl')
call <sid>hi('SpellLocal', s:white, s:none, 'undercurl')
call <sid>hi('Statement', s:white, s:none, 'bold')
call <sid>hi('StorageClass', s:white, s:none, 'none')
call <sid>hi('String', s:gray3, s:none, 'none')
call <sid>hi('Tag', s:white, s:none, 'none')
call <sid>hi('Title', s:white, s:none, 'bold')
call <sid>hi('Todo', s:gold, s:none, 'bold')
call <sid>hi('Type', s:none, s:none, 'none')
call <sid>hi('Underlined', s:none, s:none, 'underline')
call <sid>hi('WarningMsg', s:white, s:red, 'none')
call <sid>hi('WildMenu', s:white, s:blue, 'none')

call <sid>hi('DiffAdd', s:green, s:none, 'underline')
call <sid>hi('DiffChange', s:gold, s:none, 'underline')
call <sid>hi('DiffDelete', s:red, s:none, 'underline')
call <sid>hi('DiffText', s:blue, s:none, 'underline')

" Neovim Treesitter
call <sid>hi('TSError', s:red, s:none, 'none')
call <sid>hi('TSComment', s:gray2, s:none, 'none')
call <sid>hi('TSPunctDelimiter', s:white, s:none, 'none')
call <sid>hi('TSPunctBracket', s:white, s:none, 'none')
call <sid>hi('TSPunctSpecial', s:white, s:none, 'none')

call <sid>hi('TSConstant', s:white, s:none, 'none')
call <sid>hi('TSConstBuiltin', s:white, s:none, 'none')
call <sid>hi('TSConstMacro', s:white, s:none, 'none')
call <sid>hi('TSStringRegex', s:gray3, s:none, 'none')
call <sid>hi('TSString', s:gray3, s:none, 'none')
call <sid>hi('TSStringEscape', s:white, s:none, 'none')
call <sid>hi('TSCharacter', s:gray3, s:none, 'none')
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
call <sid>hi('TSTitle', s:white, s:none, 'none')
call <sid>hi('TSLiteral', s:white, s:none, 'none')
call <sid>hi('TSURI', s:blue, s:none, 'none')

call <sid>hi('TSTag', s:white, s:none, 'none')
call <sid>hi('TSTagDelimiter', s:white, s:none, 'none')

" ------------
" Languages
" ------------

" AsciiDoc
call <sid>hi('asciidocAttributeEntry', s:gray2, s:none, 'none')
call <sid>hi('asciidocAttributeRef', s:gray2, s:none, 'none')
call <sid>hi('asciidocListingBlock', s:gray3, s:none, 'none')
call <sid>hi('asciidocLiteralBlock', s:gray3, s:none, 'none')
call <sid>hi('asciidocMacro', s:gray3, s:none, 'none')
call <sid>hi('asciidocMacroAttributes', s:gray3, s:none, 'none')
call <sid>hi('asciidocPassthroughBlock', s:gray3, s:none, 'none')
call <sid>hi('asciidocQuotedBold', s:white, s:none, 'bold')
call <sid>hi('asciidocQuotedEmphasized', s:white, s:none, 'italic')
call <sid>hi('asciidocQuotedMonospaced2', s:gray3, s:none, 'none')
call <sid>hi('asciidocQuotedUnconstrainedBold', s:white, s:none, 'bold')
call <sid>hi('asciidocQuotedUnconstrainedEmphasized', s:white, s:none, 'italic')
call <sid>hi('asciidocRefMacro', s:gray3, s:none, 'none')
call <sid>hi('asciidocTableDelimiter', s:gray2, s:none, 'none')
call <sid>hi('asciidocTablePrefix', s:gray2, s:none, 'none')
call <sid>hi('asciidocURL', s:white, s:none, 'underline')

" Asciidoctor
call <sid>hi('asciidoctorAnchor', s:blue, s:none, 'underline')
call <sid>hi('asciidoctorLink', s:blue, s:none, 'underline')
call <sid>hi('asciidoctorBlock', s:gray2, s:none, 'none')
call <sid>hi('asciidoctorBlockOptions', s:gray2, s:none, 'none')
call <sid>hi('asciidoctorBold', s:white, s:none, 'bold')
call <sid>hi('asciidoctorCode', s:gray3, s:none, 'none')
call <sid>hi('asciidoctorFile', s:gray3, s:none, 'none')
call <sid>hi('asciidoctorItalic', s:white, s:none, 'italic')
call <sid>hi('asciidoctorListContinuation', s:gray1, s:none, 'none')
call <sid>hi('asciidoctorListMarker', s:gray2, s:none, 'none')
call <sid>hi('asciidoctorLiteralBlock', s:gray2, s:none, 'none')
call <sid>hi('asciidoctorOption', s:gray2, s:none, 'none')
call <sid>hi('asciidoctorSourceBlock', s:gray3, s:none, 'none')
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
call <sid>hi('cString', s:gray3, s:none, 'none')
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
call <sid>hi('cppString', s:gray3, s:none, 'none')
call <sid>hi('cppStructure', s:white, s:none, 'bold')
call <sid>hi('cppType', s:white, s:none, 'none')

" CSS
call <sid>hi('cssTagName', s:white, s:none, 'bold')
call <sid>hi('cssClassName', s:white, s:none, 'bold')
call <sid>hi('cssAtRule', s:white, s:none, 'bold')
call <sid>hi('cssColor', s:gray3, s:none, 'none')

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
call <sid>hi('ledgerPostingMetadata', s:gray2, s:none, 'none')
call <sid>hi('ledgerTag', s:gray2, s:none, 'none')
call <sid>hi('ledgerTags', s:gray2, s:none, 'none')
call <sid>hi('ledgerTransaction', s:white, s:none, 'bold')
call <sid>hi('ledgerTransactionDate', s:white, s:none, 'bold')
call <sid>hi('ledgerTransactionMetadata', s:gray2, s:none, 'none')

" Mail
call <sid>hi('mailHeaderKey', s:gray2, s:none, 'none')
call <sid>hi('mailHeader', s:gray2, s:none, 'none')

" Make
call <sid>hi('makeTarget', s:white, s:none, 'bold')
call <sid>hi('makeSpecTarget', s:white, s:none, 'none')

" Markdown
call <sid>hi('mkdFootnotes', s:gray2, s:none, 'underline')
call <sid>hi('mkdLinkDef', s:gray2, s:none, 'none')
call <sid>hi('mkdCode', s:gray3, s:none, 'none')
call <sid>hi('mkdHeading', s:gold, s:none, 'bold')
call <sid>hi('mkdLineBreak', s:none, s:red, 'none')
call <sid>hi('mkdInlineURL', s:white, s:none, 'underline')

" org-mode
call <sid>hi('orgTodo', s:green, s:none, 'none')
call <sid>hi('orgDone', s:gray2, s:none, 'none')
call <sid>hi('orgTag', s:gray2, s:none, 'none')
call <sid>hi('orgOption', s:gray2, s:none, 'none')
call <sid>hi('orgBlockDelimiter', s:gray2, s:none, 'none')
call <sid>hi('orgCode', s:white, s:none, 'none')

" orgmode.nvim
call <sid>hi('OrgTSHeadlineLevel1', s:white, s:none, 'bold')
call <sid>hi('OrgTSHeadlineLevel2', s:white, s:none, 'bold')
call <sid>hi('OrgTSHeadlineLevel3', s:white, s:none, 'bold')
call <sid>hi('OrgTSComment', s:gray2, s:none, 'none')
call <sid>hi('OrgTSTag', s:gray2, s:none, 'none')
call <sid>hi('OrgTSTimestampActive', s:gray2, s:none, 'none')
call <sid>hi('OrgTSPropertyDrawer', s:gray2, s:none, 'none')
call <sid>hi('OrgTSDirective', s:gray2, s:none, 'none')
call <sid>hi('OrgTSCheckboxChecked', s:gray2, s:none, 'none')
call <sid>hi('OrgTSCheckboxHalfChecked', s:gray2, s:none, 'none')
call <sid>hi('OrgTSCheckboxUnchecked', s:gray2, s:none, 'none')

" Python
call <sid>hi('pythonImport', s:white, s:none, 'none')
call <sid>hi('pythonConditional', s:white, s:none, 'bold')
call <sid>hi('pythonStrFormat', s:gray3, s:none, 'bold')

" Quickfix
call <sid>hi('qfError', s:white, s:red, 'bold')
call <sid>hi('qfFileName', s:gray2, s:none, 'none')
call <sid>hi('qfLineNr', s:gray2, s:none, 'italic')

" Rust
call <sid>hi('rustConditional', s:white, s:none, 'bold')
call <sid>hi('rustKeyword', s:white, s:none, 'bold')
call <sid>hi('rustRepeat', s:white, s:none, 'bold')
call <sid>hi('rustStorage', s:white, s:none, 'bold')
call <sid>hi('rustStructure', s:white, s:none, 'bold')

" SH
call <sid>hi('shShebang', s:gray2, s:none, 'italic')
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
call <sid>hi('fugitiveSymbolicRef', s:gray3, s:none, 'none')
call <sid>hi('fugitiveStagedModifier', s:green, s:none, 'none')

" Signify
call <sid>hi('SignifySignAdd', s:green, s:black, 'bold')
call <sid>hi('SignifySignChange', s:blue, s:black, 'bold')
call <sid>hi('SignifySignDelete', s:red, s:black, 'bold')

" vim help
call <sid>hi('helpHyperTextJump', s:blue, s:none, 'none')
