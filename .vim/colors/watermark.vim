" Vim color file - watermark
" Generated by http://bytefluent.com/vivify 2012-10-07
set background=dark
if version > 580
	hi clear
	if exists("syntax_on")
		syntax reset
	endif
endif

set t_Co=256
let g:colors_name = "watermark"

hi IncSearch guifg=#babeaa guibg=#3a4520 guisp=#3a4520 gui=NONE ctermfg=144 ctermbg=58 cterm=NONE
hi WildMenu guifg=#000000 guibg=#804000 guisp=#804000 gui=NONE ctermfg=NONE ctermbg=3 cterm=NONE
"hi SignColumn -- no settings --
hi SpecialComment guifg=#50a0b0 guibg=NONE guisp=NONE gui=NONE ctermfg=73 ctermbg=NONE cterm=NONE
hi Typedef guifg=#6ac0ba guibg=NONE guisp=NONE gui=NONE ctermfg=73 ctermbg=NONE cterm=NONE
hi Title guifg=#6d806a guibg=NONE guisp=NONE gui=NONE ctermfg=65 ctermbg=NONE cterm=NONE
hi Folded guifg=#BBDDCC guibg=#222038 guisp=#222038 gui=NONE ctermfg=151 ctermbg=237 cterm=NONE
hi PreCondit guifg=#c0a0b0 guibg=NONE guisp=NONE gui=NONE ctermfg=7 ctermbg=NONE cterm=NONE
hi Include guifg=#c0a0b0 guibg=NONE guisp=NONE gui=NONE ctermfg=7 ctermbg=NONE cterm=NONE
hi TabLineSel guifg=#50aae5 guibg=#515a71 guisp=#515a71 gui=NONE ctermfg=74 ctermbg=60 cterm=NONE
hi StatusLineNC guifg=#1b2058 guibg=#bebebe guisp=#bebebe gui=NONE ctermfg=17 ctermbg=7 cterm=NONE
"hi CTagsMember -- no settings --
hi NonText guifg=#382920 guibg=#1a202a guisp=#1a202a gui=NONE ctermfg=237 ctermbg=235 cterm=NONE
"hi CTagsGlobalConstant -- no settings --
hi DiffText guifg=NONE guibg=#c00000 guisp=#c00000 gui=bold ctermfg=NONE ctermbg=1 cterm=bold
hi ErrorMsg guifg=NONE guibg=#ff4545 guisp=#ff4545 gui=NONE ctermfg=NONE ctermbg=203 cterm=NONE
hi Ignore guifg=#666666 guibg=NONE guisp=NONE gui=NONE ctermfg=241 ctermbg=NONE cterm=NONE
hi Debug guifg=#50a0b0 guibg=NONE guisp=NONE gui=NONE ctermfg=73 ctermbg=NONE cterm=NONE
"hi PMenuSbar -- no settings --
hi Identifier guifg=#a090b0 guibg=NONE guisp=NONE gui=NONE ctermfg=103 ctermbg=NONE cterm=NONE
hi SpecialChar guifg=#50a0b0 guibg=NONE guisp=NONE gui=NONE ctermfg=73 ctermbg=NONE cterm=NONE
hi Conditional guifg=#c08ac0 guibg=#1a202a guisp=#1a202a gui=NONE ctermfg=139 ctermbg=235 cterm=NONE
hi StorageClass guifg=#6ac0ba guibg=NONE guisp=NONE gui=NONE ctermfg=73 ctermbg=NONE cterm=NONE
hi Todo guifg=#ff4500 guibg=#eeee00 guisp=#eeee00 gui=NONE ctermfg=202 ctermbg=11 cterm=NONE
hi Special guifg=#50a0b0 guibg=NONE guisp=NONE gui=NONE ctermfg=73 ctermbg=NONE cterm=NONE
hi LineNr guifg=#8095d5 guibg=#000000 guisp=#000000 gui=NONE ctermfg=104 ctermbg=NONE cterm=NONE
hi StatusLine guifg=#203ad5 guibg=#bebebe guisp=#bebebe gui=NONE ctermfg=20 ctermbg=7 cterm=NONE
hi Normal guifg=#8b9aaa guibg=#1a202a guisp=#1a202a gui=NONE ctermfg=103 ctermbg=235 cterm=NONE
hi Label guifg=#6ac0ba guibg=NONE guisp=NONE gui=NONE ctermfg=73 ctermbg=NONE cterm=NONE
"hi CTagsImport -- no settings --
hi PMenuSel guifg=#b0d0f0 guibg=#4a85ba guisp=#4a85ba gui=NONE ctermfg=153 ctermbg=67 cterm=NONE
hi Search guifg=#3a4520 guibg=#808373 guisp=#808373 gui=NONE ctermfg=58 ctermbg=101 cterm=NONE
"hi CTagsGlobalVariable -- no settings --
hi Delimiter guifg=#50a0b0 guibg=NONE guisp=NONE gui=NONE ctermfg=73 ctermbg=NONE cterm=NONE
hi Statement guifg=#cac0c0 guibg=NONE guisp=NONE gui=NONE ctermfg=251 ctermbg=NONE cterm=NONE
"hi SpellRare -- no settings --
"hi EnumerationValue -- no settings --
hi Comment guifg=#369960 guibg=#1a202a guisp=#1a202a gui=NONE ctermfg=72 ctermbg=235 cterm=NONE
hi Character guifg=#70a0de guibg=NONE guisp=NONE gui=NONE ctermfg=68 ctermbg=NONE cterm=NONE
hi Float guifg=#1da5da guibg=NONE guisp=NONE gui=NONE ctermfg=32 ctermbg=NONE cterm=NONE
hi Number guifg=#1da5da guibg=NONE guisp=NONE gui=NONE ctermfg=32 ctermbg=NONE cterm=NONE
hi Boolean guifg=#cac0c0 guibg=NONE guisp=NONE gui=NONE ctermfg=251 ctermbg=NONE cterm=NONE
hi Operator guifg=#aa9a45 guibg=#1a202a guisp=#1a202a gui=NONE ctermfg=143 ctermbg=235 cterm=NONE
"hi CursorLine -- no settings --
"hi Union -- no settings --
hi TabLineFill guifg=#aaaaaa guibg=#2d2d3f guisp=#2d2d3f gui=NONE ctermfg=248 ctermbg=237 cterm=NONE
hi Question guifg=#AABBCC guibg=NONE guisp=NONE gui=NONE ctermfg=146 ctermbg=NONE cterm=NONE
hi WarningMsg guifg=#fa8072 guibg=NONE guisp=NONE gui=NONE ctermfg=210 ctermbg=NONE cterm=NONE
hi VisualNOS guifg=#201a30 guibg=#a3a5FF guisp=#a3a5FF gui=NONE ctermfg=236 ctermbg=147 cterm=NONE
hi DiffDelete guifg=#0000c0 guibg=#008080 guisp=#008080 gui=bold ctermfg=4 ctermbg=6 cterm=bold
hi ModeMsg guifg=#00AACC guibg=NONE guisp=NONE gui=NONE ctermfg=38 ctermbg=NONE cterm=NONE
"hi CursorColumn -- no settings --
hi Define guifg=#c0a0b0 guibg=NONE guisp=NONE gui=NONE ctermfg=7 ctermbg=NONE cterm=NONE
hi Function guifg=#a090a0 guibg=#1a202a guisp=#1a202a gui=NONE ctermfg=247 ctermbg=235 cterm=NONE
hi FoldColumn guifg=#dbcaa5 guibg=#000000 guisp=#000000 gui=NONE ctermfg=187 ctermbg=NONE cterm=NONE
hi PreProc guifg=#c0a0b0 guibg=NONE guisp=NONE gui=NONE ctermfg=7 ctermbg=NONE cterm=NONE
"hi EnumerationName -- no settings --
hi Visual guifg=#000000 guibg=#43D5FF guisp=#43D5FF gui=NONE ctermfg=NONE ctermbg=81 cterm=NONE
hi MoreMsg guifg=#2e8b57 guibg=NONE guisp=NONE gui=NONE ctermfg=29 ctermbg=NONE cterm=NONE
"hi SpellCap -- no settings --
hi VertSplit guifg=#223355 guibg=#22253d guisp=#22253d gui=NONE ctermfg=17 ctermbg=237 cterm=NONE
hi Exception guifg=#aaa4a0 guibg=#1a202a guisp=#1a202a gui=NONE ctermfg=248 ctermbg=235 cterm=NONE
hi Keyword guifg=#bebebe guibg=#1a202a guisp=#1a202a gui=bold ctermfg=7 ctermbg=235 cterm=bold
hi Type guifg=#6ac0ba guibg=NONE guisp=NONE gui=NONE ctermfg=73 ctermbg=NONE cterm=NONE
hi DiffChange guifg=NONE guibg=#c000c0 guisp=#c000c0 gui=NONE ctermfg=NONE ctermbg=5 cterm=NONE
hi Cursor guifg=#05293d guibg=#cad5c0 guisp=#cad5c0 gui=NONE ctermfg=23 ctermbg=151 cterm=NONE
"hi SpellLocal -- no settings --
hi Error guifg=NONE guibg=#f06070 guisp=#f06070 gui=NONE ctermfg=NONE ctermbg=9 cterm=NONE
hi PMenu guifg=#9aadd5 guibg=#3a6595 guisp=#3a6595 gui=NONE ctermfg=110 ctermbg=67 cterm=NONE
hi SpecialKey guifg=#90dcb0 guibg=NONE guisp=NONE gui=NONE ctermfg=115 ctermbg=NONE cterm=NONE
hi Constant guifg=#70a0de guibg=NONE guisp=NONE gui=NONE ctermfg=68 ctermbg=NONE cterm=NONE
"hi DefinedName -- no settings --
hi Tag guifg=#50a0b0 guibg=NONE guisp=NONE gui=NONE ctermfg=73 ctermbg=NONE cterm=NONE
hi String guifg=#70a0de guibg=NONE guisp=NONE gui=NONE ctermfg=68 ctermbg=NONE cterm=NONE
hi PMenuThumb guifg=NONE guibg=#008b8b guisp=#008b8b gui=NONE ctermfg=NONE ctermbg=30 cterm=NONE
"hi MatchParen -- no settings --
"hi LocalVariable -- no settings --
hi Repeat guifg=#c07ac0 guibg=#1a202a guisp=#1a202a gui=NONE ctermfg=176 ctermbg=235 cterm=NONE
"hi SpellBad -- no settings --
"hi CTagsClass -- no settings --
hi Directory guifg=#bbd0df guibg=NONE guisp=NONE gui=NONE ctermfg=152 ctermbg=NONE cterm=NONE
hi Structure guifg=#6ac0ba guibg=NONE guisp=NONE gui=NONE ctermfg=73 ctermbg=NONE cterm=NONE
hi Macro guifg=#c0a0b0 guibg=NONE guisp=NONE gui=NONE ctermfg=7 ctermbg=NONE cterm=NONE
hi Underlined guifg=#5b759a guibg=NONE guisp=NONE gui=NONE ctermfg=67 ctermbg=NONE cterm=NONE
hi DiffAdd guifg=NONE guibg=#0000c0 guisp=#0000c0 gui=NONE ctermfg=NONE ctermbg=4 cterm=NONE
hi TabLine guifg=#5b7098 guibg=#4d4d5f guisp=#4d4d5f gui=NONE ctermfg=67 ctermbg=59 cterm=NONE
hi mbenormal guifg=#cfac84 guibg=#22223f guisp=#22223f gui=NONE ctermfg=180 ctermbg=237 cterm=NONE
hi perlspecialstring guifg=#b856d0 guibg=#403340 guisp=#403340 gui=NONE ctermfg=134 ctermbg=238 cterm=NONE
hi doxygenspecial guifg=#fdba5d guibg=NONE guisp=NONE gui=NONE ctermfg=215 ctermbg=NONE cterm=NONE
hi mbechanged guifg=#eebeee guibg=#22223f guisp=#22223f gui=NONE ctermfg=225 ctermbg=237 cterm=NONE
hi mbevisiblechanged guifg=#eebeee guibg=#32328f guisp=#32328f gui=NONE ctermfg=225 ctermbg=18 cterm=NONE
hi doxygenparam guifg=#fdba5d guibg=NONE guisp=NONE gui=NONE ctermfg=215 ctermbg=NONE cterm=NONE
hi doxygensmallspecial guifg=#fdba5d guibg=NONE guisp=NONE gui=NONE ctermfg=215 ctermbg=NONE cterm=NONE
hi doxygenprev guifg=#fdba5d guibg=NONE guisp=NONE gui=NONE ctermfg=215 ctermbg=NONE cterm=NONE
hi perlspecialmatch guifg=#b856d0 guibg=#403340 guisp=#403340 gui=NONE ctermfg=134 ctermbg=238 cterm=NONE
hi cformat guifg=#b856d0 guibg=#403340 guisp=#403340 gui=NONE ctermfg=134 ctermbg=238 cterm=NONE
hi lcursor guifg=#2a2a2a guibg=#c0aa94 guisp=#c0aa94 gui=NONE ctermfg=235 ctermbg=138 cterm=NONE
hi cursorim guifg=#ffcbff guibg=#5d0cff guisp=#5d0cff gui=NONE ctermfg=225 ctermbg=57 cterm=NONE
hi doxygenspecialmultilinedesc guifg=#ada196 guibg=NONE guisp=NONE gui=NONE ctermfg=138 ctermbg=NONE cterm=NONE
hi taglisttagname guifg=#5060ed guibg=NONE guisp=NONE gui=NONE ctermfg=63 ctermbg=NONE cterm=NONE
hi doxygenbrief guifg=#fd912d guibg=NONE guisp=NONE gui=NONE ctermfg=208 ctermbg=NONE cterm=NONE
hi mbevisiblenormal guifg=#cfcfa3 guibg=#32328f guisp=#32328f gui=NONE ctermfg=187 ctermbg=18 cterm=NONE
hi user2 guifg=#5050a0 guibg=#2b2b5e guisp=#2b2b5e gui=NONE ctermfg=61 ctermbg=17 cterm=NONE
hi user1 guifg=#cbffe7 guibg=#2b2b5e guisp=#2b2b5e gui=NONE ctermfg=195 ctermbg=17 cterm=NONE
hi doxygenspecialonelinedesc guifg=#ada196 guibg=NONE guisp=NONE gui=NONE ctermfg=138 ctermbg=NONE cterm=NONE
hi doxygencomment guifg=#adacab guibg=NONE guisp=NONE gui=NONE ctermfg=145 ctermbg=NONE cterm=NONE
hi cspecialcharacter guifg=#b856d0 guibg=#403340 guisp=#403340 gui=NONE ctermfg=134 ctermbg=238 cterm=NONE
"hi clear -- no settings --
hi htmlitalic guifg=#dcdccc guibg=#2a2a2a guisp=#2a2a2a gui=italic ctermfg=187 ctermbg=235 cterm=NONE
hi htmlboldunderlineitalic guifg=#dcdccc guibg=#2a2a2a guisp=#2a2a2a gui=bold,italic,underline ctermfg=187 ctermbg=235 cterm=bold,underline
hi htmlbolditalic guifg=#dcdccc guibg=#2a2a2a guisp=#2a2a2a gui=bold,italic ctermfg=187 ctermbg=235 cterm=bold
hi htmlunderlineitalic guifg=#dcdccc guibg=#2a2a2a guisp=#2a2a2a gui=italic,underline ctermfg=187 ctermbg=235 cterm=underline
hi htmlbold guifg=#dcdccc guibg=#2a2a2a guisp=#2a2a2a gui=bold ctermfg=187 ctermbg=235 cterm=bold
hi htmlboldunderline guifg=#dcdccc guibg=#2a2a2a guisp=#2a2a2a gui=bold,underline ctermfg=187 ctermbg=235 cterm=bold,underline
hi htmlunderline guifg=#dcdccc guibg=#2a2a2a guisp=#2a2a2a gui=underline ctermfg=187 ctermbg=235 cterm=underline
hi cif0 guifg=#bebebe guibg=NONE guisp=NONE gui=NONE ctermfg=7 ctermbg=NONE cterm=NONE
