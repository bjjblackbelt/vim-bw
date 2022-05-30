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
let s:gray1 = {'gui': '#2C323C', 'cterm256': '239'}
let s:gray2 = {'gui': '#4B5263', 'cterm256': '240'}
let s:gray3 = {'gui': '#5C6370', 'cterm256': '241'}
let s:gray4 = {'gui': '#ECEFF4', 'cterm256': '242'}
let s:gray = {'gui': '#ABB2BF', 'cterm256': '230'}
let s:blue = {'gui': '#61AFEF', 'cterm256': '109'}
let s:green = {'gui': '#98C379', 'cterm256': '64'}
let s:gold = {'gui': '#E5C07B', 'cterm256': '136'}
let s:red = {'gui': '#E06C75', 'cterm256': '196'}
let s:none = {'gui': 'NONE', 'cterm256': 'NONE'}

" ==========================
" Definitions
" ==========================
"    <sid>hi(GROUP, FOREGROUND, BACKGROUND, ATTRIBUTE)

" Editor
call <sid>hi('ColorColumn', s:none, s:gray1, 'none')
call <sid>hi('Cursor', s:black, s:gray, 'none')
call <sid>hi('CursorColumn', s:none, s:gray1, 'none')
call <sid>hi('CursorLine', s:none, s:gray1, 'none')
call <sid>hi('CursorLineNr', s:gray, s:gray1, 'bold')
call <sid>hi('Directory', s:gray, s:black, 'none')
call <sid>hi('FoldColumn', s:none, s:black, 'none')
call <sid>hi('Folded', s:gray3, s:none, 'none')
call <sid>hi('IncSearch', s:black, s:gold, 'none')
call <sid>hi('LineNr', s:gray3, s:black, 'none')
call <sid>hi('MatchParen', s:none, s:gray2, 'bold')
call <sid>hi('Normal', s:gray, s:black, 'none')
call <sid>hi('Pmenu', s:gray, s:gray2, 'none')
call <sid>hi('PmenuSel', s:none, s:gray1, 'none')
call <sid>hi('Search', s:black, s:gold, 'none')
call <sid>hi('SignColumn', s:none, s:black, 'bold')
call <sid>hi('StatusLine', s:black, s:gray, 'none')
call <sid>hi('StatusLineNC', s:gray3, s:black, 'none')
call <sid>hi('VertSplit', s:gray3, s:none, 'none')
call <sid>hi('Visual', s:none, s:gray2, 'none')

" General
call <sid>hi('Boolean', s:gray, s:none, 'none')
call <sid>hi('Character', s:gray, s:none, 'none')
call <sid>hi('Comment', s:gray3, s:none, 'none')
call <sid>hi('Conceal', s:gray4, s:none, 'none')
call <sid>hi('Conditional', s:gray, s:none, 'none')
call <sid>hi('Constant', s:gray, s:none, 'none')
call <sid>hi('Define', s:gray, s:none, 'none')
call <sid>hi('DiffAdd', s:black, s:green, 'none')
call <sid>hi('DiffChange', s:black, s:gold, 'none')
call <sid>hi('DiffDelete', s:gray, s:red, 'none')
call <sid>hi('DiffText', s:gray1, s:blue, 'none')
call <sid>hi('ErrorMsg', s:black, s:red, 'none')
call <sid>hi('Float', s:gray, s:none, 'none')
call <sid>hi('Function', s:gray, s:none, 'none')
call <sid>hi('Identifier', s:gray, s:none, 'none')
call <sid>hi('Keyword', s:gray, s:none, 'none')
call <sid>hi('Label', s:gray, s:none, 'none')
call <sid>hi('NonText', s:gray3, s:none, 'none')
call <sid>hi('Number', s:gray, s:none, 'none')
call <sid>hi('Operator', s:gray, s:none, 'none')
call <sid>hi('PreProc', s:gray, s:none, 'none')
call <sid>hi('QuickFixLine', s:black, s:gold, 'none')
call <sid>hi('Special', s:gray, s:none, 'none')
call <sid>hi('SpecialKey', s:gray, s:none, 'none')
call <sid>hi('SpellBad', s:red, s:none, 'italic,undercurl')
call <sid>hi('SpellCap', s:gray, s:none, 'italic,undercurl')
call <sid>hi('SpellLocal', s:gray, s:none, 'undercurl')
call <sid>hi('Statement', s:gray, s:none, 'bold')
call <sid>hi('StorageClass', s:gray, s:none, 'none')
call <sid>hi('String', s:gray4, s:none, 'none')
call <sid>hi('Tag', s:gray, s:none, 'none')
call <sid>hi('Title', s:gray, s:none, 'bold')
call <sid>hi('Todo', s:gray3, s:none, 'inverse,bold')
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
call <sid>hi('TSComment', s:gray3, s:none, 'none')
call <sid>hi('TSPunctDelimiter', s:gray, s:none, 'none')
call <sid>hi('TSPunctBracket', s:gray, s:none, 'none')
call <sid>hi('TSPunctSpecial', s:gray, s:none, 'none')

