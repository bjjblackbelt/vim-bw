" ==========================
" Highlighting Function
" ==========================
"  >> (inspired by https://github.com/tomasiser/vim-code-dark and https://github.com/chriskempson/base16-vim)
"
fun! bw#hi(group, fg, bg, attr)
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
" Definitions
" ==========================
"    hi(GROUP, FOREGROUND, BACKGROUND, ATTRIBUTE)

fun! bw#init(c) abort
    " Editor
    call bw#hi('ColorColumn', a:c.none, a:c.gray, 'none')
    call bw#hi('Cursor', a:c.black, a:c.white, 'none')
    call bw#hi('CursorColumn', a:c.none, a:c.gray, 'none')
    call bw#hi('CursorLine', a:c.none, a:c.gray, 'none')
    call bw#hi('CursorLineNr', a:c.white, a:c.gray, 'bold')
    call bw#hi('Directory', a:c.white, a:c.black, 'none')
    call bw#hi('FoldColumn', a:c.none, a:c.black, 'none')
    call bw#hi('Folded', a:c.dark_gray, a:c.none, 'none')
    call bw#hi('IncSearch', a:c.black, a:c.gold, 'none')
    call bw#hi('LineNr', a:c.dark_gray, a:c.black, 'none')
    call bw#hi('MatchParen', a:c.none, a:c.medium_gray, 'bold')
    call bw#hi('Normal', a:c.white, a:c.black, 'none')
    call bw#hi('Pmenu', a:c.white, a:c.medium_gray, 'none')
    call bw#hi('PmenuSel', a:c.none, a:c.gray, 'none')
    call bw#hi('Search', a:c.black, a:c.gold, 'none')
    call bw#hi('SignColumn', a:c.none, a:c.black, 'bold')
    call bw#hi('StatusLine', a:c.white, a:c.gray, 'none')
    call bw#hi('StatusLineNC', a:c.dark_gray, a:c.gray, 'none')
    call bw#hi('VertSplit', a:c.dark_gray, a:c.none, 'none')
    call bw#hi('Visual', a:c.none, a:c.medium_gray, 'none')

    " General
    call bw#hi('Boolean', a:c.white, a:c.none, 'none')
    call bw#hi('Character', a:c.bright_white, a:c.none, 'none')
    call bw#hi('Comment', a:c.dark_gray, a:c.none, 'italic')
    call bw#hi('Conceal', a:c.white, a:c.none, 'none')
    call bw#hi('Conditional', a:c.white, a:c.none, 'none')
    call bw#hi('Constant', a:c.white, a:c.none, 'none')
    call bw#hi('Define', a:c.white, a:c.none, 'none')
    call bw#hi('DiffAdd', a:c.black, a:c.green, 'none')
    call bw#hi('DiffChange', a:c.black, a:c.gold, 'none')
    call bw#hi('DiffDelete', a:c.white, a:c.red, 'none')
    call bw#hi('DiffText', a:c.gray, a:c.blue, 'none')
    call bw#hi('ErrorMsg', a:c.black, a:c.red, 'none')
    call bw#hi('Float', a:c.white, a:c.none, 'none')
    call bw#hi('Function', a:c.white, a:c.none, 'none')
    call bw#hi('Identifier', a:c.white, a:c.none, 'none')
    call bw#hi('Keyword', a:c.white, a:c.none, 'none')
    call bw#hi('Label', a:c.white, a:c.none, 'none')
    call bw#hi('NonText', a:c.dark_gray, a:c.none, 'none')
    call bw#hi('Number', a:c.white, a:c.none, 'none')
    call bw#hi('Operator', a:c.white, a:c.none, 'none')
    call bw#hi('PreProc', a:c.white, a:c.none, 'none')
    call bw#hi('QuickFixLine', a:c.black, a:c.gold, 'none')
    call bw#hi('Special', a:c.white, a:c.none, 'none')
    call bw#hi('SpecialKey', a:c.white, a:c.none, 'none')
    call bw#hi('SpellBad', a:c.red, a:c.none, 'italic,undercurl')
    call bw#hi('SpellCap', a:c.white, a:c.none, 'italic,undercurl')
    call bw#hi('SpellLocal', a:c.white, a:c.none, 'undercurl')
    call bw#hi('Statement', a:c.white, a:c.none, 'bold')
    call bw#hi('StorageClass', a:c.white, a:c.none, 'none')
    call bw#hi('String', a:c.bright_white, a:c.none, 'none')
    call bw#hi('Tag', a:c.white, a:c.none, 'none')
    call bw#hi('Title', a:c.bright_white, a:c.none, 'bold')
    call bw#hi('Todo', a:c.dark_gray, a:c.none, 'inverse,bold')
    call bw#hi('Type', a:c.none, a:c.none, 'none')
    call bw#hi('Underlined', a:c.none, a:c.none, 'underline')
    call bw#hi('WarningMsg', a:c.black, a:c.red, 'none')
    call bw#hi('WildMenu', a:c.black, a:c.blue, 'none')

    call bw#hi('DiffAdd', a:c.green, a:c.none, 'underline')
    call bw#hi('DiffChange', a:c.gold, a:c.none, 'underline')
    call bw#hi('DiffDelete', a:c.red, a:c.none, 'underline')
    call bw#hi('DiffText', a:c.blue, a:c.none, 'underline')

    " Neovim Treesitter
    call bw#hi('TSError', a:c.red, a:c.none, 'none')
    call bw#hi('TSComment', a:c.dark_gray, a:c.none, 'italic')
    call bw#hi('TSPunctDelimiter', a:c.white, a:c.none, 'none')
    call bw#hi('TSPunctBracket', a:c.white, a:c.none, 'none')
    call bw#hi('TSPunctSpecial', a:c.white, a:c.none, 'none')

    call bw#hi('TSConstant', a:c.white, a:c.none, 'none')
    call bw#hi('TSConstBuiltin', a:c.white, a:c.none, 'none')
    call bw#hi('TSConstMacro', a:c.white, a:c.none, 'none')
    call bw#hi('TSStringRegex', a:c.bright_white, a:c.none, 'none')
    call bw#hi('TSString', a:c.bright_white, a:c.none, 'none')
    call bw#hi('TSStringEscape', a:c.white, a:c.none, 'none')
    call bw#hi('TSCharacter', a:c.bright_white, a:c.none, 'none')
    call bw#hi('TSNumber', a:c.white, a:c.none, 'none')
    call bw#hi('TSBoolean', a:c.white, a:c.none, 'none')
    call bw#hi('TSFloat', a:c.white, a:c.none, 'none')
    call bw#hi('TSAnnotation', a:c.white, a:c.none, 'none')
    call bw#hi('TSAttribute', a:c.white, a:c.none, 'none')
    call bw#hi('TSNamespace', a:c.white, a:c.none, 'none')

    call bw#hi('TSFuncBuiltin', a:c.white, a:c.none, 'none')
    call bw#hi('TSFunction', a:c.white, a:c.none, 'none')
    call bw#hi('TSFuncMacro', a:c.white, a:c.none, 'none')
    call bw#hi('TSParameter', a:c.white, a:c.none, 'none')
    call bw#hi('TSParameterReference', a:c.white, a:c.none, 'none')
    call bw#hi('TSMethod', a:c.white, a:c.none, 'none')
    call bw#hi('TSField', a:c.white, a:c.none, 'none')
    call bw#hi('TSProperty', a:c.white, a:c.none, 'none')
    call bw#hi('TSConstructor', a:c.white, a:c.none, 'none')

    call bw#hi('TSConditional', a:c.white, a:c.none, 'bold')
    call bw#hi('TSRepeat', a:c.white, a:c.none, 'bold')
    call bw#hi('TSLabel', a:c.white, a:c.none, 'none')
    call bw#hi('TSKeyword', a:c.white, a:c.none, 'bold')
    call bw#hi('TSKeywordFunction', a:c.white, a:c.none, 'bold')
    call bw#hi('TSKeywordOperator', a:c.white, a:c.none, 'none')
    call bw#hi('TSOperator', a:c.white, a:c.none, 'none')
    call bw#hi('TSException', a:c.white, a:c.none, 'none')
    call bw#hi('TSType', a:c.white, a:c.none, 'none')
    call bw#hi('TSTypeBuiltin', a:c.white, a:c.none, 'none')
    call bw#hi('TSStructure', a:c.white, a:c.none, 'none')
    call bw#hi('TSInclude', a:c.white, a:c.none, 'none')

    call bw#hi('TSVariable', a:c.white, a:c.none, 'none')
    call bw#hi('TSVariableBuiltin', a:c.white, a:c.none, 'none')

    call bw#hi('TSText', a:c.white, a:c.none, 'none')
    call bw#hi('TSStrong', a:c.white, a:c.none, 'bold')
    call bw#hi('TSEmphasis', a:c.white, a:c.none, 'italic')
    call bw#hi('TSUnderline', a:c.white, a:c.none, 'underline')
    call bw#hi('TSTitle', a:c.bright_white, a:c.none, 'none')
    call bw#hi('TSLiteral', a:c.white, a:c.none, 'none')
    call bw#hi('TSURI', a:c.blue, a:c.none, 'none')

    call bw#hi('TSTag', a:c.white, a:c.none, 'none')
    call bw#hi('TSTagDelimiter', a:c.white, a:c.none, 'none')

    " ------------
    " Languages
    " ------------

    " AsciiDoc
    call bw#hi('asciidocAttributeEntry', a:c.dark_gray, a:c.none, 'none')
    call bw#hi('asciidocAttributeRef', a:c.dark_gray, a:c.none, 'none')
    call bw#hi('asciidocListingBlock', a:c.bright_white, a:c.none, 'none')
    call bw#hi('asciidocLiteralBlock', a:c.bright_white, a:c.none, 'none')
    call bw#hi('asciidocMacro', a:c.bright_white, a:c.none, 'none')
    call bw#hi('asciidocMacroAttributes', a:c.bright_white, a:c.none, 'none')
    call bw#hi('asciidocPassthroughBlock', a:c.bright_white, a:c.none, 'none')
    call bw#hi('asciidocQuotedBold', a:c.white, a:c.none, 'bold')
    call bw#hi('asciidocQuotedEmphasized', a:c.white, a:c.none, 'italic')
    call bw#hi('asciidocQuotedMonospaced2', a:c.bright_white, a:c.none, 'none')
    call bw#hi('asciidocQuotedUnconstrainedBold', a:c.white, a:c.none, 'bold')
    call bw#hi('asciidocQuotedUnconstrainedEmphasized', a:c.white, a:c.none, 'italic')
    call bw#hi('asciidocRefMacro', a:c.bright_white, a:c.none, 'none')
    call bw#hi('asciidocTableDelimiter', a:c.dark_gray, a:c.none, 'none')
    call bw#hi('asciidocTablePrefix', a:c.dark_gray, a:c.none, 'none')
    call bw#hi('asciidocURL', a:c.white, a:c.none, 'underline')

    " Asciidoctor
    call bw#hi('asciidoctorAnchor', a:c.blue, a:c.none, 'underline')
    call bw#hi('asciidoctorBlock', a:c.medium_gray, a:c.none, 'none')
    call bw#hi('asciidoctorBlockOptions', a:c.dark_gray, a:c.none, 'none')
    call bw#hi('asciidoctorBold', a:c.white, a:c.none, 'bold')
    call bw#hi('asciidoctorCode', a:c.light_white, a:c.none, 'none')
    call bw#hi('asciidoctorFile', a:c.bright_white, a:c.none, 'none')
    call bw#hi('asciidoctorItalic', a:c.white, a:c.none, 'italic')
    call bw#hi('asciidoctorListContinuation', a:c.medium_gray, a:c.none, 'none')
    call bw#hi('asciidoctorListMarker', a:c.bright_white, a:c.none, 'none')
    call bw#hi('asciidoctorLiteralBlock', a:c.bright_white, a:c.none, 'none')
    call bw#hi('asciidoctorOption', a:c.dark_gray, a:c.none, 'none')
    call bw#hi('asciidoctorSourceBlock', a:c.light_white, a:c.none, 'none')
    call bw#hi('asciidoctorUrlDescription', a:c.white, a:c.none, 'none')

    " C
    call bw#hi('cConditional', a:c.white, a:c.none, 'bold')
    call bw#hi('cConstant', a:c.white, a:c.none, 'none')
    call bw#hi('cFormat', a:c.white, a:c.none, 'none')
    call bw#hi('cMulti', a:c.white, a:c.none, 'none')
    call bw#hi('cNumbers', a:c.white, a:c.none, 'none')
    call bw#hi('cOperator', a:c.white, a:c.none, 'none')
    call bw#hi('cSpecial', a:c.white, a:c.none, 'none')
    call bw#hi('cSpecialCharacter', a:c.white, a:c.none, 'none')
    call bw#hi('cStatement', a:c.white, a:c.none, 'bold')
    call bw#hi('cStorageClass', a:c.white, a:c.none, 'none')
    call bw#hi('cString', a:c.bright_white, a:c.none, 'none')
    call bw#hi('cStructure', a:c.white, a:c.none, 'bold')
    call bw#hi('cType', a:c.white, a:c.none, 'none')

    " C++
    call bw#hi('cppConditional', a:c.white, a:c.none, 'bold')
    call bw#hi('cppConstant', a:c.white, a:c.none, 'none')
    call bw#hi('cppFormat', a:c.white, a:c.none, 'none')
    call bw#hi('cppMulti', a:c.white, a:c.none, 'none')
    call bw#hi('cppNumbers', a:c.white, a:c.none, 'none')
    call bw#hi('cppOperator', a:c.white, a:c.none, 'none')
    call bw#hi('cppSpecial', a:c.white, a:c.none, 'none')
    call bw#hi('cppSpecialCharacter', a:c.white, a:c.none, 'none')
    call bw#hi('cppStatement', a:c.white, a:c.none, 'bold')
    call bw#hi('cppStorageClass', a:c.white, a:c.none, 'none')
    call bw#hi('cppString', a:c.bright_white, a:c.none, 'none')
    call bw#hi('cppStructure', a:c.white, a:c.none, 'bold')
    call bw#hi('cppType', a:c.white, a:c.none, 'none')

    " CSS
    call bw#hi('cssTagName', a:c.white, a:c.none, 'bold')
    call bw#hi('cssClassName', a:c.white, a:c.none, 'bold')
    call bw#hi('cssAtRule', a:c.white, a:c.none, 'bold')
    call bw#hi('cssColor', a:c.bright_white, a:c.none, 'none')

    " diff
    call bw#hi('diffFile', a:c.white, a:c.none, 'bold')
    call bw#hi('diffAdded', a:c.green, a:c.none, 'none')
    call bw#hi('diffRemoved', a:c.red, a:c.none, 'none')

    " HTML
    call bw#hi('htmlArg', a:c.white, a:c.none, 'none')
    call bw#hi('htmlEndTag', a:c.white, a:c.none, 'none')
    call bw#hi('htmlSpecialChar', a:c.white, a:c.none, 'none')
    call bw#hi('htmlSpecialTagName', a:c.white, a:c.none, 'none')
    call bw#hi('htmlTag', a:c.white, a:c.none, 'none')
    call bw#hi('htmlTagName', a:c.white, a:c.none, 'none')
    call bw#hi('htmlItalic', a:c.white, a:c.none, 'italic')
    call bw#hi('htmlBold', a:c.white, a:c.none, 'bold')

    " Ledger
    call bw#hi('ledgerAmount', a:c.white, a:c.none, 'italic')
    call bw#hi('ledgerPostingMetadata', a:c.bright_white, a:c.none, 'none')
    call bw#hi('ledgerTag', a:c.dark_gray, a:c.none, 'none')
    call bw#hi('ledgerTags', a:c.dark_gray, a:c.none, 'none')
    call bw#hi('ledgerTransaction', a:c.white, a:c.none, 'bold')
    call bw#hi('ledgerTransactionDate', a:c.white, a:c.none, 'bold')
    call bw#hi('ledgerTransactionMetadata', a:c.dark_gray, a:c.none, 'none')

    " Mail
    call bw#hi('mailHeaderKey', a:c.bright_white, a:c.none, 'none')
    call bw#hi('mailHeader', a:c.bright_white, a:c.none, 'none')

    " Make
    call bw#hi('makeTarget', a:c.white, a:c.none, 'bold')
    call bw#hi('makeSpecTarget', a:c.white, a:c.none, 'none')

    " Markdown
    call bw#hi('mkdFootnotes', a:c.dark_gray, a:c.none, 'underline')
    call bw#hi('mkdLinkDef', a:c.dark_gray, a:c.none, 'none')
    call bw#hi('mkdCode', a:c.bright_white, a:c.none, 'none')
    call bw#hi('mkdHeading', a:c.gold, a:c.none, 'bold')
    call bw#hi('mkdLineBreak', a:c.none, a:c.red, 'none')
    call bw#hi('mkdInlineURL', a:c.white, a:c.none, 'underline')

    " org-mode
    call bw#hi('orgTodo', a:c.green, a:c.none, 'none')
    call bw#hi('orgDone', a:c.dark_gray, a:c.none, 'none')
    call bw#hi('orgTag', a:c.bright_white, a:c.none, 'none')
    call bw#hi('orgOption', a:c.dark_gray, a:c.none, 'none')
    call bw#hi('orgBlockDelimiter', a:c.dark_gray, a:c.none, 'none')
    call bw#hi('orgCode', a:c.white, a:c.none, 'none')

    " orgmode.nvim
    call bw#hi('OrgTSHeadlineLevel1', a:c.white, a:c.none, 'bold')
    call bw#hi('OrgTSHeadlineLevel2', a:c.white, a:c.none, 'bold')
    call bw#hi('OrgTSHeadlineLevel3', a:c.white, a:c.none, 'bold')
    call bw#hi('OrgTSComment', a:c.dark_gray, a:c.none, 'none')
    call bw#hi('OrgTSTag', a:c.bright_white, a:c.none, 'none')
    call bw#hi('OrgTSTimestampActive', a:c.bright_white, a:c.none, 'none')
    call bw#hi('OrgTSPropertyDrawer', a:c.dark_gray, a:c.none, 'none')
    call bw#hi('OrgTSDirective', a:c.dark_gray, a:c.none, 'none')
    call bw#hi('OrgTSCheckboxChecked', a:c.dark_gray, a:c.none, 'none')
    call bw#hi('OrgTSCheckboxHalfChecked', a:c.bright_white, a:c.none, 'none')
    call bw#hi('OrgTSCheckboxUnchecked', a:c.bright_white, a:c.none, 'none')

    " Python
    call bw#hi('pythonImport', a:c.white, a:c.none, 'none')
    call bw#hi('pythonConditional', a:c.white, a:c.none, 'bold')
    call bw#hi('pythonStrFormat', a:c.bright_white, a:c.none, 'bold')

    " Quickfix
    call bw#hi('qfError', a:c.black, a:c.red, 'bold')
    call bw#hi('qfFileName', a:c.dark_gray, a:c.none, 'none')
    call bw#hi('qfLineNr', a:c.dark_gray, a:c.none, 'italic')

    " Rust
    call bw#hi('rustConditional', a:c.white, a:c.none, 'bold')
    call bw#hi('rustKeyword', a:c.white, a:c.none, 'bold')
    call bw#hi('rustRepeat', a:c.white, a:c.none, 'bold')
    call bw#hi('rustStorage', a:c.white, a:c.none, 'bold')
    call bw#hi('rustStructure', a:c.white, a:c.none, 'bold')

    " SH
    call bw#hi('shShebang', a:c.dark_gray, a:c.none, 'italic')
    call bw#hi('shConditional', a:c.white, a:c.none, 'bold')

    " XML
    call bw#hi('xmlAttrib', a:c.white, a:c.none, 'none')
    call bw#hi('xmlEndTag', a:c.white, a:c.none, 'none')
    call bw#hi('xmlTag', a:c.white, a:c.none, 'none')
    call bw#hi('xmlTagName', a:c.white, a:c.none, 'none')

    " YAML
    call bw#hi('yamlAlias', a:c.white, a:c.none, 'none')
    call bw#hi('yamlAnchor', a:c.white, a:c.none, 'none')
    call bw#hi('yamlDocumentHeader', a:c.white, a:c.none, 'none')
    call bw#hi('yamlKey', a:c.white, a:c.none, 'none')

    " ------------
    " Plugins
    " ------------

    " Dirvish
    call bw#hi('DirvishPathTail', a:c.blue, a:c.none, 'none')
    call bw#hi('DirvishArg', a:c.white, a:c.none, 'none')

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
    call bw#hi('fugitiveHeading', a:c.white, a:c.none, 'bold')
    call bw#hi('fugitiveUntrackedHeading', a:c.white, a:c.none, 'bold')
    call bw#hi('fugitiveUnstagedHeading', a:c.white, a:c.none, 'bold')
    call bw#hi('fugitiveStagedHeading', a:c.white, a:c.none, 'bold')
    call bw#hi('fugitiveSymbolicRef', a:c.bright_white, a:c.none, 'none')
    call bw#hi('fugitiveStagedModifier', a:c.green, a:c.none, 'none')

    " Signify
    call bw#hi('SignifySignAdd', a:c.green, a:c.black, 'bold')
    call bw#hi('SignifySignChange', a:c.blue, a:c.black, 'bold')
    call bw#hi('SignifySignDelete', a:c.red, a:c.black, 'bold')

    " vim help
    call bw#hi('helpHyperTextJump', a:c.blue, a:c.none, 'none')

    " terminal
    if has("nvim")
        let g:terminal_color_foreground = a:c.green["gui"]
        let g:terminal_color_background = a:c.black["gui"]
        let g:terminal_color_0 = a:c.black["gui"]
        let g:terminal_color_1 = a:c.red["gui"]
        let g:terminal_color_2 = a:c.green["gui"]
        let g:terminal_color_3 = a:c.gold["gui"]
        let g:terminal_color_4 = a:c.blue["gui"]
        let g:terminal_color_5 = a:c.purple["gui"]
        let g:terminal_color_6 = a:c.blue["gui"]
        let g:terminal_color_7 = a:c.medium_gray["gui"]
        let g:terminal_color_8 = a:c.gray["gui"]
        let g:terminal_color_9 = a:c.red["gui"]
        let g:terminal_color_10 = a:c.green["gui"]
        let g:terminal_color_11 = a:c.gold["gui"]
        let g:terminal_color_12 = a:c.blue["gui"]
        let g:terminal_color_13 = a:c.purple["gui"]
        let g:terminal_color_14 = a:c.blue["gui"]
        let g:terminal_color_15 = a:c.bright_white["gui"]
    else
        let g:terminal_ansi_colors = [
            \ a:c.black["gui"], a:c.red["gui"], a:c.green["gui"], 
            \ a:c.gold["gui"], a:c.blue["gui"], a:c.purple["gui"], 
            \ a:c.blue["gui"], a:c.medium_gray["gui"], a:c.gray["gui"],
            \ a:c.red["gui"], a:c.green["gui"], a:c.gold["gui"],
            \ a:c.blue["gui"], a:c.purple["gui"], a:c.blue["gui"],
            \ a:c.bright_white["gui"]
    endif
endfunction
