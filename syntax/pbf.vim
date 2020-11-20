" PBF syntax file
" Language:     PBF
" Maintainer:   15b3
" Last Change:  2020-11-21
" Filenames:    *.pbf
" License:      MIT License
" URL:          https://github.com/15b3/pbf-syntax

if exists("b:current_syntax")
  finish
endif


etlocal iskeyword+=@-@

syn keyword pbfKeyword @pbf @env @pgm @src @dir @lopt @llib @prm @plib @option @subshell @cppopt @use @lib @aopt @mod @ipath
syn match pbfKeywordEnd "\<@end\s*pbf"
syn match pbfKeywordEnd "\<@end\s*pgm"
syn match pbfKeywordEnd "\<@end\s*src"
syn match pbfKeywordEnd "\<@end$"

syn keyword pbfKeyword2 CLASS INCMK CC FC LD FFLAGS CPPFLAGS CFLAGS LDFLAGS
syn match pbfKeyword3 "\vmodule load"

syn match pbfComment "^\s*\zs#.*$"

syn match pbfOperator "\v\:"

syn match pbfVar "\${.\{-}}"



hi def link pbfKeyword Function
hi def link pbfKeywordEnd Function

hi def link pbfKeyword2 Statement
hi def link pbfKeyword3 Statement

hi def link pbfComment Comment

hi def link pbfVar Identifier

hi def link pbfOperator Operator


let b:current_syntax = "pbf"