call <sid>hi('TSConstant', s:gray, s:none, 'none')
call <sid>hi('TSConstBuiltin', s:gray, s:none, 'none')
call <sid>hi('TSConstMacro', s:gray, s:none, 'none')
call <sid>hi('TSStringRegex', s:gray4, s:none, 'none')
call <sid>hi('TSString', s:gray4, s:none, 'none')
call <sid>hi('TSStringEscape', s:gray, s:none, 'none')
call <sid>hi('TSCharacter', s:gray4, s:none, 'none')
call <sid>hi('TSNumber', s:gray, s:none, 'none')
call <sid>hi('TSBoolean', s:gray, s:none, 'none')
call <sid>hi('TSFloat', s:gray, s:none, 'none')
call <sid>hi('TSAnnotation', s:gray, s:none, 'none')
call <sid>hi('TSAttribute', s:gray, s:none, 'none')
call <sid>hi('TSNamespace', s:gray, s:none, 'none')

call <sid>hi('TSFuncBuiltin', s:gray, s:none, 'none')
call <sid>hi('TSFunction', s:gray, s:none, 'none')
call <sid>hi('TSFuncMacro', s:gray, s:none, 'none')
call <sid>hi('TSParameter', s:gray, s:none, 'none')
call <sid>hi('TSParameterReference', s:gray, s:none, 'none')
call <sid>hi('TSMethod', s:gray, s:none, 'none')
call <sid>hi('TSField', s:gray, s:none, 'none')
call <sid>hi('TSProperty', s:gray, s:none, 'none')
call <sid>hi('TSConstructor', s:gray, s:none, 'none')

call <sid>hi('TSConditional', s:gray, s:none, 'bold')
call <sid>hi('TSRepeat', s:gray, s:none, 'bold')
call <sid>hi('TSLabel', s:gray, s:none, 'none')
call <sid>hi('TSKeyword', s:gray, s:none, 'bold')
call <sid>hi('TSKeywordFunction', s:gray, s:none, 'bold')
call <sid>hi('TSKeywordOperator', s:gray, s:none, 'none')
call <sid>hi('TSOperator', s:gray, s:none, 'none')
call <sid>hi('TSException', s:gray, s:none, 'none')
call <sid>hi('TSType', s:gray, s:none, 'none')
call <sid>hi('TSTypeBuiltin', s:gray, s:none, 'none')
call <sid>hi('TSStructure', s:gray, s:none, 'none')
call <sid>hi('TSInclude', s:gray, s:none, 'none')

call <sid>hi('TSVariable', s:gray, s:none, 'none')
call <sid>hi('TSVariableBuiltin', s:gray, s:none, 'none')

