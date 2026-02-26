" typographic.vim — A color scheme with no colors.
"
" Uses only terminal text attributes (bold, italic, underline, reverse)
" inspired by the formatting conventions of man(1) and printed technical books.
"
" Designed for terminals with a good default fg/bg you already like.
"
" Maintainer:  Johan Magnusson <johan.b.magnusson@gmail.com>
" License:     Public domain

highlight clear
if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'typographic'

" Force no background setting — respect the terminal's own colors.
set background&

" ── UI chrome ─────────────────────────────────────────────────────

hi Normal          cterm=NONE        ctermfg=NONE  ctermbg=NONE  gui=NONE        guifg=NONE  guibg=NONE
hi NonText         cterm=NONE        ctermfg=NONE  ctermbg=NONE  gui=NONE        guifg=NONE  guibg=NONE
hi EndOfBuffer     cterm=NONE        ctermfg=NONE  ctermbg=NONE  gui=NONE        guifg=NONE  guibg=NONE

hi StatusLine      cterm=bold,reverse ctermfg=NONE ctermbg=NONE  gui=bold,reverse guifg=NONE guibg=NONE
hi StatusLineNC    cterm=reverse     ctermfg=NONE  ctermbg=NONE  gui=reverse     guifg=NONE  guibg=NONE
hi TabLine         cterm=reverse     ctermfg=NONE  ctermbg=NONE  gui=reverse     guifg=NONE  guibg=NONE
hi TabLineFill     cterm=reverse     ctermfg=NONE  ctermbg=NONE  gui=reverse     guifg=NONE  guibg=NONE
hi TabLineSel      cterm=bold        ctermfg=NONE  ctermbg=NONE  gui=bold        guifg=NONE  guibg=NONE
hi VertSplit       cterm=NONE        ctermfg=NONE  ctermbg=NONE  gui=NONE        guifg=NONE  guibg=NONE
hi WinSeparator    cterm=NONE        ctermfg=NONE  ctermbg=NONE  gui=NONE        guifg=NONE  guibg=NONE

hi LineNr          cterm=NONE        ctermfg=NONE  ctermbg=NONE  gui=NONE        guifg=NONE  guibg=NONE
hi CursorLineNr   cterm=bold        ctermfg=NONE  ctermbg=NONE  gui=bold        guifg=NONE  guibg=NONE
hi CursorLine      cterm=underline   ctermfg=NONE  ctermbg=NONE  gui=underline   guifg=NONE  guibg=NONE
hi CursorColumn    cterm=underline   ctermfg=NONE  ctermbg=NONE  gui=underline   guifg=NONE  guibg=NONE
hi ColorColumn     cterm=reverse     ctermfg=NONE  ctermbg=NONE  gui=reverse     guifg=NONE  guibg=NONE
hi SignColumn      cterm=NONE        ctermfg=NONE  ctermbg=NONE  gui=NONE        guifg=NONE  guibg=NONE
hi FoldColumn      cterm=NONE        ctermfg=NONE  ctermbg=NONE  gui=NONE        guifg=NONE  guibg=NONE
hi Folded          cterm=italic      ctermfg=NONE  ctermbg=NONE  gui=italic      guifg=NONE  guibg=NONE

" ── Selections & search ───────────────────────────────────────────

hi Visual          cterm=reverse     ctermfg=NONE  ctermbg=NONE  gui=reverse     guifg=NONE  guibg=NONE
hi VisualNOS       cterm=reverse     ctermfg=NONE  ctermbg=NONE  gui=reverse     guifg=NONE  guibg=NONE
hi Search          cterm=reverse     ctermfg=NONE  ctermbg=NONE  gui=reverse     guifg=NONE  guibg=NONE
hi IncSearch       cterm=bold,reverse ctermfg=NONE ctermbg=NONE  gui=bold,reverse guifg=NONE guibg=NONE
hi CurSearch       cterm=bold,reverse ctermfg=NONE ctermbg=NONE  gui=bold,reverse guifg=NONE guibg=NONE
hi MatchParen      cterm=bold,underline ctermfg=NONE ctermbg=NONE gui=bold,underline guifg=NONE guibg=NONE

" ── Popup / floating windows ──────────────────────────────────────

