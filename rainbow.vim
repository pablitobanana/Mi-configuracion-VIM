
let g:rainbow_conf = {
\	'guifgs': ['royalblue3', 'darkorange3', 'green', 'firebrick'],
\	'ctermfgs': [202,'red',33,34,220,200], 
\ 'separately': {
\   	'html': {
\			'parentheses': ['start=/\v\<((class|id|script|style|area|base|br|col|embed|hr|img|input|keygen|menuitem|meta|param|source|track|wbr|form|link)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
\		},
\       '*':{
\         
\        'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold contains=@colorableGroup'],
\
\         },
\   },
\  
\}

let g:rainbow_active = 1