call <sid>hi('TSText', s:gray, s:none, 'none')
call <sid>hi('TSStrong', s:gray, s:none, 'bold')
call <sid>hi('TSEmphasis', s:gray, s:none, 'italic')
call <sid>hi('TSUnderline', s:gray, s:none, 'underline')
call <sid>hi('TSTitle', s:gray, s:none, 'none')
call <sid>hi('TSLiteral', s:gray, s:none, 'none')
call <sid>hi('TSURI', s:blue, s:none, 'none')

call <sid>hi('TSTag', s:gray, s:none, 'none')
call <sid>hi('TSTagDelimiter', s:gray, s:none, 'none')

" ------------
" Languages
" ------------

" AsciiDoc
call <sid>hi('asciidocAttributeEntry', s:gray3, s:none, 'none')
call <sid>hi('asciidocAttributeRef', s:gray3, s:none, 'none')
call <sid>hi('asciidocListingBlock', s:gray4, s:none, 'none')
call <sid>hi('asciidocLiteralBlock', s:gray4, s:none, 'none')
call <sid>hi('asciidocMacro', s:gray4, s:none, 'none')
call <sid>hi('asciidocMacroAttributes', s:gray4, s:none, 'none')
call <sid>hi('asciidocPassthroughBlock', s:gray4, s:none, 'none')
call <sid>hi('asciidocQuotedBold', s:gray, s:none, 'bold')
call <sid>hi('asciidocQuotedEmphasized', s:gray, s:none, 'italic')
call <sid>hi('asciidocQuotedMonospaced2', s:gray4, s:none, 'none')
call <sid>hi('asciidocQuotedUnconstrainedBold', s:gray, s:none, 'bold')
call <sid>hi('asciidocQuotedUnconstrainedEmphasized', s:gray, s:none, 'italic')
call <sid>hi('asciidocRefMacro', s:gray4, s:none, 'none')
call <sid>hi('asciidocTableDelimiter', s:gray3, s:none, 'none')
call <sid>hi('asciidocTablePrefix', s:gray3, s:none, 'none')
call <sid>hi('asciidocURL', s:gray, s:none, 'underline')

" Asciidoctor
call <sid>hi('asciidoctorAnchor', s:blue, s:none, 'underline')
call <sid>hi('asciidoctorBlock', s:gray3, s:none, 'none')
call <sid>hi('asciidoctorBlockOptions', s:gray3, s:none, 'none')
call <sid>hi('asciidoctorBold', s:gray, s:none, 'bold')
call <sid>hi('asciidoctorCode', s:gray4, s:none, 'none')
call <sid>hi('asciidoctorFile', s:gray4, s:none, 'none')
call <sid>hi('asciidoctorItalic', s:gray, s:none, 'italic')
call <sid>hi('asciidoctorListContinuation', s:gray2, s:none, 'none')
call <sid>hi('asciidoctorListMarker', s:gray4, s:none, 'none')
call <sid>hi('asciidoctorLiteralBlock', s:gray4, s:none, 'none')
call <sid>hi('asciidoctorOption', s:gray3, s:none, 'none')
call <sid>hi('asciidoctorSourceBlock', s:gray4, s:none, 'none')
call <sid>hi('asciidoctorUrlDescription', s:gray, s:none, 'none')

" C
call <sid>hi('cConditional', s:gray, s:none, 'bold')
call <sid>hi('cConstant', s:gray, s:none, 'none')
call <sid>hi('cFormat', s:gray, s:none, 'none')
call <sid>hi('cMulti', s:gray, s:none, 'none')
call <sid>hi('cNumbers', s:gray, s:none, 'none')
call <sid>hi('cOperator', s:gray, s:none, 'none')
call <sid>hi('cSpecial', s:gray, s:none, 'none')
call <sid>hi('cSpecialCharacter', s:gray, s:none, 'none')
call <sid>hi('cStatement', s:gray, s:none, 'bold')
call <sid>hi('cStorageClass', s:gray, s:none, 'none')
call <sid>hi('cString', s:gray4, s:none, 'none')
call <sid>hi('cStructure', s:gray, s:none, 'bold')
call <sid>hi('cType', s:gray, s:none, 'none')

