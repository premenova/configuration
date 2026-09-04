" Copy the visual selection to the system clipboard
vnoremap <C-c> "+y
" Paste from the system clipboard
vnoremap <C-v> "+p
" Use the system clipboard (register "+") for all yanking and pasting
set clipboard=unnamedplus

" Enable full mouse support in all modes
set mouse=a
" Highlight all search matches
set hlsearch
" Disable line numbers
set nonumber
" Convert tabs to spaces when pressing Tab
set expandtab
" Disable all bells
set belloff=all

" Disable swap file creation
set noswapfile
" Disable backup file creation
set nobackup
" Don't create a backup before overwriting a file
set nowritebackup
" Disable persistent undo
set noundofile
" Disable creation of any viminfo file
set viminfo=

" Hide the line/column number in the status line
set noruler
" Disable the Netrw banner and set buffer options
let g:netrw_banner = 0
let g:netrw_bufsettings = 'noma nomod nonumber nowrap nobl'

" Highlight trailing whitespace
match ErrorMsg /\s\+$/

" Reselect the visual block after indenting (>) or outdenting (<)
vnoremap > >gv
vnoremap < <gv
" Move 4 characters/lines in Visual mode with Shift + arrow keys
vnoremap <S-Left> 4h
vnoremap <S-Right> 4l
vnoremap <S-Up> 4k
vnoremap <S-Down> 4j
" Move to the start of the line with 'q'
nnoremap q ^
" Move to the end of the line with 'e'
nnoremap e $

" Visual selection highlight color
highlight Visual ctermbg=white ctermfg=black
" Netrw file explorer highlight colors
highlight netrwDir ctermfg=Magenta
highlight netrwClassify ctermfg=Magenta
highlight netrwExe ctermfg=Green
" Python string highlight colors
highlight pythonString ctermfg=Red
highlight pythonTripleQuotes ctermfg=Red
" Matching parenthesis highlight color
highlight MatchParen ctermfg=red ctermbg=none guifg=red guibg=none

" Make Alt+W behave like Ctrl+W in Normal mode
nnoremap <A-w> <C-w>
" Disable unused/unwanted mappings in Normal mode
nnoremap gu <nop>
nnoremap gU <nop>
nnoremap ~  <nop>
" Disable unused/unwanted mappings in Visual mode
vnoremap gu <nop>
vnoremap gU <nop>
vnoremap ~  <nop>
" Clear search highlighting with Esc in Normal mode
nnoremap <silent> <Esc> :noh<CR>

set tabstop=4
set shiftwidth=4
" Indentation rules for HTML, CSS, and JavaScript files
augroup filetype_indent
  autocmd FileType html,css,javascript setlocal tabstop=2
  autocmd FileType html,css,javascript setlocal shiftwidth=2
augroup END

" Disable 'a' (append) in Normal mode
nnoremap a <Nop>
" Disable 's' (substitute) in Normal mode
nnoremap s <Nop>
" Disable movement keys (h/j/k/l) in Normal mode
nnoremap h <Nop>
nnoremap j <Nop>
nnoremap k <Nop>
nnoremap l <Nop>
" Disable 'x' (delete character) in Normal mode
nnoremap x <Nop>
" Disable 'c' (change) in Normal mode to prevent changing the current line
nnoremap c <Nop>
" Disable '[' in Normal mode
nnoremap [ <Nop>
" Disable ']' in Normal mode
nnoremap ] <Nop>
" Disable redo to prevent accidental changes
nnoremap <C-r> <Nop>
" Disable the dot operator to prevent accidental command repetition
nnoremap . <Nop>

" Toggle an 88-column colorcolumn for the Black formatter
function! ToggleCC()
  if &colorcolumn == ''
    set colorcolumn=88
  else
    set colorcolumn=
  endif
endfunction
" User command to toggle the colorcolumn
command! Setcc call ToggleCC()
" Command-line abbreviation: setcc -> Setcc
cnoreabbrev setcc Setcc

" Copy the current filename to the Windows clipboard (WSL)
noremap /file :call system('/mnt/c/Windows/System32/clip.exe', expand('%:t')) \| echo 'Filename: ' . expand('%:t')<CR>
" Copy the current file path to the Windows clipboard (WSL)
noremap /path :call system('/mnt/c/Windows/System32/clip.exe', expand('%:p')) \| echo 'Path: ' . expand('%:p')<CR>
" Copy the highlight group name under the cursor to the Windows clipboard (WSL)
noremap /color :call system('/mnt/c/Windows/System32/clip.exe', synIDattr(synID(line('.'), col('.'), 1), 'name')) \| echo 'Highlight copied'<CR>

" Hide dotfiles from the Netrw listing
let g:netrw_list_hide = '\(^\|\s\s\)\.\S\+'
" Enable line numbers
set number
