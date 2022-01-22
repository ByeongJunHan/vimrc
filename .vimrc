let g:ctrlp_root_markers = ['tags']
" *.swp, *.class 파일 무시
set wildignore+=*.swp,*.class

" <c-p> 기본 탭을 files 가 아닌 MRU files 로 설정
let g:ctrlp_cmd = 'CtrlPMRU'
" In your init.lua or init.vim
syntax on
colorscheme onedark
let g:airline_theme='onedark'
" lightline
" let g:lightline = { 'colorscheme': 'onehalfdark' }
set bg=dark
set mouse=a
set termguicolors
" vundle
set nocompatible              " be improved, required
filetype off                  " required
"autocmd vimenter * ++nested colorscheme gruvbox
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call plug#begin('~/.vim/plugged')
Plug 'ctrlpvim/ctrlp.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'sonph/onehalf', { 'rtp': 'vim' }
" Or build from source code by using yarn: https://yarnpkg.com
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
Plug 'kyazdani42/nvim-web-devicons' " Recommended (for coloured icons)
" Plug 'ryanoasis/vim-devicons' Icons without colours
Plug 'akinsho/bufferline.nvim'
call plug#end()
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'mattn/emmet-vim'
Plugin 'morhetz/gruvbox'
" Keep Plugin commands between vundle#begin/end.
Plugin 'davidhalter/jedi-vim'   " python 자동완성 Plugin
let g:jedi#show_call_signatures=1       " 자세히 설명하는 창을 보여준다 1=활성화, 0=비>활성화
let g:jedi#popup_select_first="1"       " 자동완성시 자동팝업 등장 x
let g:jedi#force_py_version=3           " 자동완성 3 = python3 , 2 = python2

Plugin 'hynek/vim-python-pep8-indent'   " python 자동 들여쓰기 Plugin
filetype plugin indent on               " python 자동 들여쓰기 on


" vim-airline
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdtree'


" All of your Plugins must be added before the following line
call vundle#end()            " required
set encoding=UTF-8
filetype plugin indent on    " required
let g:user_emmet_leader_key=','
nmap <F7> :NERDTreeToggle<CR>
let NERDTreeQuitOnOpen=1
let NERDTreeShowHidden=1
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo at http://vim-scripts.org/vim/scripts.html; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line"
if has("syntax")
syntax on           "구문 강조
endif
set t_Co=256        "구문강조 색 변경
set encoding=utf-8
set nu              "Line 출력
set tabstop=4       "<Tab> key 4칸 이동
set cursorline      "현재 줄 강조
let g:airline#extensions#tabline#enabled = 1 " turn on buffer list
set laststatus=2 " turn on bottom bar
"-------------------------------------------- vim 기본 설정 끝

"--------------------------------------------맨밑 상태바 표시 향상
set laststatus=2    "두줄로 표시
set statusline=\ %<%l:%v\ [%P]%=%a\ %h%m%r\ %F\  "현재 라인 위치 출력
"------------------------------------------- a\u filetype (파일타입지정)
au FileType python map <f2> : !sudo python3 %
let g:python3_host_prog = '/Users/hyunlang/miniconda3/bin/python'
let g:coc_global_extensions = ['coc-explorer', 'coc-json', 'coc-tsserver', 'coc-import-cost', 'coc-eslint', 'coc-snippets', 'coc-html', 'coc-css', 'coc-emmet', 'coc-pyright', 'coc-phpls', 'coc-angular', 'coc-git']
let g:coc_global_extensions += ['https://github.com/andys8/vscode-jest-snippets']