hi Pmenu           cterm=reverse     ctermfg=NONE  ctermbg=NONE  gui=reverse     guifg=NONE  guibg=NONE
hi PmenuSel        cterm=bold,reverse ctermfg=NONE ctermbg=NONE  gui=bold,reverse guifg=NONE guibg=NONE
hi PmenuSbar       cterm=reverse     ctermfg=NONE  ctermbg=NONE  gui=reverse     guifg=NONE  guibg=NONE
hi PmenuThumb      cterm=NONE        ctermfg=NONE  ctermbg=NONE  gui=NONE        guifg=NONE  guibg=NONE
hi NormalFloat     cterm=NONE        ctermfg=NONE  ctermbg=NONE  gui=NONE        guifg=NONE  guibg=NONE
hi FloatBorder     cterm=NONE        ctermfg=NONE  ctermbg=NONE  gui=NONE        guifg=NONE  guibg=NONE

" ── Messages & diagnostics ────────────────────────────────────────

hi ErrorMsg        cterm=bold,underline ctermfg=NONE ctermbg=NONE gui=bold,underline guifg=NONE guibg=NONE
hi WarningMsg      cterm=bold        ctermfg=NONE  ctermbg=NONE  gui=bold        guifg=NONE  guibg=NONE
hi ModeMsg         cterm=bold        ctermfg=NONE  ctermbg=NONE  gui=bold        guifg=NONE  guibg=NONE
hi MoreMsg         cterm=bold        ctermfg=NONE  ctermbg=NONE  gui=bold        guifg=NONE  guibg=NONE
hi Question        cterm=bold        ctermfg=NONE  ctermbg=NONE  gui=bold        guifg=NONE  guibg=NONE
hi Title           cterm=bold        ctermfg=NONE  ctermbg=NONE  gui=bold        guifg=NONE  guibg=NONE

" ── Diff ──────────────────────────────────────────────────────────

hi DiffAdd         cterm=bold        ctermfg=NONE  ctermbg=NONE  gui=bold        guifg=NONE  guibg=NONE
hi DiffChange      cterm=italic      ctermfg=NONE  ctermbg=NONE  gui=italic      guifg=NONE  guibg=NONE
hi DiffDelete      cterm=strikethrough ctermfg=NONE ctermbg=NONE gui=strikethrough guifg=NONE guibg=NONE
hi DiffText        cterm=bold,underline ctermfg=NONE ctermbg=NONE gui=bold,underline guifg=NONE guibg=NONE

" ── Spelling ──────────────────────────────────────────────────────

hi SpellBad        cterm=underline   ctermfg=NONE  ctermbg=NONE  gui=undercurl   guifg=NONE  guibg=NONE
hi SpellCap        cterm=underline   ctermfg=NONE  ctermbg=NONE  gui=undercurl   guifg=NONE  guibg=NONE
hi SpellLocal      cterm=underline   ctermfg=NONE  ctermbg=NONE  gui=undercurl   guifg=NONE  guibg=NONE
hi SpellRare       cterm=underline   ctermfg=NONE  ctermbg=NONE  gui=undercurl   guifg=NONE  guibg=NONE

" ══════════════════════════════════════════════════════════════════
" SYNTAX HIGHLIGHTING
"
" The guiding metaphor is a well-typeset technical book:
"
"   Bold        = keywords, structure    (what the eye anchors on)
"   Italic      = strings, preprocessor  (quoted material / meta-language)
"   Underline   = types, references      (things you could look up)
"   NONE        = identifiers, comments, regular code (the prose itself)
"
" Comments are left unformatted so they visually recede, like
" margin notes printed in a lighter weight.
"
" ══════════════════════════════════════════════════════════════════

" ── Core syntax groups (see :help group-name) ─────────────────────

hi Comment         cterm=NONE        ctermfg=NONE  ctermbg=NONE  gui=NONE        guifg=NONE  guibg=NONE

hi Constant        cterm=NONE        ctermfg=NONE  ctermbg=NONE  gui=NONE        guifg=NONE  guibg=NONE
hi  String         cterm=italic      ctermfg=NONE  ctermbg=NONE  gui=italic      guifg=NONE  guibg=NONE
hi  Character      cterm=italic      ctermfg=NONE  ctermbg=NONE  gui=italic      guifg=NONE  guibg=NONE
hi  Number         cterm=NONE        ctermfg=NONE  ctermbg=NONE  gui=NONE        guifg=NONE  guibg=NONE
hi  Boolean        cterm=bold        ctermfg=NONE  ctermbg=NONE  gui=bold        guifg=NONE  guibg=NONE
hi  Float          cterm=NONE        ctermfg=NONE  ctermbg=NONE  gui=NONE        guifg=NONE  guibg=NONE