" C++
call <sid>hi('cppConditional', s:gray, s:none, 'bold')
call <sid>hi('cppConstant', s:gray, s:none, 'none')
call <sid>hi('cppFormat', s:gray, s:none, 'none')
call <sid>hi('cppMulti', s:gray, s:none, 'none')
call <sid>hi('cppNumbers', s:gray, s:none, 'none')
call <sid>hi('cppOperator', s:gray, s:none, 'none')
call <sid>hi('cppSpecial', s:gray, s:none, 'none')
call <sid>hi('cppSpecialCharacter', s:gray, s:none, 'none')
call <sid>hi('cppStatement', s:gray, s:none, 'bold')
call <sid>hi('cppStorageClass', s:gray, s:none, 'none')
call <sid>hi('cppString', s:gray4, s:none, 'none')
call <sid>hi('cppStructure', s:gray, s:none, 'bold')
call <sid>hi('cppType', s:gray, s:none, 'none')

" CSS
call <sid>hi('cssTagName', s:gray, s:none, 'bold')
call <sid>hi('cssClassName', s:gray, s:none, 'bold')
call <sid>hi('cssAtRule', s:gray, s:none, 'bold')
call <sid>hi('cssColor', s:gray4, s:none, 'none')

" diff
call <sid>hi('diffFile', s:gray, s:none, 'bold')
call <sid>hi('diffAdded', s:green, s:none, 'none')
call <sid>hi('diffRemoved', s:red, s:none, 'none')

" HTML
call <sid>hi('htmlArg', s:gray, s:none, 'none')
call <sid>hi('htmlEndTag', s:gray, s:none, 'none')
call <sid>hi('htmlSpecialChar', s:gray, s:none, 'none')
call <sid>hi('htmlSpecialTagName', s:gray, s:none, 'none')
call <sid>hi('htmlTag', s:gray, s:none, 'none')
call <sid>hi('htmlTagName', s:gray, s:none, 'none')
call <sid>hi('htmlItalic', s:gray, s:none, 'italic')
call <sid>hi('htmlBold', s:gray, s:none, 'bold')

" Ledger
call <sid>hi('ledgerAmount', s:gray, s:none, 'italic')
call <sid>hi('ledgerPostingMetadata', s:gray4, s:none, 'none')
call <sid>hi('ledgerTag', s:gray3, s:none, 'none')
call <sid>hi('ledgerTags', s:gray3, s:none, 'none')
call <sid>hi('ledgerTransaction', s:gray, s:none, 'bold')
call <sid>hi('ledgerTransactionDate', s:gray, s:none, 'bold')
call <sid>hi('ledgerTransactionMetadata', s:gray3, s:none, 'none')

" Mail
call <sid>hi('mailHeaderKey', s:gray4, s:none, 'none')
call <sid>hi('mailHeader', s:gray4, s:none, 'none')

" Make
call <sid>hi('makeTarget', s:gray, s:none, 'bold')
call <sid>hi('makeSpecTarget', s:gray, s:none, 'none')

" Markdown
call <sid>hi('mkdFootnotes', s:gray3, s:none, 'underline')
call <sid>hi('mkdLinkDef', s:gray3, s:none, 'none')
call <sid>hi('mkdCode', s:gray4, s:none, 'none')
call <sid>hi('mkdHeading', s:gold, s:none, 'bold')
call <sid>hi('mkdLineBreak', s:none, s:red, 'none')
call <sid>hi('mkdInlineURL', s:gray, s:none, 'underline')

" org-mode
call <sid>hi('orgTodo', s:green, s:none, 'none')
call <sid>hi('orgDone', s:gray3, s:none, 'none')
call <sid>hi('orgTag', s:gray4, s:none, 'none')
call <sid>hi('orgOption', s:gray3, s:none, 'none')
call <sid>hi('orgBlockDelimiter', s:gray3, s:none, 'none')
call <sid>hi('orgCode', s:gray, s:none, 'none')

