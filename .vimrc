set expandtab
set smarttab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set ignorecase
set smartcase
set hlsearch
set incsearch
set noswapfile

set nobackup
set nowritebackup
"set number

set foldcolumn=2

filetype plugin indent on 
set encoding=utf-8
set nocompatible 
syntax enable 

set guioptions= "Отключаем панели прокрутки в GUI
set showtabline=0 "Отключаем панель табов (окошки FTW)

"Сам по себе number показывает справа номера строк
"relativenumber - нумерацию строк относительно положения курсора
set number relativenumber "А это гибридный вариант. Протестируйте все

"wrap заставляет переносить строчки без их разделения
"Соответсвенно nowrap рендерит строчки за границами экрана
set wrap linebreak nolist "Данная вариация работает как wrap...
"... но переносит строчки не посимвольно, а по словам

"Предыдущий способ известен как soft wrapping
"При желании вы можете заставить Вим насильно разделять...
"... строчки в самом тексте вот так:
set textwidth=80 "Где 80 стоит заменить на нужную вам длину строки

set guifont=DejaVu\ Sans\ Mono\ for\ Powerline:h11

call plug#begin('~/.vim/bundle') 

Plug 'https://github.com/joshdick/onedark.vim'
Plug 'https://github.com/sainnhe/sonokai'
Plug 'https://github.com/preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'https://github.com/mhinz/vim-startify'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'https://github.com/udalov/kotlin-vim'
call plug#end() 

colorscheme onedark

let g:airline_powerline_fonts = 1 "Включить поддержку Powerline шрифтов
let g:airline#extensions#keymap#enabled = 0 "Не показывать текущий маппинг
let g:airline_section_z = "\ue0a1:%l/%L Col:%c" "Кастомная графа положения курсора
let g:Powerline_symbols='unicode' "Поддержка unicode
let g:airline#extensions#xkblayout#enabled = 0 "Про это позже расскажу

nmap <c-n> :NERDTreeToggle<CR>




nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()