hi Identifier      cterm=NONE        ctermfg=NONE  ctermbg=NONE  gui=NONE        guifg=NONE  guibg=NONE
hi  Function       cterm=bold        ctermfg=NONE  ctermbg=NONE  gui=bold        guifg=NONE  guibg=NONE

hi Statement       cterm=bold        ctermfg=NONE  ctermbg=NONE  gui=bold        guifg=NONE  guibg=NONE
hi  Conditional    cterm=bold        ctermfg=NONE  ctermbg=NONE  gui=bold        guifg=NONE  guibg=NONE
hi  Repeat         cterm=bold        ctermfg=NONE  ctermbg=NONE  gui=bold        guifg=NONE  guibg=NONE
hi  Label          cterm=underline   ctermfg=NONE  ctermbg=NONE  gui=underline   guifg=NONE  guibg=NONE
hi  Operator       cterm=NONE        ctermfg=NONE  ctermbg=NONE  gui=NONE        guifg=NONE  guibg=NONE
hi  Keyword        cterm=bold        ctermfg=NONE  ctermbg=NONE  gui=bold        guifg=NONE  guibg=NONE
hi  Exception      cterm=bold        ctermfg=NONE  ctermbg=NONE  gui=bold        guifg=NONE  guibg=NONE

hi PreProc         cterm=italic      ctermfg=NONE  ctermbg=NONE  gui=italic      guifg=NONE  guibg=NONE
hi  Include        cterm=italic      ctermfg=NONE  ctermbg=NONE  gui=italic      guifg=NONE  guibg=NONE
hi  Define         cterm=italic      ctermfg=NONE  ctermbg=NONE  gui=italic      guifg=NONE  guibg=NONE
hi  Macro          cterm=italic      ctermfg=NONE  ctermbg=NONE  gui=italic      guifg=NONE  guibg=NONE
hi  PreCondit      cterm=italic      ctermfg=NONE  ctermbg=NONE  gui=italic      guifg=NONE  guibg=NONE

hi Type            cterm=underline   ctermfg=NONE  ctermbg=NONE  gui=underline   guifg=NONE  guibg=NONE
hi  StorageClass   cterm=bold        ctermfg=NONE  ctermbg=NONE  gui=bold        guifg=NONE  guibg=NONE
hi  Structure      cterm=bold        ctermfg=NONE  ctermbg=NONE  gui=bold        guifg=NONE  guibg=NONE
hi  Typedef        cterm=underline   ctermfg=NONE  ctermbg=NONE  gui=underline   guifg=NONE  guibg=NONE

hi Special         cterm=bold        ctermfg=NONE  ctermbg=NONE  gui=bold        guifg=NONE  guibg=NONE
hi  SpecialChar    cterm=bold        ctermfg=NONE  ctermbg=NONE  gui=bold        guifg=NONE  guibg=NONE
hi  Tag            cterm=underline   ctermfg=NONE  ctermbg=NONE  gui=underline   guifg=NONE  guibg=NONE
hi  Delimiter      cterm=NONE        ctermfg=NONE  ctermbg=NONE  gui=NONE        guifg=NONE  guibg=NONE
hi  SpecialComment cterm=italic      ctermfg=NONE  ctermbg=NONE  gui=italic      guifg=NONE  guibg=NONE
hi  Debug          cterm=bold,underline ctermfg=NONE ctermbg=NONE gui=bold,underline guifg=NONE guibg=NONE

hi Underlined      cterm=underline   ctermfg=NONE  ctermbg=NONE  gui=underline   guifg=NONE  guibg=NONE
hi Ignore          cterm=NONE        ctermfg=NONE  ctermbg=NONE  gui=NONE        guifg=NONE  guibg=NONE
hi Error           cterm=bold,underline ctermfg=NONE ctermbg=NONE gui=bold,underline guifg=NONE guibg=NONE
hi Todo            cterm=bold,reverse ctermfg=NONE ctermbg=NONE  gui=bold,reverse guifg=NONE guibg=NONE

" vim: set sw=2 ts=2 et:
