set fenc=utf-8
set mouse=a
set clipboard+=unnamedplus
set wildmenu wildmode=list:longest,full
set number
set cursorline
set virtualedit=onemore
set list listchars=tab:\▸\-,eol:↲,extends:»,precedes:«,nbsp:%
set expandtab
set tabstop=2
set shiftwidth=2
set scrolloff=5
set smartindent
set showmatch
set statusline=2
set noshowmode
set laststatus=2
set ignorecase
set smartcase
set incsearch
set wrapscan
set hlsearch
set splitright
set ttimeoutlen=50
set noswapfile
set helplang=ja
set hlsearch
hi Search ctermbg=Magenta
hi Search ctermfg=Black

"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/home/kayaker/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/home/kayaker/.cache/dein')
  call dein#begin('/home/kayaker/.cache/dein')

" Let dein manage dein
" Required:
  call dein#add('/home/kayaker/.cache/dein/repos/github.com/Shougo/dein.vim')

" Add or remove your plugins here:
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')
  call dein#add('vim-airline/vim-airline')
  call dein#add('scrooloose/nerdtree')
  call dein#add('markonm/traces.vim')
  call dein#add('vim-jp/vimdoc-ja')
  call dein#add('lervag/vimtex')
  call dein#add('junegunn/fzf', { 'build': './install --all', 'merged': 0 })
  call dein#add('junegunn/fzf.vim', { 'depends': 'fzf' })
  call dein#add('tpope/vim-commentary')

" You can specify revision/branch/tag.
" call dein#add('Shougo/deol.nvim', { 'rev': '01203d4c9' })

" Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on
" startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------

" Nerdtree & Nerdtree-Tab
let NERDTreeShowHidden = 1
let g:NERDTreeWinSize = 30
autocmd vimenter * NERDTree

"airline_powerline_fonts = 1 有効にすると表示最上行 buffers
" が二行になり表示が狂う。
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#whitespace#mixed_indent_algo = 1
let g:airline#extensions#tabline#buffer_idx_format = { '0': '0 ', '1': '1 ','2': '2 ', '3': '3 ', '4': '4 ', '5': '5 ', '6': '6 ', '7': '7 ','8': '8 ', '9': '9 '}
let g:airline#extensions#tabline#fnamemod = ':t'
" buffers の切り替え
nmap <S-h> <Plug>AirlineSelectPrevTab
nmap <S-l> <Plug>AirlineSelectNextTab
" -------- 翻訳 --------
" trans を用いて選択範囲を翻訳
" 英語 >> 日本語
" w !trans -b -sl=en -tl=ja
vnoremap <F2> :w !trans -b -sl=en -tl=ja<CR>
" 日本語 >> 英語
" w !trans -b -sl=ja -tl=en
vnoremap <F2><F2> :w !trans -b -sl=ja -tl=en<CR>
" ----------------------
" 検索 ハイライトの解除 <Esc> 2回連打
noremap <Esc><Esc> :nohlsearch<CR><Esc>
"  " F5 で python script 実行。
nmap <F5> :!python3 %
" buffer を閉じる。
nmap <f1> :bd!<CR>
" 直近のハイライトを解除する
noremap <ESC><ESC> :nohl<CR>
" fzf 2020-03-20
" https://qiita.com/Sa2Knight/items/6635af9fc648a5431685
nnoremap <silent> ,f :Files<CR>
nnoremap <silent> ,gf :GFiles<CR>
nnoremap <silent> ,gF :GFiles?<CR>
nnoremap <silent> ,b :Buffers<CR>
nnoremap <silent> ,l :BLines<CR>
nnoremap <silent> ,h :History<CR>
nnoremap <silent> ,m :Mark<CR>
