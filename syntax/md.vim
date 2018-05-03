" Vim syntax file
" Language: md
" Maintainer: srbcheema1


if exists("b:current_syntax")
  finish
endif

"syntax includes region , match , keyword

let b:current_syntax = "md"

"Keywords
syn keyword infoKeyword NOTE
hi infoKeyword ctermfg=red cterm=bold

"Code
syn region wrkCodeBlock start="`"hs=s+1 end="`"he=e-1
hi wrkCodeBlock  ctermbg=darkgray

"heading1
syn region heading1 start="#\s" end="$" contained
syn region H1 start="^\s*#\s" end="\n" contains=heading1
hi heading1 ctermfg=green

"heading2
syn region h2 start="^\s*##\s" end="\n"
hi h2 ctermfg=magenta

"heading3
syn region h3 start="^\s*###\s" end="\n"
hi h3 ctermfg=cyan

"heading4
syn region h4 start="^\s*####\s" end="\n"
hi h4 ctermfg=brown

"emphasis
syn region emphasis start="\*[A-Za-z]"hs=s+1 end="[A-Za-z]\*"he=e-1
hi emphasis cterm=italic

"Strong
syn region strong start="\*\*[A-Za-z]"hs=s+2 end="[A-Za-z]\*\*"he=e-2
hi strong cterm=bold

"Link
syn region info_link start='http' end='[\n ]'he=e-1
hi info_link cterm=underline

"Quoted
syn region quoted start="^\s*>\s.*" end="\n"
syn region quoted start="^\~\~\~"hs=s+3 end="\~\~\~"he=e-3
syn region quoted start="^```"hs=s+3 end="```"he=e-3
hi quoted ctermbg=darkgray

"Bulletin
syn match info_list '^\s*\d\+[.]\s'

syn match info_list '\[\s\]'
syn match info_list '\[x\]'

syn match info_list '^\s*-\s'
syn match info_list '^\s*\*\s'

hi info_list ctermfg=yellow


"MY Bulletin
syn match info_bulletin '^\s*i\s'
syn match info_bulletin '^\s*ii\s'
syn match info_bulletin '^\s*iii\s'
syn match info_bulletin '^\s*iv\s'
syn match info_bulletin '^\s*v\s'
syn match info_bulletin '^\s*vi\s'
syn match info_bulletin '^\s*vii\s'
syn match info_bulletin '^\s*viii\s'

syn match info_bulletin '^\s*i[.]\s'
syn match info_bulletin '^\s*ii[.]\s'
syn match info_bulletin '^\s*iii[.]\s'
syn match info_bulletin '^\s*iv[.]\s'
syn match info_bulletin '^\s*v[.]\s'
syn match info_bulletin '^\s*vi[.]\s'
syn match info_bulletin '^\s*vii[.]\s'
syn match info_bulletin '^\s*viii[.]\s'

syn match info_bulletin '^\s*\d\+\s'
syn match info_bulletin '^\s*\d\+[.]\d\+\s'
syn match info_bulletin '^\s*\d\+[.]\d\+[.]\s'
syn match info_bulletin '^\s*\d\+[.][a-z]\s'
syn match info_bulletin '^\s*\d\+[.][a-z][.]\s'

syn match info_bulletin '^\s*[a-z][.]\s'
syn match info_bulletin '^\s*[A-z][.]\s'
