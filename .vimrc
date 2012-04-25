" Environment {
  " Basics {
    set nocompatible  " must be first line
    colorscheme clouds
  " }

  " Setup Bundle Support {
    " The next two lines ensure that the ~/.vim/bundle/ system works
    runtime! autoload/pathogen.vim
    silent! call pathogen#helptags()
    silent! call pathogen#runtime_append_all_bundles()
  " }

" }

" General {
  filetype off
  syntax on
  filetype plugin indent on

  " Hide toolbar
  if has("gui_running")
      set guioptions=egmrt
  endif

  set encoding=utf-8

  set modelines=0
  set nocompatible " breaks compatibility with original vi
  set backspace=indent,eol,start " allow backspace in insert mode

  set autoindent    " text indenting
  set smartindent   " as above

  set tabstop=2     " number of spaces in a tab
  set softtabstop=2 " as above
  set shiftwidth=2  " as above
  set expandtab     " always turn tabs into spaces. (you might want smarttab)

  set showmatch     " show matching brackets/parenthesis
  set incsearch     " find as you type search
  set nohlsearch      " highlight search terms
  set ignorecase    " case insensitive search
  set smartcase

  set nowrap

  set history=100   " lines of command history
  set showmode
  set showcmd       " show incomplete commands

  set visualbell
  set number        " show line numbers
  set numberwidth=5

  set hlsearch      " highlight searched-for phrases
  set incsearch     " highlight search as you type
  set ruler         " display current line number

  set wildmenu    " show list instead of just completing
  set wildmode=list:longest,full " command <Tab> completion, list matches, then longest common part, then all.

  set list
  set listchars=tab:>.,trail:.,extends:#,nbsp:. " Highlight problematic whitespace

  set statusline=%{fugitive#statusline()}"
" }

" Key (re)Mappings {
  " The default leader is '\', but many people prefer ',' as it's in a standard location
  let mapleader = ','

  " Quick editing and loading of .vimrc
  noremap <F2> :tabe ~/.vimrc<Enter>
  noremap <S-F2> :source ~/.vimrc<Enter>

" }

" Plugins {
  " NerdTree {
    map <F1> :NERDTreeToggle<CR> " toggle nerdtree with fn + f2
    "map <leader>e :NERDTreeFind<CR>
    "nmap <leader>nt :NERDTreeFind<CR>

    let NERDTreeShowBookmarks=1
    let NERDTreeIgnore=['\.pyc', '\~$', '\.swo$', '\.swp$', '\.git', '\.hg', '\.svn', '\.bzr']
    let NERDTreeChDirMode=0
    let NERDTreeQuitOnOpen=1
    let NERDTreeShowHidden=1
    let NERDTreeKeepTreeInNewTab=1
  " }
" }

" GUI Settings {
  " GVIM- (here instead of .gvimrc)
  if has('gui_running')
    set guioptions-=T         " remove the toolbar
    set lines=40              " 40 lines of text instead of 24,
  else
    set term=builtin_ansi     " Make arrow and other keys work
  endif

  set gfn=Monaco:h11
" }

" Automatic commands
if has("autocmd")
	" Enable file type detection
	filetype on
	" Treat .json files as .js
	autocmd BufNewFile,BufRead *.json setfiletype json syntax=javascript
endif

