let g:airline#themes#oceanicnext#palette = {}

let s:N1   = [ '' , '' , 15  , 2 ]
let s:N2   = [ '' , '' , 255 , 238 ]
let s:N3   = [ '' , '' , 20  , 15 ]
let g:airline#themes#oceanicnext#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)

let g:airline#themes#oceanicnext#palette.normal_modified = {
      \ 'airline_c': [ '' , '' , 16 , 15 , '' ] ,
      \ }


let s:I1 = [ '' , '' , 15  , 4  ]
let s:I2 = [ '' , '' , 255 , 238  ]
let s:I3 = [ '' , '' , 4  , 15  ]
let g:airline#themes#oceanicnext#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#oceanicnext#palette.insert_modified = {
      \ 'airline_c': [ '' , '' , 16 , 15 , '' ] ,
      \ }
let g:airline#themes#oceanicnext#palette.insert_paste = {
      \ 'airline_a': [ '' , '' , '' , 15 , '' ] ,
      \ }


let g:airline#themes#oceanicnext#palette.replace = copy(g:airline#themes#oceanicnext#palette.insert)
let g:airline#themes#oceanicnext#palette.replace.airline_a = [ '' , '' , 15 , 1 , '' ]
let g:airline#themes#oceanicnext#palette.replace_modified = g:airline#themes#oceanicnext#palette.insert_modified


let s:V1 = [ '' , '' , 15 , 3 ]
let s:V2 = [ '' , '' , 255 , 238 ]
let s:V3 = [ '' , '' , 3  , 15 ]
let g:airline#themes#oceanicnext#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#oceanicnext#palette.visual_modified = {
      \ 'airline_c': [ '' , '' , 3 , 15 , '' ] ,
      \ }


let s:IA1 = [ '' , '' , 239 , 234 , '' ]
let s:IA2 = [ '' , '' , 239 , 235 , '' ]
let s:IA3 = [ '' , '' , 239 , 236 , '' ]
let g:airline#themes#oceanicnext#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3)
let g:airline#themes#oceanicnext#palette.inactive_modified = {
      \ 'airline_c': [ '' , '' , 15 , '' , '' ] ,
      \ }

