set nocompatible
call plug#begin('~/.vim/plugged')

Plug 'airblade/vim-gitgutter'
Plug 'ervandew/supertab'
Plug 'flowtype/vim-flow'
Plug 'hashivim/vim-terraform'
Plug 'janko-m/vim-test'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'junegunn/seoul256.vim'
Plug 'luochen1990/rainbow'
Plug 'mileszs/ack.vim'
Plug 'ntpeters/vim-better-whitespace'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-surround'
Plug 'thoughtbot/vim-rspec'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'wellle/targets.vim'
Plug 'mustache/vim-mustache-handlebars'
Plug 'hail2u/vim-css3-syntax'
Plug 'cakebaker/scss-syntax.vim'
Plug 'morhetz/gruvbox'
Plug 'scrooloose/nerdtree'
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }


call plug#end()

let mapleader = ","

map <S-Enter> O<Esc>
map <CR> o<Esc>
map <Leader>n :set nopaste<cr>
map <Leader>p :set paste<cr>
map <Leader>b obyebug<cr>puts 'byebug'<esc>:w<cr>
map <Leader>s <Esc>:w<CR>
map <Leader>h :nohl<cr>
map <C-h> :nohl<cr>
nmap <Leader>i <Plug>(Prettier)
let g:prettier#exec_cmd_async = 1

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
set statusline+=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P
set formatoptions-=or
set background=dark

set updatetime=100 " default is 4s now 100ms (ensure this doesn't cause issues)
set tabpagemax=25

let g:fuzzy_ignore = "*.png;*.PNG;*.JPG;*.jpg;*.GIF;*.gif;vendor/**;coverage/**;tmp/**;rdoc/**"
let g:ackprg="ack-grep -H --nocolor --nogroup --column"
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.git|\.hg|\.svn|tmp|vendor|coverage)$',
  \ }
map Q <Nop>
map K <Nop>

" Centre search results
map N Nzz
map n nzz




" Nerdtree
map - :NERDTreeToggle<CR> " open/close nerdtree window
map <leader>r :NERDTreeFind<cr> " this is the key to jump to the nerdtree window from any other window
autocmd BufWinEnter " NERDTreeFind
map ] :NERDTreeFind<CR> " pressing this inside any open file in vim will jump to the nerdtree and highlight where that file is -> very useful when you have multiple files open at once



" Don't add the comment prefix when I hit enter or o/O on a comment line.
au BufNewFile,BufRead *.less set filetype=css
au BufNewFile,BufRead *.scss set filetype=sass
syntax enable
let g:rainbow_active = 1
" au VimEnter * RainbowParenthesesToggle
" au Syntax * RainbowParenthesesLoadRound
" au Syntax * RainbowParenthesesLoadSquare

let g:turbux_command_prefix = 'bundle exec'
let g:ycm_key_detailed_diagnostics = '<leader>b'
let g:terraform_fmt_on_save = 1

" GitGutter styling to use · instead of +/-
let g:gitgutter_sign_added = '∙'
let g:gitgutter_sign_modified = '∙'
let g:gitgutter_sign_removed = '∙'
let g:gitgutter_sign_modified_removed = '∙'

let g:airline_powerline_fonts = 1

" RSpec.vim mappings
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>r :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

" fzf
nmap ; :Buffers<CR>
nmap <Leader>t :Files<CR>
nmap <Leader>r :Tags<CR>

" ack.vim (ag)
" Tell ack.vim to use ag (the Silver Searcher) instead
let g:ackprg = 'ag --vimgrep'
nmap <M-k>    mo:Ack! "\b<cword>\b" <CR>dd
nmap <Esc>k   mo:Ack! "\b<cword>\b" <CR>

let g:airline_solarized_bg='dark'
highlight clear SignColumn
colorscheme smyck

" let g:airline_left_sep=''
" let g:airline_right_sep=''

let $NVIM_TUI_ENABLE_TRUE_COLOR=1
