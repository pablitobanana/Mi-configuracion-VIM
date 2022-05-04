set lazyredraw
set tf
set relativenumber
set number
set mouse=a
set numberwidth=5
set clipboard=unnamed
set showcmd
set ruler
set encoding=utf-8 
set cursorline
set showmatch
set noshowmode 
set syntax=off
set ignorecase
set smartcase
set tabstop=2
set sw=2
"set expandtab
set laststatus=2 
set smc=0




"------------------------------------------------Plugs---------------------------------------
call plug#begin('~/.vim/plugged')

"Temas
Plug 'morhetz/gruvbox'  "te pone un mamalon y sensual tema

"barra
Plug 'maximbaz/lightline-ale' 
Plug 'itchyny/lightline.vim'  "te pone mamalona la barra de abajo
Plug 'shinchu/lightline-gruvbox.vim'

"syntax
Plug 'sheerun/vim-polyglot'   "resaltado de sintaxis
"Plug 'norcalli/nvim-colorizer.lua' "muesta el color del numero hexadesimal
Plug 'gko/vim-coloresque' "muestra el color del numero
Plug 'luochen1990/rainbow' "parentesis de colores
Plug 'tpope/vim-surround' "enbuelve lo que seleccionas con  modo Visual das a la S y selecionar el caracter 


"autocompletado
Plug 'sirver/ultisnips' "te pone snippets que tienes en la carpeta ultisnips
Plug 'honza/vim-snippets' "creas tus propios snippets 
Plug 'neoclide/coc.nvim', {'branch': 'release'} "autocompletado
Plug 'jiangmiao/auto-pairs' "autocompletado de llaves
Plug 'alvan/vim-closetag'		"autocomletado de etiquetas
Plug 'voronkovich/ultisnips-vue' "vue-snippets

"IDE
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim' "asi al chile no se que hacer carnal
Plug 'easymotion/vim-easymotion'   "permite navegar facil com convinacion de teclas
Plug 'mhinz/vim-signify'          " te avisa que se quita o que se agrega
Plug 'scrooloose/nerdtree'         "te genera un arbol de archivos
Plug 'Yggdroot/indentLine'    " te genera un identado
Plug 'christoomey/vim-tmux-navigator'  "te permite navegar entre las ventanas
"Plug 'turbio/bracey.vim' "live server
Plug 'scrooloose/nerdcommenter'  "genera comentarios 
Plug 'mattn/emmet-vim'

call plug#end() 


"--------------------------------------------configuacion de plugins------------------------------------------------
"tecla lider
let mapleader = " "
"comandos quese ejecutan actumaticamnte al arrancar
autocmd VimEnter * highlight Normal ctermbg=16 ctermfg=231
"ctermfg = 33
autocmd VimEnter * highlight Comment ctermfg=240
autocmd VimEnter * highlight CursorLine ctermbg=232  
autocmd VimEnter * highlight Number ctermfg=231 
autocmd VimEnter * highlight jsObjectProp ctermfg=150 
autocmd VimEnter * highlight Float ctermfg=231  
autocmd VimEnter * highlight Operator ctermfg=160
autocmd VimEnter * highlight Noise ctermfg=31
autocmd VimEnter * highlight jsDot ctermfg=255


"configuracion de python
let g:python3_host_prog = 'C:\Users\Axel Silva\AppData\Local\Programs\Python\Python37\python.exe' "le decimos donde se encuentra python37
let g:python_host_prog = 'C:/python27/python.exe' "ruta de donde se encuentra python27
let g:UltiSnipsUsePythonVersion = 3  "le decimos que version va a utilizar
let g:ycm_python_binary_path = 'python3' " esto no se que sea pero esta jalando asi que dejalo asi

"indentLine
let g:indentLine_defaultGroup = 'SpecialKey'
let g:indentLine_color_term = 117
let g:indentLine_enabled = 1
let g:indentLine_char_list = ['¦','⇣','∫','φ','‰','ψ','ƒ']

"tema
let g:gruvbox_contrast_dark='hard' 
colorscheme gruvbox

 
"NerdTree
let NERDTreeQuitOnOpen=1
let NERDTreeMinimalUI=1
let NERDTreeDirArrows=1
let NERDTreeShowLineNumbers=1
let NERDTreeMapOpenInTab='\t'

"snippets
let g:UltiSnipsSnippetDirectories=[$HOME.'/AppData/Local/nvim/UltiSnips'] "le decimos donde estan los ultisnips
let g:UltiSnipsExpandTrigger="<S-tab>"  "es shift + tab para que se ejecuten los snippets 


"nerdcommenter
filetype plugin on
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'
let g:NERDTrimTrailingWhitespace = 1
let g:NERDToggleCheckAllLines = 1
let g:NERDCreateDefaultMappings = 1
let g:NERDSpaceDelims = 1
"emmet
let g:user_emmet_mode='iv'
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall
let g:user_emmet_leader_key=';'


" tmux navigator
let g:tmux_navigator_disable_when_zoomed = 1
let g:tmux_navigator_preserve_zoom = 1

"closetag
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.jsx,*.js' "autocompletado de tags 

"colores en los colores
let g:ColorizerAttachToBuffer = 1

"navegacion
let g:tmux_navigator_no_mappings = 1

"fzf
command! -bang -nargs=? -complete=dir GFiles
  \ call fzf#vim#gitfiles(<q-args>, fzf#vim#with_preview(), <bang>0)

command! -bang -nargs=* Ag
  \ call fzf#vim#ag(<q-args>, fzf#vim#with_preview(), <bang>0)

command! -bang -nargs=? -complete=dir Files
  \ call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)


source $HOME/AppData/Local/nvim/rainbow.vim "configuracion de los parentesis de colores
source $HOME/AppData/Local/nvim/coc.vim  "configuracion de coc
"source $HOME/AppData/Local/nvim/funciones.vim "configuracion de funciones 



"-------------------------------------configuraciones de teclas-------------------

"Plugs
nmap <leader>gd <Plug>(coc-definition)
nmap <leader>gy <Plug>(coc-type-definition)
nmap <leader>gi <Plug>(coc-implementation)
nmap <leader>gr <Plug>(coc-references)
xmap s <Plug>VSurround
nmap <Leader>s <Plug>(easymotion-s2)
nmap <Leader>nt :NERDTreeFind<cr>  
map <Leader>f :Files<CR>
map <Leader>ag :Ag<CR>



nmap <Leader>w :w<CR>
nmap <Leader>W :wq<CR>
nmap <Leader>q :q<CR>
nmap <Leader>qq :q!<CR>
inoremap <Esc> <Esc><Esc>

nnoremap <Leader>> 10<C-w>> 	
nnoremap <Leader>< 10<C-w><

nnoremap <Leader>; $a;<Esc>	
nnoremap <Leader>, $a,<Esc>	
nnoremap <leader>{ A{}<esc>i 

"tmux navegator
nnoremap <silent> <Leader><C-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <Leader><C-j> :TmuxNavigateDown<cr>
nnoremap <silent> <Leader><C-k> :TmuxNavigateUp<cr>
nnoremap <silent> <Leader><C-l> :TmuxNavigateRight<cr>

"faster scrolling

nnoremap <c-j> 10<C-e>M
nnoremap <c-k> 10<C-y>M

"abrir nueva pestaña para moverse entre ellas 'gt'
nmap <C-t> :tabnew 



