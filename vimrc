if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim
  call neobundle#begin(expand('~/.vim/.bundle'))
  NeoBundle 'The-NERD-tree'
  "NeoBundle 'taglist.vim'
  NeoBundle 'vim-coffee-script'
  NeoBundle 'tomasr/molokai'
  NeoBundle 'ctrlpvim/ctrlp.vim'
  NeoBundle 'posva/vim-vue'
  call neobundle#end()
endif

syntax enable
filetype on
colorscheme molokai
set t_Co=256
set autoindent
set clipboard=unnamed
set expandtab
set hidden
set incsearch
set shiftwidth=2
set showmatch
set smartcase
set smartindent
set smarttab
set tabstop=2
set nowrapscan
set encoding=utf-8
set backspace=start,eol,indent
set whichwrap=b,s,[,],,~
set formatoptions=tcqr
set number
set hlsearch
set laststatus=2
set statusline=%F%r\ [ASCII=\%03.3b]\ %=[%p%%]

augroup eol_space
  autocmd BufWritePre * :%s/\s\+$//ge
"  autocmd BufWritePre * :%s/\t\+$//e
augroup END
"-----------------------------------------------------------------------
"
" for indent-guide
"
"-----------------------------------------------------------------------
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4

"-----------------------------------------------------------------------
"
" for NERD-tree
"
"-----------------------------------------------------------------------
let file_name = expand("%")
if has('vim_starting') &&  file_name == ""
    autocmd VimEnter * NERDTree ./
endif
nmap <F12> :NERDTreeToggle<Return>
let g:NERDTreeDirArrows=0
"-----------------------------------------------------------------------
"
" for taglist
"
"-----------------------------------------------------------------------
nmap tt :Tlist<Return>

"-----------------------------------------------------------------------
"
" for vim-coffee-script
"
"-----------------------------------------------------------------------
au BufRead,BufNewFile *.coffee set filetype=coffee
"-----------------------------------------------------------------------
"
"
"
"-----------------------------------------------------------------------
