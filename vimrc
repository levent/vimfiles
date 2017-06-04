call pathogen#infect()
call pathogen#helptags()

set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" original repos on github
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
Bundle 'garbas/vim-snipmate'

Plugin 'thoughtbot/vim-rspec'
Plugin 'elixir-lang/vim-elixir'
Plugin 'derekwyatt/vim-scala'
Plugin 'milch/vim-fastlane'

Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-fugitive'
" Bundle 'tpope/vim-surround' targets.vim instead
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-bundler'
Bundle 'tpope/vim-commentary'
Bundle 'wellle/targets.vim'
" Bundle 'vim-scripts/VimClojure'
Bundle 'guns/vim-clojure-static'
Bundle 'tpope/vim-fireplace'
Bundle 'kien/ctrlp.vim'
Bundle 'ervandew/supertab'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'mileszs/ack.vim'
" Bundle 'kien/rainbow_parentheses.vim'
Bundle 'luochen1990/rainbow'
Bundle 'jgdavey/tslime.vim'
Bundle 'jgdavey/vim-turbux'
Bundle 'airblade/vim-gitgutter'
Bundle 'bronson/vim-trailing-whitespace'
Bundle 'rodjek/vim-puppet'
Bundle 'mustache/vim-mode'
Bundle 'slim-template/vim-slim'
Bundle 'kchmck/vim-coffee-script'
Bundle 'hail2u/vim-css3-syntax'
Bundle 'cakebaker/scss-syntax.vim'
Bundle 'othree/html5.vim'
Bundle 'fatih/vim-go'
Bundle 'Blackrush/vim-gocode'
Bundle 'tpope/vim-unimpaired.git'
Bundle 'vim-ruby/vim-ruby'

syntax on
filetype plugin indent on

let mapleader = ","

map <S-Enter> O<Esc>
map <CR> o<Esc>
map <Leader>n :set nopaste<cr>
map <Leader>p :set paste<cr>
map <Leader>b obyebug<cr>puts 'byebug'<esc>:w<cr>
map <Leader>s <Esc>:w<CR>
map <Leader>h :nohl<cr>
map <C-h> :nohl<cr>

set backspace=2 " make backspace work like most other apps
set encoding=utf-8
set showcmd
set number
set softtabstop=2
set tabstop=2
set shiftwidth=2
set expandtab
set ls=2
set list                          " Show invisible characters
set listchars=""                  " Reset the listchars
set listchars=tab:\ \             " a tab should display as "  ", trailing whitespace as "."
set listchars+=trail:.            " show trailing spaces as dots
set listchars+=extends:>          " The character to show in the last column when wrap is
                                  " off and the line continues beyond the right of the screen
set listchars+=precedes:<         " The character to show in the first column when wrap is
                                  " off and the line continues beyond the left of the screen
set hlsearch
set incsearch
set ignorecase
set smartcase
set backupdir=~/.tmp
set directory=~/.tmp " Don't clutter my dirs up with swp and tmp files
set laststatus=2  " Always show status line.
set tags=./tags;
set shiftround " When at 3 spaces and I hit >>, go to 4, not 5.
let g:fuzzy_ignore = "*.png;*.PNG;*.JPG;*.jpg;*.GIF;*.gif;vendor/**;coverage/**;tmp/**;rdoc/**"
let g:ackprg="ack-grep -H --nocolor --nogroup --column"
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.git|\.hg|\.svn|tmp|vendor|coverage)$',
  \ }
set statusline+=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P
map Q <Nop>
map K <Nop>
" Centre search results
map N Nzz
map n nzz
" Don't add the comment prefix when I hit enter or o/O on a comment line.
set formatoptions-=or
au BufNewFile,BufRead *.less set filetype=css
au BufNewFile,BufRead *.scss set filetype=sass
syntax enable
set background=dark
let g:rainbow_active = 1
" au VimEnter * RainbowParenthesesToggle
" au Syntax * RainbowParenthesesLoadRound
" au Syntax * RainbowParenthesesLoadSquare

let g:turbux_command_prefix = 'bundle exec'
let g:ycm_key_detailed_diagnostics = '<leader>b'

" RSpec.vim mappings
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>r :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

highlight clear SignColumn
colorscheme smyck
