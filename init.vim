" copy selection to system clipboard
vnoremap <C-c> "+y

" paste from system clipboard
vnoremap <C-v> "+p

" use the system clipboard (+ register) for all yanking/pasting
set clipboard=unnamedplus

" enable full mouse support in all modes
set mouse=a

" enable highlighting of all search matches
set hlsearch

" enable line nubmers
set nonumber

" converts tabs into spaces when you press the tab key
set expandtab

" disable all bells
set belloff=all

" disable swap file creation
set noswapfile

" disable backup file creation
set nobackup

" do not create a backup before overwriting files
set nowritebackup

" disable persistent undo
set noundofile

" disable the creation of any viminfo file
set viminfo=

" disable the line and column number display in the status line
set noruler

" disable Netrw banner and apply buffer settings
let g:netrw_banner = 0
let g:netrw_bufsettings = 'noma nomod nonumber nowrap nobl'

" highlight trailing whitespace
match ErrorMsg /\s\+$/

" reselect visual block after indenting (>) or outdenting (<)
vnoremap > >gv
vnoremap < <gv

" move 4 characters/lines in Visual mode with Shift + arrow keys
vnoremap <S-Left> 4h
vnoremap <S-Right> 4l
vnoremap <S-Up> 4k
vnoremap <S-Down> 4j

" move to the beginning of the line using 'q'
nnoremap q ^

" move to the end of the line using 'e'
nnoremap e $

" highlight Visual selection
highlight Visual ctermbg=white ctermfg=black

" netrw file explorer highlighting
highlight netrwDir ctermfg=Magenta
highlight netrwClassify ctermfg=Magenta
highlight netrwExe ctermfg=Green

" highlight Python strings
highlight pythonString ctermfg=Red
highlight pythonTripleQuotes ctermfg=Red

" highlight matching parentheses
highlight MatchParen ctermfg=red ctermbg=none guifg=red guibg=none

" make Alt+W behave like Ctrl+W in Normal mode
nnoremap <A-w> <C-w>

" disable unused/undesired mappings in Normal mode
nnoremap gu <nop>
nnoremap gU <nop>
nnoremap ~  <nop>

" disable unused/undesired mappings in Visual mode
vnoremap gu <nop>
vnoremap gU <nop>
vnoremap ~  <nop>

" clear search highlighting with Esc in Normal mode
nnoremap <silent> <Esc> :noh<CR>

" indentation rules for HTML, CSS, and JavaScript files
augroup filetype_indent
  autocmd FileType html,css,javascript setlocal tabstop=2
  autocmd FileType html,css,javascript setlocal shiftwidth=2
augroup END

" disable the 'a' key (append) in Normal mode
nnoremap a <Nop>

" disable the 's' key (substitute) in Normal mode
nnoremap s <Nop>

" disable arrow keys in normal mode
nnoremap h <Nop>
nnoremap j <Nop>
nnoremap k <Nop>
nnoremap l <Nop>

" disable the 'x' key (delete character) in Normal mode
nnoremap x <Nop>

" disable the 'c' key (change) in Normal mode to prevent changing the current line
nnoremap c <Nop>

" disable [ in Normal mode
nnoremap [ <Nop>

" disable ] in Normal mode
nnoremap ] <Nop>

" disable redo to prevent accidental changes
nnoremap <C-r> <Nop>

" disable the dot operator to prevent accidental command repetition
nnoremap . <Nop>

" toggle 88-char colorcolumn for Black formatter
function! ToggleCC()
  if &colorcolumn == ''
    set colorcolumn=88
  else
    set colorcolumn=
  endif
endfunction

" user command to toggle colorcolumn
command! Setcc call ToggleCC()

" command-line abbreviation: setcc -> Setcc
cnoreabbrev setcc Setcc

" copy current file name to Windows clipboard (WSL)
noremap /file :call system('/mnt/c/Windows/System32/clip.exe', expand('%:t')) \| echo 'Filename: ' . expand('%:t')<CR>

" copy current file path to Windows clipboard (WSL)
noremap /path :call system('/mnt/c/Windows/System32/clip.exe', expand('%:p')) \| echo 'Path: ' . expand('%:p')<CR>

" copy highlight group name under cursor to Windows clipboard (WSL)
noremap /color :call system('/mnt/c/Windows/System32/clip.exe', synIDattr(synID(line('.'), col('.'), 1), 'name')) \| echo 'Highlight copied'<CR>
