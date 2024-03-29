" Init {{{
if !has("gui_running") && &t_Co != 88 && &t_Co != 256
    finish
endif

set background=dark

if exists("syntax_on")
    syntax reset
endif

let g:colors_name = "nvim-falkolourful"

" if !exists("g:falk_html_link_underline")
"     let g:falk_html_link_underline = 1
" endif
" 
" if !exists("g:falk_css_props_highlight")
"     let g:falk_css_props_highlight = 0
" endif

" Init }}}
" Colorscheme {{{
call g:HL( 'EndOfBuffer'               , 'end_of_buffer_fg', 'none'                          )
call g:HL( 'CursorColumn'              , 'none'            , 'soft_dark' , 'bold'      )
call g:HL( 'CursorLine'                , 'none'            , 'soft_dark' , 'bold'      )
call g:HL( 'ColorColumn'               , 'bright_fg'       , 'soft_dark' , ''          )
" Falkline {{{
" NOTE: Might also be set in RedrawModeColors!
call g:HL( 'StatusLine'             , 'mid_dark'   , 'none'       , 'none'   )
call g:HL( 'StatusLineNC'           , 'black'      , 'none'       , 'bold'   )
call g:HL( 'FalklineSeparator'      , 'dark_fg'    , 'mid_dark'   , 'none'   )
call g:HL( 'FalklineModified'       , 'mid_dark'   , 'none'       , 'none'   )
call g:HL( 'FalklineFiletype'       , 'mid_dark'   , 'none'       , 'none'   )
call g:HL( 'FalklineFiletypeBody'   , 'white'      , 'mid_dark'   , 'italic' )
call g:HL( 'FalklinePercentage'     , 'mid_dark'   , 'none'       , 'none'   )
call g:HL( 'FalklinePercentageBody' , 'dim_fg'     , 'mid_dark'   , 'none'   )
call g:HL( 'FalklineLineGit'        , 'mid_dark'   , 'none'       , 'none'   )
call g:HL( 'FalklineLineGitBody'    , 'dim_fg'     , 'mid_dark'   , 'none'   )
call g:HL( 'FalklineLineGitSymbol'  , 'white'      , 'mid_dark'   , 'none'   )
call g:HL( 'FalklineLineCol'        , 'mid_dark'   , 'none'       , 'none'   )
call g:HL( 'FalklineLineColBody'    , 'dim_fg'     , 'mid_dark'   , 'none'   )
call g:HL( 'FalklineAleOkBody'      , 'white'      , 'green'      , 'bold'   )
call g:HL( 'FalklineAleWarningBody' , 'red'        , 'yellow'     , 'bold'   )
call g:HL( 'FalklineAleErrorBody'   , 'white'      , 'red'        , 'bold'   )
call g:HL( 'FalklineAleSpacer'      , 'red'        , 'yellow'     , 'none'   )
" Primary and secondary colours, changed in RedrawModeColors()
let g:FalklineMainA = 'mid_dark'
let g:FalklineMainB = 'none'
" Falkline }}}
""" General/UI {{{
call g:HL( 'WildMenu'     , 'test_xg'          , 'test_fg'     , 'bold'      )
call g:HL( 'Normal'       , 'plain_fg'         , 'none'                      )
call g:HL( 'folded'       , 'yellow_light'     , 'soft_dark'   , 'italic'    )
call g:HL( 'vertsplit'    , 'vsplit_fg'        , 'none'        , 'none'      )
" Call g:HL( 'TabLine'      , 'test_xg'          ) " , s:tabline , 'none'      )
" Call g:HL( 'TabLineFill'  , 'test_xg'          ) " , s:tabline , 'none'      )
" Call g:HL( 'TabLineSel'   , 'test_xg'          , 'black'       , 'none'      )
call g:HL( 'MatchParen'   , 'scope_match'      , ''            , 'bold'      )
call g:HL( 'NonText'      , 'end_of_buffer_fg' , 'none'                      )
call g:HL( 'WhiteSpace'   , 'red'              , 'none'                      )
call g:HL( 'Conceal'      , 'tab_markers'      , 'none'                      )
call g:HL( 'SpecialKey'   , 'bright_fg'        , 'none'                      )
call g:HL( 'Visual'       , 'none'             , 'select_bg'   , 'bold'      )
call g:HL( 'VisualNOS'    , 'none'             , 'select_bg'                 )
call g:HL( 'Search'       , 'search_fg'        , 'search_bg'   , 'bold'      )
call g:HL( 'IncSearch'    , 'search_fg'        , 'search_bg'   , 'bold'      )
call g:HL( 'Underlined'   , 'none'             , 'select_bg'   , 'underline' )
call g:HL( 'Directory'    , 'folder_fg'                                      )
call g:HL( 'Title'        , 'bright_fg'                                      )
call g:HL( 'ErrorMsg'     , 'error'            , 'none'        , 'bold'      )
call g:HL( 'MoreMsg'      , 'yellow_light'     , 'none'        , 'bold'      )
call g:HL( 'ModeMsg'      , 'yellow_light'     , 'none'        , 'bold'      )
call g:HL( 'Question'     , 'white'            , 'none'        , 'bold'      )
call g:HL( 'WarningMsg'   , 'warning_hi'       , 'none'        , 'bold'      )
call g:HL( 'Tag'          , 'test_fg'          , 'none'        , 'bold'      ) "ctags tag; not HTML tag. Something you can use c-] on.
call g:HL( 'LineNr'       , 'line_nr_fg'       , 'none'       ) " , s:gutter )
call g:HL( 'CursorLineNr' , 'line_nr_hilight'                 )
call g:HL( 'SignColumn'   , 'line_nr_fg'       , 'none'       ) " , s:gutter )
call g:HL( 'FoldColumn'   , 'test_fg'          , 'black'      ) " , s:gutter )
" General/UI }}}
" Snippets {{{
call g:HL( 'SnippetPlaceholder'        , 'snip_fg'         , 'snip_bg'   , 'bold,underline'    ) 
" Snippets }}}
" Cursor {{{
call g:HL( 'Cursor'                    , 'cursor_fg'       , 'cursor_bg' , 'bold'      )
call g:HL( 'vCursor'                   , 'cursor_fg'       , 'cursor_bg' , 'bold'      )
call g:HL( 'iCursor'                   , 'cursor_fg'       , 'cursor_bg' , 'none'      )
" Cursor }}}
" Code Syntax {{{
call g:HL( 'CocInlayHint'              , 'inlay_discreet'  , 'none'                , 'bold' )
call g:HL( 'Special'                   , 'special_fg'                                       )
call g:HL( 'Comment'                   , 'comment_discreet', ''                    , 'none' )
call g:HL( 'Todo'                      , 'todo_discreet'   , 'none'                , 'bold,underline' )
call g:HL( 'UserSignature'             , 'user_discreet'   , 'none'                , 'bold' )
call g:HL( 'Time'                      , 'time_discreet'   , 'none'                , 'none' )
call g:HL( 'SpecialComment'            , 'todo_discreet'   , 'none'                , 'bold,underline' )
call g:HL( 'String'                    , 'string_fg'                                        )
call g:HL( 'Statement'                 , 'controlflow_fg'  , 'none'                , 'bold' )
call g:HL( 'Annotation'                , 'annotation_fg'   , 'none'                , 'bold' )
call g:HL( 'Keyword'                   , 'controlflow_fg'  , 'none'                , 'bold' )
call g:HL( 'Conditional'               , 'controlflow_fg'  , 'none'                , 'bold' )
call g:HL( 'Operator'                  , 'controlflow_fg'  , 'none'                , 'none' )
call g:HL( 'Label'                     , 'controlflow_fg'  , 'none'                , 'none' )
call g:HL( 'Repeat'                    , 'controlflow_fg'  , 'none'                , 'none' )
call g:HL( 'Identifier'                , 'function_fg'     , 'none'                , 'none' )
call g:HL( 'Function'                  , 'function_fg'     , 'none'                , 'none' )
call g:HL( 'PreProc'                   , 'preprocessor_fg' , 'none'                , 'none' )
call g:HL( 'Macro'                     , 'preprocessor_fg' , 'none'                , 'none' )
call g:HL( 'Define'                    , 'preprocessor_fg' , 'none'                , 'none' )
call g:HL( 'PreCondit'                 , 'preprocessor_fg' , 'none'                , 'bold' )
call g:HL( 'Constant'                  , 'constant_fg'     , 'none'                , 'bold' )
call g:HL( 'Character'                 , 'constant_fg'     , 'none'                , 'bold' )
call g:HL( 'Boolean'                   , 'constant_fg'     , 'none'                , 'bold' )
call g:HL( 'Number'                    , 'constant_fg'     , 'none'                , 'bold' )
call g:HL( 'Float'                     , 'constant_fg'     , 'none'                , 'bold' )
call g:HL( 'SpecialChar'               , 'yellow_light'    , 'none'                , 'bold' ) " format %f etc
call g:HL( 'Type'                      , 'type_fg'         , 'none'                , 'none' )
call g:HL( 'StorageClass'              , 'keyword_fg'      , 'none'                , 'none' )
call g:HL( 'Structure'                 , 'type_fg'         , 'none'                , 'none' )
call g:HL( 'Typedef'                   , 'test_fg'         , 'none'                , 'bold' )
" Code Syntax }}}
" Errors, Warnings, Exceptions {{{
call g:HL( 'Exception'                 , 'exception'       , 'none'                , 'bold' )
call g:HL( 'Error'                     , 'white'           , 'error'               , 'bold' )
call g:HL( 'Debug'                     , 'warning_lo'      , 'none'                , 'bold' )
call g:HL( 'Ignore'                    , 'warning_hi'      , 'none'                         )
" Errors, Warnings, Exceptions }}}
" PMenu {{{
call g:HL( 'Pmenu'                     , 'pmenu_off_fg'    , 'pmenu_off_bg'                 )
call g:HL( 'PmenuSel'                  , 'pmenu_on_fg'     , 'pmenu_on_bg'         , 'bold' ) 
call g:HL( 'PmenuSbar'                 , 'test_fg'         , 'pmenu_on_bg'                  )
call g:HL( 'PmenuThumb'                , 'test_fg'         , 'pmenu_slider'                 )
" PMenu }}}
" Coc {{{
call g:HL( 'CocErrorSign'              , 'error'           , ''                    , ''     )
call g:HL( 'CocFloating'               , 'plain_fg'        , 'dark_fg'             , ''     )
" Coc }}}
" Spell Checker {{{
if has("spell")
"  call g:HL( 'SpellCap'                , ''                , ''                , 'undercurl,bold' , 'dalespale' )
"  call g:HL( 'SpellBad'                , ''                , ''                , 'undercurl'      , 'dalespale' )
"  call g:HL( 'SpellLocal'              , ''                , ''                , 'undercurl'      , 'dalespale' )
"  call g:HL( 'SpellRare'               , ''                , ''                , 'undercurl'      , 'dalespale' )
endif
" Spell Checker }}}
" CtrlP {{{
call g:HL( 'CtrlPNoEntries'            , ''                , ''                , 'bold'     ) " no match found msg
call g:HL( 'CtrlPMatch'                , ''                , ''                , 'none'     ) " matched pattern
call g:HL( 'CtrlPLinePre'              , ''                , ''                , 'none'     ) " match window line prefix >
call g:HL( 'CtrlPPrtBase'              , ''                , ''                , 'none'     ) " prompt's base
call g:HL( 'CtrlPPrtText'              , ''                , ''                , 'none'     ) " prompt's text
call g:HL( 'CtrlPPrtCursor'            , ''                , ''                , 'bold'     ) " prompt's cursor
call g:HL( 'CtrlPMode1'                , ''                , ''                , 'bold'     ) " prt, win, regex
call g:HL( 'CtrlPMode2'                , ''                , ''                , 'bold'     ) " file, path, dir
call g:HL( 'CtrlPStats'                , ''                , ''                , 'bold'     ) " scanning status
" CtrlP }}}
" ??? {{{
""" hi GreenBar term=reverse ctermfg=white ctermbg=green guifg=coal guibg=#9edf1c
""" hi RedBar   term=reverse ctermfg=white cterm bg=red guifg=white guibg=#C50048
""call g:HL( 'EasyMotionTarget'          , ''                , ''                , 'bold'     )
""call g:HL( 'EasyMotionShade'           , ''                , ''                , ''         )
""call g:HL( 'level16c'                  , ''                , ''                , 'bold'     )
""call g:HL( 'level15c'                  , ''                , ''                , ''         )
""call g:HL( 'level14c'                  , ''                , ''                , ''         )
""call g:HL( 'level13c'                  , ''                , ''                , ''         )
""call g:HL( 'level12c'                  , ''                , ''                , ''         )
""call g:HL( 'level11c'                  , ''                , ''                , ''         )
""call g:HL( 'level10c'                  , ''                , ''                , ''         )
""call g:HL( 'level9c'                   , ''                , ''                , ''         )
""call g:HL( 'level8c'                   , ''                , ''                , ''         )
""call g:HL( 'level7c'                   , ''                , ''                , ''         )
""call g:HL( 'level6c'                   , ''                , ''                , ''         )
""call g:HL( 'level5c'                   , ''                , ''                , ''         )
""call g:HL( 'level4c'                   , ''                , ''                , ''         )
""call g:HL( 'level3c'                   , ''                , ''                , ''         )
""call g:HL( 'level2c'                   , ''                , ''                , ''         )
""call g:HL( 'level1c'                   , ''                , ''                , ''         )
""call g:HL( 'ShowMarksHLl'              , ''                , ''                , ''         )
""call g:HL( 'ShowMarksHLu'              , ''                , ''                , ''         )
""call g:HL( 'ShowMarksHLo'              , ''                , ''                , ''         )
""call g:HL( 'ShowMarksHLm'              , ''                , ''                , ''         )
" ??? }}}
" Git {{{
" GitGutter {{{
call g:HL( 'GitGutterAdd'          , 'green'  , 'none' , 'bold' ) " an added line
call g:HL( 'GitGutterChange'       , 'yellow' , 'none' , 'bold' ) " a changed line
call g:HL( 'GitGutterDelete'       , 'red'    , 'none' , 'bold' ) " at least one removed line
call g:HL( 'GitGutterChangeDelete' , 'red'    , 'none' , 'bold' ) " a changed line followed by at least one removed line
" GitGutter }}}
" vim-fugitive {{{
call g:HL( 'gitDiff'                   , 'none'                 , 'none'                , ''         )
call g:HL( 'diffRemoved'               , 'red'                  , 'none'                , ''         )
call g:HL( 'diffAdded'                 , 'green'                , 'none'                , ''         )
call g:HL( 'diffFile'                  , 'mode_command_light'   , 'mode_command_dark'   , 'bold'     )
call g:HL( 'diffNewFile'               , 'none'                 , 'test_xg'             , 'bold'     )
call g:HL( 'diffLine'                  , 'test_fg'              , 'none'                , 'bold'     )
call g:HL( 'diffSubname'               , 'test_fg'              , 'test_xg'             , 'none'     )
call g:HL( 'DiffDelete'                , 'red'                  , 'dark_red'            , ''         )
call g:HL( 'DiffAdd'                   , 'none'                 , 'dark_green'          , ''         )
call g:HL( 'DiffChange'                , 'none'                 , 'dark_orange'         , ''         )
call g:HL( 'DiffText'                  , 'black'                , 'orange'              , 'bold'     )
" vim-fugitive }}}
" Git }}}
"" ??? {{{
""if g:falk_html_link_underline
""  call g:HL( 'htmlLink'                , ''                , ''                , 'underline')
""else
""  call g:HL( 'htmlLink'                , ''                , ''                , 'none'     )
""endif
""" LaTeX 
""call g:HL( 'texStatement'              , ''                , ''                , 'none'     )
""call g:HL( 'texMathZoneX'              , ''                , ''                , 'none'     )
""call g:HL( 'texMathZoneA'              , ''                , ''                , 'none'     )
""call g:HL( 'texMathZoneB'              , ''                , ''                , 'none'     )
""call g:HL( 'texMathZoneC'              , ''                , ''                , 'none'     )
""call g:HL( 'texMathZoneD'              , ''                , ''                , 'none'     )
""call g:HL( 'texMathZoneE'              , ''                , ''                , 'none'     )
""call g:HL( 'texMathZoneV'              , ''                , ''                , 'none'     )
""call g:HL( 'texMathZoneX'              , ''                , ''                , 'none'     )
""call g:HL( 'texMath'                   , ''                , ''                , 'none'     )
""call g:HL( 'texMathMatcher'            , ''                , ''                , 'none'     )
""call g:HL( 'texRefLabel'               , ''                , ''                , 'none'     )
""call g:HL( 'texRefZone'                , ''                , ''                , 'none'     )
""call g:HL( 'texComment'                , ''                , ''                , 'none'     )
""call g:HL( 'texDelimiter'              , ''                , ''                , 'none'     )
""call g:HL( 'texZone'                   , ''                , ''                , 'none'     )
""
""" augroup falk_tex
"""     au!
"""     au BufRead,BufNewFile *.tex syn region texMathZoneV start="\\(" end="\\)\|%stopzone\>" keepend contains=@texMathZoneGroup
"""     au BufRead,BufNewFile *.tex syn region texMathZoneX start="\$" skip="\\\\\|\\\$" end="\$\|%stopzone\>" keepend contains=@texMathZoneGroup
""" augroup END
""
""call g:HL( 'lessVariable'              , ''            , '' , 'none'      )
""" ??? }}}
""" REPLs {{{
""call g:HL( 'replPrompt'                , ''            , '' , 'bold'      )
""" REPLs }}}
""" Mail {{{
""call g:HL( 'mailSubject'               , ''            , '' , 'bold'      )
""call g:HL( 'mailHeader'                , ''                               )
""call g:HL( 'mailHeaderKey'             , ''                               )
""call g:HL( 'mailHeaderEmail'           , ''                               )
""call g:HL( 'mailURL'                   , ''            , '' , 'underline' )
""call g:HL( 'mailSignature'             , ''            , '' , 'none'      )
""call g:HL( 'mailQuoted1'               , ''            , '' , 'none'      )
""call g:HL( 'mailQuoted2'               , ''            , '' , 'none'      )
""call g:HL( 'mailQuoted3'               , ''            , '' , 'none'      )
""call g:HL( 'mailQuoted4'               , ''            , '' , 'none'      )
""call g:HL( 'mailQuoted5'               , ''            , '' , 'none'      )
""" Mail }}}
" Markdown {{{
call g:HL( 'markdownHeadingRule'       , 'soft_dark' , '' , 'bold'           )
call g:HL( 'markdownHeadingDelimiter'  , 'dark_fg'         , '' , 'bold'           )
call g:HL( 'markdownOrderedListMarker' , 'white'           , '' , 'bold'           )
call g:HL( 'markdownListMarker'        , 'yellow'          , '' , 'bold'           )
call g:HL( 'markdownItalic'            , ''                , '' , 'italic'         )
call g:HL( 'markdownBold'              , ''                , '' , 'bold'           )
call g:HL( 'markdownH1'                , 'white'           , '' , 'bold,underline' )
call g:HL( 'markdownH2'                , 'yellow'          , '' , 'bold,underline' )
call g:HL( 'markdownH3'                , 'yellow'          , '' , 'underline'      )
call g:HL( 'markdownH4'                , 'yellow'          , '' , 'none'           )
call g:HL( 'markdownH5'                , 'yellow'          , '' , 'none'           )
call g:HL( 'markdownH6'                , 'yellow'          , '' , 'none'           )
call g:HL( 'markdownLinkText'          , 'hyperlink'       , '' , 'underline'      )
call g:HL( 'markdownAutomaticLink'     , ''                , '' , 'bold'           )
call g:HL( 'markdownUrl'               , 'hyperlink'       , '' , 'underline'      )
call g:HL( 'markdownUrldelimiter'      , ''                , '' , 'bold'           )
call g:HL( 'markdownLinkDelimiter'     , ''                , '' , 'bold'           )
call g:HL( 'markdownLinkTextDelimiter' , ''                , '' , 'bold'           )
call g:HL( 'markdownCodeDelimiter'     , ''                , '' , 'bold'           )
call g:HL( 'markdownCode'              , ''                , '' , 'none'           )
call g:HL( 'markdownCodeBlock'         , ''                , '' , 'none'           )
" Markdown }}}
""" MySQL {{{
""call g:HL( 'mysqlSpecial'              , ''            , '' , 'bold'      )
""" MySQL }}}
""" Python {{{
""hi def link pythonOperator Operator
""call g:HL( 'pythonBuiltin'             , ''                               )
""call g:HL( 'pythonBuiltinObj'          , ''                               )
""call g:HL( 'pythonBuiltinFunc'         , ''                               )
""call g:HL( 'pythonEscape'              , ''                               )
""call g:HL( 'pythonException'           , ''            , '' , 'bold'      )
""call g:HL( 'pythonExceptions'          , ''            , '' , 'none'      )
""call g:HL( 'pythonPrecondit'           , ''            , '' , 'none'      )
""call g:HL( 'pythonDecorator'           , ''            , '' , 'none'      )
""call g:HL( 'pythonRun'                 , ''            , '' , 'bold'      )
""call g:HL( 'pythonCoding'              , ''            , '' , 'bold'      )
""" Python }}}
""" Rainbow parentheses {{{
""call g:HL( 'hlLevel0'                  , ''                               )
""call g:HL( 'hlLevel1'                  , ''                               )
""call g:HL( 'hlLevel2'                  , ''                               )
""call g:HL( 'hlLevel3'                  , ''                               )
""call g:HL( 'hlLevel4'                  , ''                               )
""call g:HL( 'hlLevel5'                  , ''                               )
""call g:HL( 'hlLevel6'                  , ''                               )
""call g:HL( 'hlLevel7'                  , ''                               )
""call g:HL( 'hlLevel8'                  , ''                               )
""call g:HL( 'hlLevel9'                  , ''                               )
""" Rainbow parentheses }}}
""" Vim {{{
""call g:HL( 'VimCommentTitle'           , ''            , '' , 'bold'      )
""call g:HL( 'VimMapMod'                 , ''            , '' , 'none'      )
""call g:HL( 'VimMapModKey'              , ''            , '' , 'none'      )
""call g:HL( 'VimNotation'               , ''            , '' , 'none'      )
""call g:HL( 'VimBracket'                , ''            , '' , 'none'      )
""" Vim }}}
" ALE {{{
call g:HL( 'ALEWarningSign'      , 'warning_hi'   , 'none'       , 'bold' )
call g:HL( 'ALEStyleWarningSign' , 'warning_lo'   , 'none'       , 'bold' ) 
call g:HL( 'ALEInfoSign'         , 'white'        , 'none'       , 'bold' )
" ALE }}}
" Tagbar {{{
call g:HL( 'TagbarAccessPublic'  , 'green'                                ) 
call g:HL( 'TagbarAccessPrivate' , 'red'                                  ) 
" Tagbar }}}
" Colorscheme }}}
" Misc Leftovers & Junk [TODO: clean up!] {{{
" changes cursor background color depending on mode
" augroup falk_cursor
" autocmd! 
" autocmd InsertEnter  * hi Cursor     guifg=#FFFFFF guibg=#44FF44
" autocmd InsertEnter  * hi iCursor    guifg=#FFFFFF guibg=#44FF44
" autocmd InsertChange * hi Cursor     guifg=#FFFFFF guibg=#4444FF
" autocmd InsertChange * hi iCursor    guifg=#FFFFFF guibg=#4444FF
" autocmd InsertLeave  * hi Cursor     guifg=#FFFFFF guibg=#FF4444
" autocmd InsertLeave  * hi iCursor    guifg=#FFFFFF guibg=#FF4444
" augroup END

   " " config options
   " if exists('g:falk_darkgutter') hi CursorLineNr guifg=#050505&& g:falk_darkgutter
   "     let s:gutter = 'plain'
   " else
   "     let s:gutter = 'plain'
   " endif
   "   
   "   if exists('g:falk_tabline')
   "       if g:falk_tabline == 0
   "           let s:tabline = 'plain'
   "       elseif  g:falk_tabline == 1
   "           let s:tabline = 'plain'
   "       elseif  g:falk_tabline == 2
   "           let s:tabline = 'plain'
   "       elseif  g:falk_tabline == 3
   "           let s:tabline = 'plain'
   "       else
   "           let s:tabline = 'plain'
   "       endif
   "   else
   "       let s:tabline = 'orange'
   "   endif

" Misc Leftovers & Junk [TODO: clean up!] }}}
" EOF
