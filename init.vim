" set termguicolors
" set wildmenu
" set noswapfile
filetype on 
set lazyredraw
set tf
set number rnu
set mouse=a
set numberwidth=5
set clipboard=unnamed
set showcmd
set ruler
set encoding=utf-8 
set cursorline
set showmatch
set noshowmode 
syntax on
syntax enable
set ignorecase
set smartindent
set tabstop=2
set sw=2
set softtabstop=2
set expandtab
set autoindent
set spr
set laststatus=2 
set smc=0
set nocompatible
" au BufNewFile,BufRead *.html set filetype=htmldjango
" au BufNewFile,BufRead *.py
"      set tabstop=2
"      set softtabstop=2
"      set shiftwidth=2
"      set textwidth=79
"      set expandtab
"      set autoindent
"      set fileformat=unix

"let g:polyglot_disabled = ['javascript']
"------------------------------------------------Plugs---------------------------------------
call plug#begin('~/.vim/plugged')

"Temas
Plug 'morhetz/gruvbox'  "te pone un mamalon y sensual tema

"barra
Plug 'itchyny/lightline.vim'  "te pone mamalona la barra de abajo
Plug 'itchyny/vim-gitbranch' "agrega la rama en la que se esta tabajando

"syntax
Plug 'posva/vim-vue' "resaltado para vue
Plug 'sheerun/vim-polyglot'  "resaltado de sintaxis
Plug 'gko/vim-coloresque' "muestra el color del numero
Plug 'luochen1990/rainbow' "parentesis de colores
Plug 'tpope/vim-surround' "enbuelve lo que seleccionas con  modo Visual das a la S y selecionar el caracter 


"autocompletado
Plug 'SirVer/ultisnips' "te pone snippets que tienes en la carpeta ultisnips
Plug 'honza/vim-snippets' "creas tus propios snippets 
Plug 'neoclide/coc.nvim', {'branch': 'release'} "autocompletado
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'		"autocomletado de etiquetas
Plug 'voronkovich/ultisnips-vue' "vue-snippets

"IDE
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim' "asi al chile no se que hacer carnal
Plug 'easymotion/vim-easymotion'   "permite navegar facil com convinacion de teclas
Plug 'mhinz/vim-signify'          " te avisa que se quita o que se agrega en git
Plug 'scrooloose/nerdtree'         "te genera un arbol de archivos
Plug 'christoomey/vim-tmux-navigator'  "te permite navegar entre las ventanas
Plug 'scrooloose/nerdcommenter'  "genera comentarios 
Plug 'Yggdroot/indentLine' "linea de marcado de identado
Plug 'vim-scripts/pylint.vim' " plug python
Plug 'vim-python/python-syntax'
Plug 'pappasam/coc-jedi', { 'do': 'yarn install --frozen-lockfile && yarn build', 'branch': 'main' }
Plug 'deoplete-plugins/deoplete-jedi'
Plug 'AndrewRadev/tagalong.vim'
" Plug 'dinhhuy258/vim-database', {'branch': 'master', 'do': ':UpdateRemotePlugins'}
" Plug 'cwood/vim-django'
" Plug 'tweekmonster/django-plus.vim'



call plug#end() 


"--------------------------------------------configuacion de plugins------------------------------------------------
"tecla lider
let mapleader = " "
"comandos quese ejecutan actumaticamnte al arrancar
autocmd VimEnter * highlight Normal ctermbg=16 ctermfg=231
"ctermfg = 33
autocmd VimEnter * highlight Comment ctermfg=240
autocmd VimEnter * highlight CursorLine ctermbg=233  
autocmd VimEnter * highlight Number ctermfg=231 
autocmd VimEnter * highlight jsObjectProp ctermfg=150 
autocmd VimEnter * highlight Float ctermfg=231  
autocmd VimEnter * highlight Operator ctermfg=160
autocmd VimEnter * highlight Noise ctermfg=31
autocmd VimEnter * highlight jsDot ctermfg=255
autocmd VimEnter * syntax sync fromstart

