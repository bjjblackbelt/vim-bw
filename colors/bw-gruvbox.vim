" bw-gruvbox.vim
" By Michał Góral
"

scriptencoding utf-8
hi clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name="bw-gruvbox"

" ==========================
" Color Variables
" ==========================

let c = {}
let c.black = {'gui': '#282828', 'cterm256': '235'}
let c.white = {'gui': '#D5C4A1', 'cterm256': '242'}
let c.light_white = {'gui': '#EBDBB2', 'cterm256': '242'}
let c.gray = {'gui': '#928374', 'cterm256': '241'}
let c.medium_gray = {'gui': '#665C64', 'cterm256': '240'}
let c.dark_gray = {'gui': '#504945', 'cterm256': '239'}
let c.bright_white = {'gui': '#FBF1C7', 'cterm256': '242'}

let c.blue = {'gui': '#83A598', 'cterm256': '109'}
let c.green = {'gui': '#98971A', 'cterm256': '64'}
let c.gold = {'gui': '#D79921', 'cterm256': '136'}
let c.red = {'gui': '#CC241D', 'cterm256': '196'}
let c.purple = {'gui': '#B16286', 'cterm256': '170'}
let c.none = {'gui': 'NONE', 'cterm256': 'NONE'}

let c.gray = {'gui': '#7C6F64', 'cterm256': '241'}
let c.medium_gray = {'gui': '#665C54', 'cterm256': '240'}
let c.dark_gray = {'gui': '#504945', 'cterm256': '239'}

call bw#init(c)

" modifications

let s:dim_gray = {'gui': '#3C3836', 'cterm256': '238'}

call bw#hi('ColorColumn', c.none, s:dim_gray, 'none')
call bw#hi('CursorLine', c.none, s:dim_gray, 'none')
call bw#hi('CursorLineNr', c.white, s:dim_gray, 'bold')
call bw#hi('StatusLine', c.white, s:dim_gray, 'none')
call bw#hi('StatusLineNC', c.gray, s:dim_gray, 'none')