" orgmode.nvim
call <sid>hi('OrgTSHeadlineLevel1', s:gray, s:none, 'bold')
call <sid>hi('OrgTSHeadlineLevel2', s:gray, s:none, 'bold')
call <sid>hi('OrgTSHeadlineLevel3', s:gray, s:none, 'bold')
call <sid>hi('OrgTSComment', s:gray3, s:none, 'none')
call <sid>hi('OrgTSTag', s:gray4, s:none, 'none')
call <sid>hi('OrgTSTimestampActive', s:gray4, s:none, 'none')
call <sid>hi('OrgTSPropertyDrawer', s:gray3, s:none, 'none')
call <sid>hi('OrgTSDirective', s:gray3, s:none, 'none')
call <sid>hi('OrgTSCheckboxChecked', s:gray3, s:none, 'none')
call <sid>hi('OrgTSCheckboxHalfChecked', s:gray4, s:none, 'none')
call <sid>hi('OrgTSCheckboxUnchecked', s:gray4, s:none, 'none')

" Python
call <sid>hi('pythonImport', s:gray, s:none, 'none')
call <sid>hi('pythonConditional', s:gray, s:none, 'bold')
call <sid>hi('pythonStrFormat', s:gray4, s:none, 'bold')

" Quickfix
call <sid>hi('qfError', s:black, s:red, 'bold')
call <sid>hi('qfFileName', s:gray3, s:none, 'none')
call <sid>hi('qfLineNr', s:gray3, s:none, 'italic')

" Rust
call <sid>hi('rustConditional', s:gray, s:none, 'bold')
call <sid>hi('rustKeyword', s:gray, s:none, 'bold')
call <sid>hi('rustRepeat', s:gray, s:none, 'bold')
call <sid>hi('rustStorage', s:gray, s:none, 'bold')
call <sid>hi('rustStructure', s:gray, s:none, 'bold')

" SH
call <sid>hi('shShebang', s:gray3, s:none, 'italic')
call <sid>hi('shConditional', s:gray, s:none, 'bold')

" XML
call <sid>hi('xmlAttrib', s:gray, s:none, 'none')
call <sid>hi('xmlEndTag', s:gray, s:none, 'none')
call <sid>hi('xmlTag', s:gray, s:none, 'none')
call <sid>hi('xmlTagName', s:gray, s:none, 'none')

" YAML
call <sid>hi('yamlAlias', s:gray, s:none, 'none')
call <sid>hi('yamlAnchor', s:gray, s:none, 'none')
call <sid>hi('yamlDocumentHeader', s:gray, s:none, 'none')
call <sid>hi('yamlKey', s:gray, s:none, 'none')

" ------------
" Plugins
" ------------

" Dirvish
call <sid>hi('DirvishPathTail', s:blue, s:none, 'none')
call <sid>hi('DirvishArg', s:gray, s:none, 'none')

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
call <sid>hi('fugitiveHeading', s:gray, s:none, 'bold')
call <sid>hi('fugitiveUntrackedHeading', s:gray, s:none, 'bold')
call <sid>hi('fugitiveUnstagedHeading', s:gray, s:none, 'bold')
call <sid>hi('fugitiveStagedHeading', s:gray, s:none, 'bold')
call <sid>hi('fugitiveSymbolicRef', s:gray4, s:none, 'none')
call <sid>hi('fugitiveStagedModifier', s:green, s:none, 'none')

" Signify
call <sid>hi('SignifySignAdd', s:green, s:black, 'bold')
call <sid>hi('SignifySignChange', s:blue, s:black, 'bold')
call <sid>hi('SignifySignDelete', s:red, s:black, 'bold')

" vim help
call <sid>hi('helpHyperTextJump', s:blue, s:none, 'none')
