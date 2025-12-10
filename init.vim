" Visual mode clipboard mappings
vnoremap <C-c> "+y
vnoremap <C-v> "+p

" Basic settings
set clipboard=unnamedplus
set mouse=a
set hlsearch
set number
set expandtab
set tabstop=4
set shiftwidth=4
set belloff=all
set noswapfile
set laststatus=1
set nobackup
set nowritebackup
set noundofile
set laststatus=2
set statusline=%F
set viminfo=

" Filetype-specific indentation settings
augroup filetype_indent
  autocmd FileType html,css,javascript setlocal tabstop=2
  autocmd FileType html,css,javascript setlocal shiftwidth=2
augroup END

" Normal mode non-recursive map
nnoremap e $
nnoremap q ^

" Disable default left/right/up/down movements in normal mode
nnoremap a <Nop>
nnoremap s <Nop>
nnoremap h <Nop>
nnoremap j <Nop>
nnoremap k <Nop>
nnoremap l <Nop>
nnoremap x <Nop>
nnoremap c <Nop>
nnoremap . <Nop>
nnoremap - <Nop>
nnoremap + <Nop>
nnoremap <Esc> :nohlsearch<CR><Esc>

" Highlight trailing whitespace
match ErrorMsg /\s\+$/

" Move 4 characters/lines in Visual mode with Shift + arrow keys
vnoremap <S-Left> 4h
vnoremap <S-Right> 4l
vnoremap <S-Up> 4k
vnoremap <S-Down> 4j

" Set the colors for Visual mode selection
highlight Visual ctermbg=white ctermfg=black guibg=NONE guifg=NONE

" Make Alt+W behave like Ctrl+W
nnoremap <A-w> <C-w>

" Copy current file name to Windows clipboard (WSL)
noremap /filename :call system('/mnt/c/Windows/System32/clip.exe', expand('%:t')) \| echo 'Filename copied: ' . expand('%:t')<CR>

" Copy current file directory path to Windows clipboard (WSL)
noremap /dir :call system('/mnt/c/Windows/System32/clip.exe', expand('%:p:h')) \| echo 'Directory path copied: ' . expand('%:p:h')<CR>
