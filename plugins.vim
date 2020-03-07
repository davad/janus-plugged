" Use this file to load any vim-plug enabled extension
" Make sure you use single quotes

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fugitive', {'as': 'fugitive'}
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-endwise'
Plug 'christoomey/vim-conflicted'
Plug 'ctrlpvim/ctrlp.vim', { 'commit': 'f6c587e408dc0b45ffbabdadbb19739f8429e1eb' } "see: https://github.com/ctrlpvim/ctrlp.vim/issues/235
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'
Plug 'jeetsukumaran/vim-buffergator'
Plug 'bronson/vim-trailing-whitespace'
Plug 'ddollar/nerdcommenter'
Plug 'tpope/vim-eunuch'
Plug 'rking/ag.vim'
Plug 'benekastah/neomake'
Plug 'scrooloose/syntastic'
" Plug 'ervandew/supertab'
Plug 'sbdchd/neoformat'

" Better Visual Guide
Plug 'Yggdroot/indentLine'

" Languages support
Plug 'tpope/vim-haml', { 'for': 'haml' }
Plug 'tpope/vim-cucumber', { 'for': 'cucumber' }
Plug 'tpope/vim-markdown', { 'for': 'markdown' }
Plug 'tpope/vim-rails'
Plug 'brodock/vim-vroom', { 'branch': 'neovim-terminal' }
Plug 'thoughtbot/vim-rspec'

" Autocomplete (requires python 3) - make sure you run before installing : pip3 install --upgrade neovim
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/context_filetype.vim'
Plug 'fishbullet/deoplete-ruby'
Plug 'zchee/deoplete-jedi', { 'do': ':UpdateRemotePlugins' }

" Work with indented objects
Plug 'michaeljsmith/vim-indent-object'
Plug 'jeetsukumaran/vim-indentwise'

" Better language packs
Plug 'sheerun/vim-polyglot'

" Themes
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline-themes'

""" More autocomplete plugins
"" TypeScript
Plug 'HerringtonDarkholme/yats.vim'
Plug 'mhartington/nvim-typescript', {'do': './install.sh'}
" For Denite features
Plug 'Shougo/denite.nvim'


"" JavaScript
Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }


" Enable deoplete at startup

let g:deoplete#enable_at_startup = 1

" Tab-complete from top to bottom
let g:SuperTabDefaultCompletionType = "<c-n>"

""" Linting and formatting
Plug 'w0rp/ale'

let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'css': ['prettier'],
\   'less': ['prettier'],
\   'scss': ['prettier'],
\   'markdown': ['prettier'],
\   'yaml': ['prettier'],
\   'html': ['prettier'],
\   'javascript': ['prettier', 'eslint'],
\   'json': ['prettier'],
\   'typescript': ['prettier', 'tslint'],
\   'vue': ['prettier'],
\   'php': ['prettier'],
\}
let g:ale_fix_on_save = 1


"" Gist
Plug 'Shougo/unite.vim'
Plug 'lambdalisue/vim-gista'
Plug 'lambdalisue/vim-gista-unite'

""" Autocomplete config
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

""" Jump to file definition in javascript files
" autocmd FileType javascript nnoremap <silent> <buffer> gb :TernDef<CR>

" Dev Icons (must be the last one)
Plug 'ryanoasis/vim-devicons'
