call pathogen#runtime_append_all_bundles()
source ~/.vim/config.vim                            " Load you personal configuration
source ~/.vim/config/basic.vim                      " Load basic vim configuration file.
source ~/.vim/config/mapping.vim                    " Load mapping keys
source ~/.vim/config/modules.vim                    " Load all modules of vimfiles
source ~/.vim/config/functions.vim                  " Load all custom functions
source ~/.vim/config/file_types.vim                 " Load config for file types

map <C-a> ggVG
map <C-Left> <C-H>
map <C-Up> <C-K>
map <C-Right> <C-L>
map <C-Down> <C-J>

map <S-Up> 4k
map <S-Down> 4j
imap <S-Up> <ESC>4k i
imap <S-Down> <ESC>4j i

map 0 o<ESC>
map 1 gT
map 2 gt
map K :noh<CR>
map q <plug>NERDTreeTabsToggle<CR>
map Q i
map w :tabnew<CR>
map z :w<CR>
map Z :qa!

cmap w!! %!sudo tee > /dev/null %

nmap mm :.s/^/#<CR>:noh<CR>
xmap m :s/^/#<CR>:noh<CR>

set shiftround  " Round indent to multiple of 'shiftwidth'
set smartindent " Do smart indenting when starting a new line
set autoindent  " Copy indent from current line, over to the new line

let s:tabwidth=2
exec 'set tabstop='    .s:tabwidth
exec 'set shiftwidth=' .s:tabwidth
exec 'set softtabstop='.s:tabwidth
autocmd BufEnter * set shiftwidth=2

colorscheme vibrantink

autocmd FileType java colorscheme jellybeans

let g:nerdtree_tabs_open_on_console_startup=1
let g:nerdtree_tabs_focus_on_files=1

map <F2> :.!pbpaste<CR>
map <F6> :!pbcopy && pbpaste<CR>
map <C-c> y<F5>0pV<F6>dd<F5>
