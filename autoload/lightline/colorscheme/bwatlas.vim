" =============================================================================
" Filename: autoload/lightline/colorscheme/bwatlas.vim
" Author: Michał Góral
" License: MIT License
" =============================================================================

" Common colors
let s:black = ['#212121', 235]
let s:white = ['#c0c0c0', 255]
let s:gray1 = ['#444444', 238]
let s:gray2 = ['#666666', 242]
let s:gray3 = ['#999999', 246]
let s:gray4 = ['#d0d0d0', 250]
let s:blue = ['#73cef4', 81]
let s:green = ['#9faa00', 142]
let s:red = ['#f43753', 203]
let s:gold = ['#ffc24b', 215]
let s:purple = ['#d3869b', 175]

let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}

let s:fg = s:white
let s:dimfg = s:gray3
let s:dimbg = s:black
let s:tabselfg = s:white
let s:tabselbg = s:gray1

let s:shade1 = s:gray1
let s:shade2 = s:gray2
let s:shade3 = s:gray3

let s:p.inactive.left   = [[s:gray2,  s:black], [s:gray2, s:black]]
let s:p.inactive.middle = [[s:gray2, s:black]]
let s:p.inactive.right  = [[s:gray2, s:black]]

let s:p.normal.left    = [[s:white, s:gray1, 'bold'], [s:white, s:gray2]]
let s:p.normal.middle  = [[s:gray2, s:black]]
let s:p.normal.right   = [[s:white, s:gray1, 'bold'], [s:white, s:gray2]]
let s:p.normal.error   = [[s:red, s:gray1, 'bold']]
let s:p.normal.warning = [[s:gold, s:gray1]]

let s:p.insert.left    = [[s:black, s:green, 'bold'], [s:white, s:gray2]]
let s:p.replace.left    = [[s:black, s:red, 'bold'], [s:white, s:gray2]]
let s:p.visual.left    = [[s:black, s:purple, 'bold'], [s:white, s:gray2]]

let s:p.tabline.left   = [[s:white, s:black]]
let s:p.tabline.middle = [[s:white, s:black]]
let s:p.tabline.right  = [[s:white, s:gray2, 'bold'], [s:white, s:gray2]]
let s:p.tabline.tabsel = [[s:white, s:gray2, 'bold']]

let g:lightline#colorscheme#bwatlas#palette = lightline#colorscheme#flatten(s:p)
