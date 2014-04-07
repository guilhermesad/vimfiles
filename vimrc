call pathogen#runtime_append_all_bundles()
source ~/.vim/config.vim                            " Load you personal configuration
source ~/.vim/config/basic.vim                      " Load basic vim configuration file.
source ~/.vim/config/mapping.vim                    " Load mapping keys
source ~/.vim/config/modules.vim                    " Load all modules of vimfiles
source ~/.vim/config/functions.vim                  " Load all custom functions
source ~/.vim/config/file_types.vim                 " Load config for file types

set tabstop=2
set shiftwidth=2
colorscheme vibrantink
noremap :t :tabnew
noremap :ct :tabclose
autocmd FileType java colorscheme jellybeans
cmap w!! %!sudo tee > /dev/null %
