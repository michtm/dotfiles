""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" yorha - Fichier de couleurs pour Vim
" Références:
" - Nord Theme: https://github.com/nordtheme/vim/blob/main/colors/nord.vim
" - Molokai Theme: https://github.com/tomasr/molokai/blob/master/colors/molokai.vim
" - Solarized Theme: https://github.com/altercation/vim-colors-solarized/blob/master/colors/solarized.vim
" - On the design of text editors: https://arxiv.org/pdf/2008.06030.pdf
" - Nier Automata: j'adore le style YoRHa (exemple: https://github.com/XadillaX/vim-automata-theme)
" - Development Environment Theme Creator: https://themer.dev/
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Reset all highlighting to the defaults
highlight clear
if exists("syntax_on")
  syntax reset
endif

" Définition des polices {

let s:yorha_font_light = "IBM Plex Mono Light 10"
let s:yorha_font_regular = "IBM Plex Mono Regular 10"
let s:yorha_font_bold = "IBM Plex Mono Bold 10"

" }

" Définition de la palette de couleurs (minimal) {

" - s:yorha_default: police par défaut
let s:yorha_default_font = s:yorha_font_regular
let s:yorha_default_fg = "#4e4b42"
let s:yorha_default_bg = "#dad4bb"
" - s:yorha_critical: pour toute information qui nécessite une action 
"   immédiate. Contraste élevée par rapport aux autres polices. Par exemple
"   via une couleur d'arrière-plan intense (nuance de rouge ?)
let s:yorha_critical_font = s:yorha_default_font
let s:yorha_critical_fg = s:yorha_default_bg
let s:yorha_critical_bg = "#cd664d"
" - s:yorha_popout: pour toute information qui nécessite une attention.
"   Nuance de police suffisant distincte des autres pour attirer l'attention
"   par effet popout("ça saute aux yeux")
let s:yorha_popout_font = s:yorha_default_font
let s:yorha_popout_fg = "#cd664d"
let s:yorha_popout_bg = s:yorha_default_bg
" - s:yorha_strong: information de nature structurelle. De la même couleur
"   que la police par défaut, mais l'intensité diffère d'un niveau
"   (regular/bold). Pour les titres, mots-clés, répertoires, etc...
let s:yorha_strong_font = s:yorha_font_bold
let s:yorha_strong_fg = s:yorha_default_fg
let s:yorha_strong_bg = s:yorha_default_bg
" - s:yorha_salient: pour toute information importante. Nuance différente
"   de celle de la police par défaut, mais intensité similaire. Utilisée par
"   exemple pour les liens hypertexte.
let s:yorha_salient_font = s:yorha_font_light
let s:yorha_salient_fg = "#686458"
let s:yorha_salient_bg = s:yorha_default_bg
" - s:yorha_faded: pour toute information secondaire moins importante. Même
"   nuance que la police par défaut, mais intensité inférieure
"   (regular/light). Utilisée pour les commentaires et pourquoi pas pour du
"   texte en italique.
let s:yorha_faded_font = s:yorha_font_light
let s:yorha_faded_fg = "#a49f8c"
let s:yorha_faded_bg = s:yorha_default_bg
" - s:yorha_subtle: indique un espace physique de l'écran. Couleur
"   d'arrière-plan très légère, à peine perceptible.
let s:yorha_subtle_font = s:yorha_default_font
let s:yorha_subtle_fg = s:yorha_default_fg
let s:yorha_subtle_bg = "#c4bfa8"

" }

" Functions {

function! s:highlight(group, font, guifg, guibg)
  let cmd = ""
  if a:group != ""
    if a:font != ""
      let cmd = cmd . " font='" . a:font . "'"
    endif
    if a:guifg != ""
      let cmd = cmd . " guifg=" . a:guifg
    endif
    if a:guibg != ""
      let cmd = cmd . " guibg=" . a:guibg
    endif
    if cmd != ""
      execute "highlight " . a:group . cmd
    endif
  endif
endfunction

" }

" Command for highlights: :so $VIMRUNTIME/syntax/hitest.vim

" Highlighting groups for various occasions {

" call s:highlight("ColorColumn", s:yorha_subtle_font, s:yorha_subtle_fg, s:yorha_subtle_bg)
" call s:highlight("Conceal", "", "", "NONE")
call s:highlight("Cursor", "", s:yorha_default_bg, s:yorha_default_fg)
call s:highlight("CursorColumn", "", "", s:yorha_subtle_bg)
call s:highlight("CursorLine", "", "", s:yorha_subtle_bg)
call s:highlight("CursorLineNr", s:yorha_font_bold, s:yorha_faded_fg, s:yorha_faded_bg)
 
