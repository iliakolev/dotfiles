" ====================================================
"   Vundle
" ====================================================

" Automatically setting up Vundle
let has_vundle=1
if !filereadable($HOME."/.vim/bundle/Vundle.vim/README.md")
    echo "Installing Vundle..."
    echo ""
    silent !mkdir -p $HOME/.vim/bundle
    silent !git clone https://github.com/gmarik/Vundle.vim $HOME/.vim/bundle/Vundle.vim
    let has_vundle=0
endif

" Required by Vundle
filetype off

set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()

" Vundle manage Vundle
Plugin 'gmarik/Vundle.vim'

" ========== Bundles ========== "

" Solarized
Plugin 'altercation/vim-colors-solarized'

" Shows a git diff in the 'gutter'
Plugin 'airblade/vim-gitgutter'

" True Sublime Text style multiple selections for Vim
Plugin 'terryma/vim-multiple-cursors'

" Git wrapper
Plugin 'tpope/vim-fugitive'

" Pairs of handy bracket mappings
Plugin 'tpope/vim-unimpaired'

" Helpers for UNIX
Plugin 'tpope/vim-eunuch'

" Vim runtime files for Haml, Sass, and SCSS
Plugin 'tpope/vim-haml'

" Vim Markdown runtime files
Plugin 'tpope/vim-markdown'

" Expanding abbreviations
Plugin 'mattn/emmet-vim'

" Quoting/parenthesizing made simple
Plugin 'tpope/vim-surround'

" A light and configurable statusline
Plugin 'itchyny/lightline.vim'

" Fuzzy file finder
Plugin 'kien/ctrlp.vim'

" Syntax checking
Plugin 'scrooloose/syntastic'

" The ultimate snippet solution
Plugin 'SirVer/ultisnips'

" A code-completion engine for Vim
Plugin 'Valloric/YouCompleteMe'

" Universal comment plugin
Plugin 'vim-scripts/tComment'

call vundle#end()
filetype on

" Installing plugins the first time, quits when done
if has_vundle == 0
    :silent! PluginInstall
    :qa
endif
