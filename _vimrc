set number
set relativenumber
filetype on
filetype plugin on
filetype indent on
syntax on
set number
set termguicolors
set cursorline
set showcmd
set showmode
set history=1000
set wildmenu
set wildmode=list:longest
set nobackup
set showmatch
set hlsearch
"indent size
set autoindent expandtab tabstop=2 shiftwidth=2
"enter normal mode with kj
imap kj <Esc>
"tab on normal mode
nnoremap <Tab> >>
nnoremap <S-Tab> <<
"tab on visual mode
vnoremap <Tab> >gv
vnoremap <S-Tab> <gv
"change how cursor look on different modes
set guicursor=n-v-c:block,i-ci:ver25,r-cr:hor20
" change how cursor looks -for terminal and bash-
if &term =~ 'xterm' || &term =~ 'interix'
  " 1 or 0 -> blinking block
  " 2 -> solid block
  " 3 -> blinking underscore
  " 4 -> solid underscore
  " 5 -> blinking vertical bar
  " 6 -> solid vertical bar
  let &t_SI = "\e[5 q" " Enter Insert Mode (Vertical bar)
  let &t_SR = "\e[3 q" " Enter Replace Mode (Underline)
  let &t_EI = "\e[1 q" " Leave Insert/Replace Mode (Block)
endif
"exit a file to the parent folder
nnoremap <leader>e :e %:h<CR>
"set light gray for numbers and other color for current line
highlight LineNr ctermfg=gray guifg=#777777
highlight CursorLineNr guifg=#ffd700 gui=bold,underline
highlight CursorLine cterm=NONE gui=NONE guibg=NONE cterm=NONE
