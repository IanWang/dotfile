" Load Vundle. Manages all of the bundles.
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" So Vundle can update itself.
Plugin 'gmarik/Vundle.vim'

Plugin 'helino/vim-json'
Plugin 'digitaltoad/vim-jade'
Plugin 'kchmck/vim-coffee-script'
Plugin 'wavded/vim-stylus'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'mxw/vim-jsx'

Plugin 'tomasr/molokai'
  let g:molokai_original = 1

Plugin 'Raimondi/delimitMate'
Plugin 'mattn/emmet-vim' " Ctrl + y + ,
Plugin 'tpope/vim-fugitive'
Plugin 'vim-scripts/HTML-AutoCloseTag'
Plugin 'mikewest/vimroom'
  map <F4> :VimroomToggle<CR>
Plugin 'scrooloose/nerdtree'
  map <F2> :NERDTreeToggle<CR>
  " close vim if the only window left open is a NERDTree
  autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif


"Plugin 'scrooloose/syntastic'
  "let g:syntastic_check_on_open=1
  "let g:syntastic_enable_signs=1
"Plugin 'walm/jshint.vim'

Plugin 'godlygeek/tabular' " ,t=
  map <Leader>t= :Tabularize /=<CR>
  map <Leader>t: :Tabularize /:\zs<CR>


Plugin 'bling/vim-airline'
  let g:airline_theme='zenburn'
  let g:airline#extensions#tabline#enabled=1

call vundle#end()   
filetype plugin indent on