"configuracion de python
let g:python3_host_prog = 'C:\Users\david\AppData\Local\Programs\Python\Python310\python.exe' "le decimos donde se encuentra python37
let g:python_host_prog = 'C:\python27\python.exe' "ruta de donde se encuentra python27
let g:UltiSnipsUsePythonVersion = 3  "le decimos que version va a utilizar
let g:ycm_python_binary_path = 'python3' " esto no se que sea pero esta jalando asi que dejalo asi

"indentLine
let g:indentLine_defaultGroup = 'SpecialKey'
let g:indentLine_color_term = 117
let g:indentLine_enabled = 1
let g:indentLine_char_list = ["▏"] "['¦',,'|']

"tema
let g:gruvbox_contrast_dark='hard' 
colorscheme gruvbox
"barra 
let g:lightline = {
      \ 'colorscheme': 'solarized',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified'] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'gitbranch#name'
      \ },
      \ }

"Kite
" let g:kite_supported_languages = ['python','javascript']

"coc
" autocmd FileType python let b:coc_suggest_disable=1
" autocmd FileType javascript let b:coc_suggest_disable=1
"let g:jedi#use_tabs_not_buffers = 1


"NerdTree
let NERDTreeQuitOnOpen=1
let NERDTreeMinimalUI=1
let NERDTreeDirArrows=1
let NERDTreeShowLineNumbers=1
let NERDTreeMapOpenInTab='t'

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


" tmux navigator
let g:tmux_navigator_disable_when_zoomed = 1
let g:tmux_navigator_preserve_zoom = 1

"closetag
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.jsx,*.js, *.vue' "autocompletado de tags 

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
source $HOME/AppData/Local/nvim/coc2.vim  "configuracion de coc
"source $HOME/AppData/Local/nvim/funciones.vim "configuracion de funciones 

let g:jedi#environment_path = "C:\Users\david\AppData\Local\Programs\Python\Python310"

"-------------------------------------configuraciones de teclas-------------------

"Plugs
nnoremap <leader>gd <Plug>(coc-definition)
nnoremap <leader>gy <Plug>(coc-type-definition)
nnoremap <leader>gi <Plug>(coc-implementation)
nnoremap <leader>gr <Plug>(coc-references)
vnoremap s <Plug>VSurround
nnoremap <Leader>s <Plug>(easymotion-s2)
nnoremap <Leader>nt :NERDTreeFind<cr>  
nnoremap <Leader>f :Files<CR>
"map <Leader>ag :Ag<CR>
nnoremap <leader>pr <Plug>(coc-format)
nnoremap <leader>pf <Plug>(coc-format-selected)
vnoremap <leader>pf <Plug>(coc-format-selected)



noremap <Leader>w :w<CR>
nnoremap <Leader>W :wq<CR>
nnoremap <Leader>Wq :wqa<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>qq :q!<CR>
inoremap <Esc> <Esc><Esc>
imap <f1> <ESC>
nnoremap <f1> <ESC>
nnoremap <A-UP> :m-2<CR>
nnoremap <A-DOWN> :m+<CR>

nnoremap <Leader>> 10<C-w>> 	
nnoremap <Leader>< 10<C-w><

nnoremap <Leader>; A;<Esc>	
nnoremap <Leader>, A,<cr>
nnoremap <leader>{ A{}<esc>i 
nnoremap <leader>} a``<esc>i 
"nnoremap <leader>/ :nohlsearch<CR>
nnoremap <leader>/ :let @/ = ""<CR>
nnoremap <leader>. A:<Esc>
nnoremap <leader>: A:<cr>
nnoremap <leader>rw :%s/resplasar/por/g


"tmux navegator
nnoremap <silent> <Leader><C-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <Leader><C-j> :TmuxNavigateDown<cr>
nnoremap <silent> <Leader><C-k> :TmuxNavigateUp<cr>
nnoremap <silent> <Leader><C-l> :TmuxNavigateRight<cr>

"faster scrolling

nnoremap <c-j> 10<C-e>M
nnoremap <c-k> 10<C-y>M

"abrir nueva pestaña para moverse entre ellas 'gt'


nnoremap <leader><Right> :vs 
nnoremap <leader><Up> :sp 
noremap <C-z> u

nnoremap <leader>t :tabnew<Space>
nnoremap <leader>m :tabm<Space>
nnoremap <CR> o<ESC>
nnoremap <leader>cv :edit $MYVIMRC<cr>