" call s:highlight("DiffAdd", s:yorha_salient_fg, s:yorha_salient_fg, s:yorha_salient_bg)
" call s:highlight("DiffChange", s:yorha_popout_font, s:yorha_popout_fg, s:yorha_popout_bg)
" call s:highlight("DiffDelete", s:yorha_faded_font, s:yorha_faded_fg, s:yorha_faded_bg)
" call s:highlight("DiffText", s:yorha_default_font, s:yorha_default_fg, s:yorha_default_bg)
" call s:highlight("Directory", s:yorha_strong_font, s:yorha_strong_fg, s:yorha_strong_bg)
 
call s:highlight("ErrorMsg", s:yorha_critical_font, s:yorha_critical_fg, s:yorha_critical_bg)
 
" call s:highlight("FoldColumn", "", s:yorha_default_fg, s:yorha_default_bg)
" call s:highlight("Folded", "", s:yorha_default_fg, s:yorha_default_bg)
 
" call s:highlight("Ignore", s:yorha_faded_font, s:yorha_faded_fg, s:yorha_faded_bg)
" call s:highlight("IncSearch", s:yorha_strong_font, s:yorha_strong_fg, s:yorha_strong_bg)
 
call s:highlight("LineNr", s:yorha_faded_font, s:yorha_faded_fg, s:yorha_faded_bg)
 
call s:highlight("MatchParen", s:yorha_popout_font, s:yorha_popout_fg, s:yorha_popout_bg)
" call s:highlight("ModeMsg", s:yorha_strong_font, s:yorha_strong_fg, s:yorha_strong_bg)
" call s:highlight("MoreMsg", s:yorha_popout_font, s:yorha_popout_fg, s:yorha_popout_bg)
 
" call s:highlight("NonText", s:yorha_faded_font, s:yorha_faded_fg, s:yorha_faded_bg)
call s:highlight("Normal", s:yorha_default_font, s:yorha_default_fg, s:yorha_default_bg)
" call s:highlight("Pmenu", s:yorha_subtle_font, s:yorha_subtle_bg, s:yorha_subtle_fg)
" call s:highlight("PmenuSbar", s:yorha_default_font, s:yorha_default_fg, s:yorha_default_bg)
" call s:highlight("PmenuSel", "", "", "")
" call s:highlight("PmenuThumb", "", "", "")
" call s:highlight("Question", "", "", "")
" call s:highlight("Search", "", "", "")
" call s:highlight("SignColumn", "", "", "")
" call s:highlight("SpecialKey", "", "", "")
" call s:highlight("SpellBad", "", "", "")
" call s:highlight("SpellCap", "", "", "")
" call s:highlight("SpellLocal", "", "", "")
" call s:highlight("SpellRare", "", "", "")
" call s:highlight("StatusLine", "", "", "")
" call s:highlight("StatusLineNC", "", "", "")
" call s:highlight("StatusLineTerm", "", "", "")
" call s:highlight("StatusLineTermNC", "", "", "")
" call s:highlight("TabLine", "", "", "")
" call s:highlight("TabLineFill", "", "", "")
" call s:highlight("TabLineSel", "", "", "")
" call s:highlight("Title", "", "", "")
" call s:highlight("ToolbarButton", "", "", "")
" call s:highlight("ToolbarLine", "", "", "")
" call s:highlight("VertSplit", "", "", "")
" call s:highlight("Visual", "", "", "")
" call s:highlight("VisualNOS", "", "", "")
" call s:highlight("WarningMsg", "", "", "")
" call s:highlight("WildMenu", "", "", "")
" call s:highlight("lCursor", "", "", "")

" }

" Highlighting groups for language syntaxes {

call s:highlight("Added", s:yorha_salient_fg, s:yorha_salient_fg, "")
call s:highlight("Changed", s:yorha_popout_font, s:yorha_popout_fg, "")
call s:highlight("Comment", s:yorha_faded_font, s:yorha_faded_fg, s:yorha_faded_bg)
call s:highlight("Constant", s:yorha_popout_font, s:yorha_popout_fg, s:yorha_popout_bg)
call s:highlight("Error", s:yorha_critical_font, s:yorha_critical_fg, s:yorha_critical_bg)
call s:highlight("Identifier", s:yorha_strong_font, s:yorha_strong_fg, s:yorha_strong_bg)
" PreProc
" Removed
" Special
call s:highlight("Statement", s:yorha_strong_font, s:yorha_strong_fg, s:yorha_strong_bg)
" Todo
call s:highlight("Type", s:yorha_salient_font, s:yorha_salient_fg, s:yorha_salient_bg)
" Underlined

" }
