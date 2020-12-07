" TODO: install nerd-fonts-devaju-complete or compatible packages for 
" showing powerline fonts in airline status properly

if has('nvim')
    if empty(glob('~/.config/nvim/autoload/plug.vim'))
        silent !wget -P ~/.config/nvim/autoload/ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
        autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
    endif
else
    if empty(glob('~/.vim/autoload/plug.vim'))
     silent !wget -P ~/.vim/autoload/ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
     autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
    endif
endif

call plug#begin('~/.vim/bundle')
" developer icon pack for nerdTree
Plug 'ryanoasis/vim-devicons'

"forest-night theme
Plug 'sainnhe/forest-night'
    
" Python support
Plug 'jeetsukumaran/vim-pythonsense'

" let Vundle manage Vundle, required
Plug 'VundleVim/Vundle.vim'

Plug 'tpope/vim-surround'

Plug 'tomtom/tcomment_vim'

Plug 'bling/vim-airline'

Plug 'vim-airline/vim-airline-themes'

" for added,modified, deleted sings on git 
Plug 'airblade/vim-gitgutter'
" for diff, staging and committing etc.
Plug 'jreybert/vimagit'
" for extra command line utilies of git
Plug 'tpope/vim-fugitive'

Plug 'easymotion/vim-easymotion'

Plug 'terryma/vim-multiple-cursors'

Plug 'ctrlpvim/ctrlp.vim'

Plug 'scrooloose/nerdTree'

Plug 'vim-scripts/indentpython.vim'

Plug 'kracejic/vcoolor.vim'

" new text objects
Plug 'kana/vim-textobj-user'

" f F text objects
Plug 'kana/vim-textobj-function'

" User defined operators/actions
Plug 'kana/vim-operator-user'

Plug 'michaeljsmith/vim-indent-object'

Plug 'vimwiki/vimwiki'

" gs
Plug 'christoomey/vim-sort-motion'

Plug 'tomasr/molokai'

Plug 'plasticboy/vim-markdown' "better markdown support

" better cooperation with tmux
Plug 'christoomey/vim-tmux-navigator'

" gutter for marks
Plug 'kshenoy/vim-signature'

" Vim Plug for switching between companion source files (e.g. .h and .cpp)
Plug 'derekwyatt/vim-fswitch'

Plug 'rhysd/vim-clang-format'

Plug 'sbdchd/neoformat'

" session management
Plug 'gikmx/ctrlp-obsession'

" Snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'kracejic/snippetinabox.vim'

Plug 'scrooloose/syntastic'

Plug 'majutsushi/tagbar'

Plug 'joereynolds/gtags-scope'

" :Dox command generates stub for doxygen doc in C++, etc
Plug 'vim-scripts/DoxygenToolkit.vim'

" :Search :SearchBuffers :SearchReset :SearchBuffersReset
" <Leader>*
Plug 'vim-scripts/MultipleSearch'

" fast searching
" Plug 'junegunn/fzf'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" ga / gaip= align in paragraph around char =
Plug 'junegunn/vim-easy-align'

" :ColorToggle
Plug 'lilydjwg/colorizer'

" Syntaxes for a lot of languages
Plug 'sheerun/vim-polyglot'

" :DevDocs ---
Plug 'rhysd/devdocs.vim'

Plug 'vim-scripts/visual-increment'

" :Delete, :Unlink, :Move, :Rename, :Chmod, :Mkdir, :Find, :Locate, :SudoWrite, :SudoEdit
Plug 'tpope/vim-eunuch'

"Run interactive:
":DB sqlite:myfile.sqlite3
"
"Run commands
":DB sqlite:myfile.sqlite3 select count(*) from widgets
":DB redis:/// CLIENT LIST
"
"Save DBs locations
":DB g:prod = postgres://user:pass@db.example.com/production_database
":DB g:prod drop table users
"
"Give a range to run part or all of the current buffer as a query.
":%DB mysql://root@localhost/bazquux

Plug 'tpope/vim-db'

Plug 'Yggdroot/indentLine'

Plug 'skywind3000/asyncrun.vim'

" New autocomplete
" Async support
Plug 'prabirshrestha/async.vim'
" Async autocompletion for Vim 8 and Neovim with |timers|.
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-file.vim'
" Provide Language Server Protocol autocompletion source for asyncomplete.vim and vim-lsp.
Plug 'prabirshrestha/asyncomplete-lsp.vim'
" Async Language Server Protocol plugin for vim8 and neovim.
Plug 'prabirshrestha/vim-lsp'
" Add suport for languages
Plug 'mattn/vim-lsp-settings'

let g:colorizer_startup = 0

" All of your Plugins must be added before the following line
call plug#end()

"General
set number  "Show line numbers

nmap <leader>num :set nu! <CR>:set rnu!<CR>
nmap <leader>gnum :set g:nu! <CR>:set g:rnu!<CR>

set wrap        "enable wraping
set linebreak   "Break lines at word (requires Wrap lines)
set nolist      " list disables linebreak
set scrolloff=5 " 2 lines above/below cursor when scrolling
set noswapfile  " turn off swapfiles

:imap jk <Esc>
:imap <C-L> <Esc>

set textwidth=0
set wrapmargin=0                       " Disable line wrap
set ruler                              " Show row and column ruler information
set showbreak=+++                      " Wrap-broken line prefix
" set textwidth=100                    " Line wrap (number of cols)
set showmatch                          " Highlight matching brace
set showcmd                            " show command in bottom bar
set title                              " show file in titlebar
set showmode                           " show mode in status bar (insert/replace/...)
set visualbell                         " Use visual bell (no beeping)
set cursorline                         " highlight current line
set matchpairs+=<:>                    " specially for html

set hlsearch                           " Highlight all search results
set smartcase                          " Enable smart-case search
set ignorecase                         " Always case-insensitive
set incsearch                          " Searches for strings incrementally
nmap \q :nohlsearch<CR>
nnoremap <leader><space> :noh<cr>


set virtualedit=onemore                " allow to go one character behind the end of the line
set autoindent                         " Auto-indent new lines
set expandtab                          " Use spaces instead of tabs
set shiftwidth=4                       " Number of auto-indent spaces
set smartindent                        " Enable smart-indent
set smarttab                           " Enable smart-tabs
set softtabstop=4                      " Number of spaces per Tab
set wildmenu                           " visual autocomplete for command menu
set wildignore+=*.o,*.obj,*.bak,*.exe,*.py[co],*.swp,*~,*.pyc,.svn,*/cm/log/**,tags,*.jpg,*.png,*.jpeg,*.png,*.mesh,build*/**,build/**,*.sublime-workspace,*.svg,build2/**,build3/**
set lazyredraw                         " redraw only when we need to.
set confirm                            " get a dialog when :q, :w, or :wq fails
set nobackup                           " no backup~ files.
set viminfo='20,\"500                  " remember copy registers after quitting in the .viminfo file -- 20 jump links, regs up to 500 lines'
set hidden                             " remember undo after quitting
set history=150                        " keep 50 lines of command history
set mouse=v                            " use mouse in visual mode (not normal,insert,command,help mode
set t_ut=
set previewheight=7

set fillchars+=vert:│                  " nicer vert split separator
set fillchars+=stlnc:-                 " nicer separator for horizontal split

let g:indentLine_char = '⁝'
    
"This will look in the current directory for 'tags', and work up the tree towards root until one is found.
set tags=./tags;/                       
set cscopetag
 
"Fuzzy search
if isdirectory("/mingw32")
    " CtrlP settings
    let g:ctrlp_match_window = 'top,order:ttb,max:15,results:15'
    let g:ctrlp_follow_symlinks = 1
    "let g:ctrlp_switch_buffer = 0
    "let g:ctrlp_working_path_mode = 0
    let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
    let g:ctrlp_custom_ignore = '\v[\/](node_modules)$'
    let g:ctrlp_working_path_mode = 'a'

    nnoremap <leader>. :CtrlPBufTag<cr>
    nnoremap <leader>, :CtrlPTag<cr>
    nnoremap <leader>q :CtrlPQuickfix<cr>
    " nnoremap <Leader>ss :CtrlPObsession<CR>
    nnoremap <leader>a :CtrlPBuffer<CR>
    nnoremap <leader><tab> :CtrlPBuffer<CR>
else
    let g:ctrlp_map = '<leader><c-p>'
    " Default fzf layout
    " - down / up / left / right
    let g:fzf_layout = { 'down': '~50%' }
    " [Buffers] Jump to the existing window if possible
    let g:fzf_buffers_jump = 1
    " [[B]Commits] Customize the options used by 'git log':
    let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'
    " [Tags] Command to generate tags file
    let g:fzf_tags_command = 'ctags -R'
    " [Commands] --expect expression for directly executing the command
    let g:fzf_commands_expect = 'alt-enter,ctrl-x'

    command! GGFiles call fzf#run(fzf#wrap({'source': 'if git rev-parse --git-dir > /dev/null ; then git ls-files -co --exclude-standard ; elif [ -d .hg ] ; then hg locate ; else  find . ; fi', 'sink': 'e'}))

    nnoremap <C-p> :GGFiles<cr>
    nnoremap <leader>. :BTags<cr>
    nnoremap <leader>, :Tags<cr>
    nnoremap <leader>q :CtrlPQuickfix<cr>
    nnoremap <leader>a :Buffers<CR>
    nnoremap <leader><tab> :Buffers<CR>
    " fzf
    nnoremap <Leader><Leader> :Commands<CR>
    nnoremap <leader>L :Lines<cr>
    nnoremap <leader>l :BLines<cr>
    nnoremap <leader>ft :Filetype<cr>

    " Insert mode completion imap <c-x><c-k> <plug>(fzf-complete-word)
    imap <c-x><c-f> <plug>(fzf-complete-path)
    imap <c-x><c-j> <plug>(fzf-complete-file-ag)
    imap <c-x><c-l> <plug>(fzf-complete-line)
endif

command! Ctagsgenerate :!ctags -R .
command! Gtagsgenerate :!gtags
" let GtagsCscope_Auto_Load = 1
"
" find references
nnoremap <leader>ygr "zyiw:cs find c <C-r>z<CR>

" open header fswitch
nmap <silent> <F4> :FSHere<cr>
nmap <silent> <Leader>of :FSHere<cr>
nmap <silent> <Leader>ol :FSRight<cr>
nmap <silent> <Leader>oL :FSSplitRight<cr>
nmap <silent> <Leader>oh :FSLeft<cr>
nmap <silent> <Leader>oH :FSSplitLeft<cr>
nmap <silent> <Leader>ok :FSAbove<cr>
nmap <silent> <Leader>oK :FSSplitAbove<cr>
nmap <silent> <Leader>oj :FSBelow<cr>
nmap <silent> <Leader>oJ :FSSplitBelow<cr>

" Tagbar
nmap <silent> <F3> :TagbarToggle<CR>
nmap <silent> <F7> :TagbarOpenAutoClose<CR>
let g:tagbar_case_insensitive = 1
let g:tagbar_indent = 1
let g:tagbar_map_showproto = "r"
let g:tagbar_map_togglefold = "<space>"
let g:tagbar_sort = 0

" for pasting in terminal
set pastetoggle=<F2>

nnoremap <leader>a <C-A>
vnoremap <silent> <Plug><leader>a :<C-U>call <SID>doincrement(v:count1)<CR>
" increment numbers
noremap + <c-a>
noremap - <c-x>


" Splits
set splitbelow    " more natural split opening
set splitright    " more natural split opening
"split movement
nnoremap <C-h> <C-w>h
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-j> <C-w>j
"saner splits
nnoremap <C-w>\| <C-w>v
nnoremap <C-w>_ <C-w>s
"resizing splits
nnoremap <C-w><C-w>h 8<C-w><
nnoremap <C-w><C-w>l 8<C-w>>
nnoremap <C-w><C-w>k 8<C-w>-
nnoremap <C-w><C-w>j 8<C-w>+
nnoremap <C-w><C-w><C-w>h <C-w><
nnoremap <C-w><C-w><C-w>l <C-w>>
nnoremap <C-w><C-w><C-w>k <C-w>-
nnoremap <C-w><C-w><C-w>j <C-w>+

" buffers
vmap \] :bnext<CR>
nmap \[ :bprev<CR>
nmap <leader>D :bd<CR>
command! Bda :bufdo bd
nnoremap <bs> <c-^>
command! Bd bp|bd<space>#
nnoremap <leader>W :Bd<CR>

" settings for kshenoy/vim-signature, it will color the marks with gitgutter
" color
let g:SignatureMarkTextHLDynamic = 1
let g:SignatureMarkerTextHLDynamic = 1
let g:gitgutter_async = 0

"reload vimrc
:nmap \rv :source $MYVIMRC<CR>

"strip whitespace
nnoremap <leader>sw :%s/\s\+$//<cr>:let @/=''<CR>
command! Stripwhitespace :%s/\s\+$//
command! Whitespacestrip :%s/\s\+$//

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap <leader>ea <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap <leader>ea <Plug>(EasyAlign)

command! ColorPicker :VCoolor

" TermDebug
let g:termdebug_popup = 0
let g:termdebug_wide = 163

" quickfix open
:nmap        gqf :copen  20<CR>
command Quickfix :copen  20<CR>
command       QF :copen  20<CR>
command       Qf :copen  20<CR>
command      QFF :cclose 20<CR>
command      Qff :cclose 20<CR>

" quickfix next, prev
:nmap [q :cprev<CR>
:nmap ]q :cnext<CR>
:nmap [Q :cfirst<CR>
:nmap ]Q :clast<CR>

" location list next, prev
:nmap [e :lprev<CR>
:nmap ]e :lnext<CR>
:nmap [E :lfirst<CR>
:nmap ]E :llast<CR>

" Theme stuff
set background=dark

" get current syntax class
nmap <leader>sy :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

"goto next file
:nmap <C-`> :e#<CR>

"toc for markdown
nmap <leader>toc :g/^#/#<CR> :noh <CR>
nmap <leader>defs :g/def /#<CR> :noh <CR>

"Showfunc.vim
nmap <leader>func <Plug>ShowFunc
nmap <leader>fun <Plug>ShowFunc<CR><C-w>H

" duplicate lanes TODO
nmap <leader>dd :s/\(^.*$\)/\1\r\1/<CR>:noh<CR>
xmap <leader>dd :'<,'>s/\(.*\)/\1\r\1/<CR>:noh<CR>

" json indent
command! -range -nargs=0 -bar IndentJson <line1>,<line2>!python -m json.tool
command! -range -nargs=0 -bar JsonIndent <line1>,<line2>!python -m json.tool

"xml indent
command! IndentXml :silent %!xmllint --encode UTF-8 --format -
command! XmlIndent :silent %!xmllint --encode UTF-8 --format -

" CLANG FORMAT
" default settings
let g:clang_format#code_style = "llvm"
let g:clang_format#style_options = {
      \ "AllowShortFunctionsOnASingleLine": "Empty",
      \ "AlwaysBreakTemplateDeclarations": "true",
      \ "BreakBeforeBraces": "Allman",
      \ "BreakConstructorInitializersBeforeComma": "true",
      \ "IndentCaseLabels": "true",
      \ "IndentWidth":     4,
      \ "MaxEmptyLinesToKeep": 2,
      \ "NamespaceIndentation": "Inner",
      \ "ObjCBlockIndentWidth": 4,
      \ "TabWidth": 4}

augroup ClangFormatSettings
    autocmd!
    " if you install vim-operator-user
    autocmd FileType c,cpp,objc,java,javascript map <buffer><Leader>c <Plug>(operator-clang-format)
    " autocmd FileType c,cpp syntax clear cppSTLconstant

    autocmd FileType vimwiki nmap <leader>tts :TaskWikiMod +sprint<CR>
    autocmd FileType vimwiki nmap <leader>ttS :TaskWikiMod -sprint<CR>
augroup END

" TermDebug for GDB debugger integration
packadd termdebug

let g:indentLine_fileTypeExclude = ["markdown", "vim"]
let g:indentLine_fileType = ["yaml","yml","json", "python", "c", "cpp", "h", "hpp", "cc"]

nnoremap <Leader>cf :Neoformat<CR>
vnoremap <Leader>cf :Neoformat<CR>

" format line +-1
autocmd FileType c,cpp,objc,java,javascript nnoremap <Leader>cc :.-1,.+1Neoformat<CR>

" markdown ctags
let g:tagbar_type_markdown = {
    \ 'ctagstype' : 'vimwiki',
    \ 'kinds' : [
        \ 'h:Heading_L1',
        \ 'i:Heading_L2',
        \ 'k:Heading_L3'
    \ ]
\ }
let g:tagbar_type_markdown = {
    \ 'ctagstype' : 'markdown',
    \ 'kinds' : [
        \ 'h:Heading_L1',
        \ 'i:Heading_L2',
        \ 'k:Heading_L3'
    \ ]
\ }

augroup filetypedetect
    au BufRead,BufNewFile *.log set filetype=log
    au BufReadPost,BufNewFile *.compositor set ft=compositor
    au BufReadPost,BufNewFile *.material set ft=material
    au BufReadPost,BufNewFile *.glsl,*.cg set ft=glsl
    au BufReadPost,BufNewFile content.txt set ft=fitnesse
    au BufReadPost,BufNewFile database.txt,*.conf set ft=conf
    au BufReadPost,BufNewFile config.in set ft=kconfig
    au BufReadPost,BufNewFile *.xml set tabstop=4
    au BufReadPost,BufNewFile *.crt set ft=crt
    au BufReadPost,BufNewFile *.gsh set ft=Jenkinsfile
augroup END

let g:syntastic_cpp_compiler_options = "-std=c++14"
let g:syntastic_java_checkers = []
" add constant
nmap <leader>cre /[,)]<CR>:nohlsearch<CR>Bhi&<ESC>?[,(]<CR>:nohlsearch<CR>wiconst <ESC>
noremap <leader>cr :pyf ~/bin/clang-rename.py<cr>

:nmap \e :NERDTreeToggle<CR>
command! E :e %:p:h
command! LS :!ls -alh --color=always %:p:h

"folding
set foldenable          " enable folding
set foldlevelstart=10   " open most folds by default
set foldnestmax=10      " 10 nested fold max
nnoremap <space> za
nnoremap z<space> zA
set foldmethod=indent   " fold based on indent level

" Paste without yanking selected
xnoremap <leader>p "_dP
" Stamp = delete current word (without yanking) and paste
nnoremap S "_diwPb
nnoremap x "_x
nnoremap X "_X
xnoremap S "_diwPb
xnoremap x "_x
xnoremap X "_X

" movement
"
" move vertically by visual line
nnoremap j gj
nnoremap k gk
nnoremap <down> gj
nnoremap <up> gk

" move to beginning/end of line
nmap <Home> ^
nmap <End> $

nnoremap gV `[v`]  " This mapping allows you to reselect the text you just pasted:
nnoremap gm :call cursor(0, len(getline('.'))/2)<CR>  " goto midle of line

" diff merge
nnoremap <leader>d1 :diffget 1<CR>
nnoremap <leader>d2 :diffget 2<CR>
nnoremap <leader>d3 :diffget 3<CR>

command! Diffstart :windo diffthis
command! Diffstop :diffoff!

"Advanced
set undolevels=1000 "Number of undo levels
set backspace=indent,eol,start  "Backspace behaviour

" check file change every 4 seconds ('CursorHold') and reload the buffer upon
" detecting change
set autoread
au CursorHold * checktime

set tabpagemax=50 " max number of pages

" colorscheme themeinabox
colorscheme forest-night
let g:airline_theme='base16_eighties'

"save with root
command! Wroot :execute ':silent w !sudo tee % > /dev/null' | :edit!
" fix typo
command! W :w

" ultisnip and LspSnip
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

set completeopt+=menuone

if executable('clangd')
    augroup vim_lsp_cpp
        autocmd!
        autocmd User lsp_setup call lsp#register_server({
                    \ 'name': 'clangd',
                    \ 'cmd': {server_info->['clangd']},
                    \ 'whitelist': ['c', 'cpp', 'objc', 'objcpp', 'cc'],
                    \ })
        autocmd FileType c,cpp,objc,objcpp,cc setlocal omnifunc=lsp#complete
    augroup end
endif
"-----------------------------------------------------------------------

inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr>    pumvisible() ? "\<C-y>" : "\<cr>"
imap <c-space> <Plug>(asyncomplete_force_refresh)

" Disable diagnostics
let g:lsp_diagnostics_enabled = 1
let g:lsp_signs_error = {'text': ''}
let g:lsp_signs_warning = {'text': ''}

" Disable highligh errors
let g:lsp_highlights_enabled = 0
let g:lsp_textprop_enabled = 1
let g:lsp_signs_priority = 11

function! s:on_lsp_buffer_enabled() abort
    setlocal omnifunc=lsp#complete
    setlocal signcolumn=yes
    " refer to doc to add more commands
endfunction

nmap <F12> <plug>(lsp-declaration)
nmap gd <plug>(lsp-declaration)
nmap gD <plug>(lsp-definition)
nmap gp <plug>(lsp-peek-declaration)
nmap gP <plug>(lsp-peek-definition)
nmap ge <plug>(lsp-next-diagnostic)
nmap gh <plug>(lsp-hover)
nmap gr <plug>(lsp-references)
nmap gu <plug>(lsp-references)
nmap gE <plug>(lsp-document-diagnostics)
nmap ga <plug>(lsp-code-action)
nmap gs <plug>(lsp-status)

augroup lsp_install
    au!
    " call s:on_lsp_buffer_enabled only for languages that has the server registered.
    autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
augroup END

au User asyncomplete_setup call asyncomplete#register_source(asyncomplete#sources#file#get_source_options({
    \ 'name': 'file',
    \ 'whitelist': ['*'],
    \ 'priority': 10,
    \ 'completor': function('asyncomplete#sources#file#completor')
    \ }))


set showtabline:0
" airline
let g:airline_mode_map = {
  \ '__' : '-',
  \ 'n'  : 'N',
  \ 'i'  : 'I',
  \ 'R'  : 'R',
  \ 'c'  : 'C',
  \ 'v'  : 'V',
  \ 'V'  : 'V',
  \ '' : 'V',
  \ 's'  : 'S',
  \ 'S'  : 'S',
  \ '' : 'S',
  \ }

let g:airline#extensions#default#section_truncate_width = {
  \ 'b': 79,
  \ 'x': 60,
  \ 'y': 88,
  \ 'z': 60,
  \ 'warning': 80,
  \ 'error': 80,
  \ }

let w:airline_skip_empty_sections = 1
" let g:airline_section_b=' %{fugitive#head()}'
" let g:airline#extensions#hunks#enabled = 0
" let g:airline#extensions#wordcount#enabled = 0
" let g:airline_section_z=' %l/%L:%c'
let g:airline#extensions#branch#format = 2

set laststatus=2

let g:airline_powerline_fonts = 1

" statusline
command! StatuslineON :set laststatus=2
command! StatuslineOFF :set laststatus=1

" multicursor
let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'
let g:multi_cursor_exit_from_insert_mode=0

" cursor shape between modes
let &t_SI = "\e[3 q"
let &t_EI = "\e[2 q"

" easymotion
let g:EasyMotion_do_mapping = 0 " Disable default mappings
nmap <Leader>w <Plug>(easymotion-w)

" Bi-directional find motion
" Need one more keystroke, but on average, it may be more comfortable.
nmap SS <Plug>(easymotion-s2)

" Turn on case insensitive feature
let g:EasyMotion_smartcase = 1

vnoremap <leader>j :m '>+1<CR>gv=gv
vnoremap <leader>k :m '<-2<CR>gv=gv

" visual shifting (builtin-repeat)
vnoremap < <gv
vnoremap > >gv

" Python specific
if executable('pyls')
    " pip install python-language-server
    au User lsp_setup call lsp#register_server({
        \ 'name': 'pyls',
        \ 'cmd': {server_info->['pyls']},
        \ 'allowlist': ['python'],
        \ })
endif

au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix

command! Pandocahtml :w | ! pandocconvert.sh "%" html5
command! Pandocpdf   :w | ! pandocconvert.sh "%" pdf
command! Pandocdocx  :w | ! pandocconvert.sh "%" docx
command! Openahtml   :w | ! pandocconvert.sh "%" html5 open
command! Openpdf     :w | ! pandocconvert.sh "%" pdf   open
command! Opendocx    :w | ! pandocconvert.sh "%" docx  open

" -----------------------------------------------------------------------------

let g:mc = "y/\\V\<C-r>=escape(@\", '/')\<CR>\<CR>"

nnoremap cn *``cgn
nnoremap cN *``cgN

vnoremap <expr> cn g:mc . "``cgn"
vnoremap <expr> cN g:mc . "``cgN"

function! SetupCR()
    nnoremap <Enter> :nnoremap <lt>Enter> n@z<CR>q:<C-u>let @z=strpart(@z,0,strlen(@z)-1)<CR>n@z
endfunction

nnoremap cq :call SetupCR()<CR>*``qz
nnoremap cQ :call SetupCR()<CR>#``qz

vnoremap <expr> cq ":\<C-u>call SetupCR()\<CR>" . "gv" . g:mc . "``qz"
vnoremap <expr> cQ ":\<C-u>call SetupCR()\<CR>" . "gv" . substitute(g:mc, '/', '?', 'g') . "``qz"

" substitute for current selection
xnoremap gs y:%s/<C-r>"//g<Left><Left>

" -----------------------------------------------------------------------------
" Highlight all instances of word under cursor, when idle.
" Useful when studying strange source code.
" Type z/ to toggle highlighting on/off.
nnoremap <leader>z :if AutoHighlightToggle()<Bar>set hls<Bar>endif<CR>
function! AutoHighlightToggle()
  let @/ = ''
  if exists('#auto_highlight')
    au! auto_highlight
    augroup! auto_highlight
    setl updatetime=4000
    echo 'Highlight current word: off'
    return 0
  else
    augroup auto_highlight
      au!
      au CursorHold * let @/ = '\V\<'.escape(expand('<cword>'), '\').'\>'
    augroup end
    setl updatetime=500
    echo 'Highlight current word: ON'
    return 1
  endif
endfunction

" -----------------------------------------------------------------------------
" search for visually selected text
vnoremap // y/<C-R>"<CR>

" -----------------------------------------------------------------------------
" Search for selected text, forwards or backwards.
vnoremap <silent> * :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy/<C-R><C-R>=substitute(
  \escape(@", '/\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>
vnoremap <silent> # :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy?<C-R><C-R>=substitute(
  \escape(@", '?\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>

" -----------------------------------------------------------------------------
" select ag as :Ack search when available
if executable('ag')
  let g:ackprg = 'ag --nogroup --nocolor --column'
endif

nnoremap <leader>ag "zyiw:Ag <C-r>z<CR>
nnoremap <leader>ack "zyiw:Ack <C-r>z<CR>

" -----------------------------------------------------------------------------
"  CtrlSF
let g:ctrlsf_regex_pattern = 1
let g:ctrlsf_default_root = 'cwd'
cnoreabbrev FS CtrlSF
cnoreabbrev Fs CtrlSF
nnoremap <leader>fs :CtrlSF<CR>

" -----------------------------------------------------------------------------
"Work stuff clear case
command! Ctpdiff :!cleartool diff -pre -col 190 % | less
command! Ctpdiff2 :!cleartool diff -pre -ser % | less

" -----------------------------------------------------------------------------
" execute macro on visal range
xnoremap @ :<C-u>call ExecuteMacroOverVisualRange()<CR>

function! ExecuteMacroOverVisualRange()
  echo "@".getcmdline()
  execute ":'<,'>normal @".nr2char(getchar())
endfunction

" -----------------------------------------------------------------------------
" http://vim.wikia.com/wiki/Sum_numbers
" :let g:S=0
" :%s/\d\+/\=Sum(submatch(0))/
" :echo g:S
let g:S = 0  "result in global variable S
function! Sum(number)
  let g:S = g:S + a:number
  return a:number
endfunction

" -----------------------------------------------------------------------------
" CMake support
function! BuildCMakeProjectShort(target, dir)
    echom a:target
    if isdirectory(a:dir)
        silent !clear
        execute "! cd " . a:dir . " && clear && cmake --build . --target " . a:target . " -- -j" . (system('grep -c ^processor /proc/cpuinfo')+1) . " && echo '-- Build was OK'"
    else
        echo "build folder was not found, cannot build"
    endif
endfunction

function! BuildCMakeProject(target, dir)
    echom a:target
    let currentWinNr = winnr()
    " let wnr = bufwinnr('__Build_output__')

    copen 25

    setlocal filetype=krcppbuild
    " Insert the bytecode.
    setlocal nonumber
    setlocal norelativenumber
    setlocal conceallevel=3
    :map <buffer> q :bd<cr>
    " setlocal nomodifiable

    execute 'AsyncRun bb '. a:target

    " go back
    exe l:currentWinNr  . "wincmd w"

endfunction

nmap <leader>bt :!tmux send-keys -t "build" Up Enter<CR><CR>

if isdirectory("build")
    nmap <leader>bb :call BuildCMakeProject("unit", "build")<CR>
    nmap <leader>bu :call BuildCMakeProject("check", "build")<CR>
    nmap <leader>bB :call BuildCMakeProject("all", "build")<CR>
    nmap <leader>br :call BuildCMakeProjectShort("run", "build")<CR>
    nmap <leader>bc :call BuildCMakeProject("clean", "build")<CR>
    nmap <leader>bf :call BuildCMakeProject("format", "build")<CR>
endif
" -----------------------------------------------------------------------------

" Make support
" -----------------------------------------------------------------------------
function! MakeAndRun()
    call SaveAll()
    let ftypes = split ("c cpp cc")
    let filename = expand('%:r')
    let ctype = 0

    for file in ftypes
        if &ft == file
            " echo "C filetype detected..."
            echon system("make -s && ./" . filename)
            let ctype = 1
            break
        endif
    endfor

    if ctype == 0
        " echo "ANY filetype detected..."
        echon system("make")
    endif
endfunction

function! SaveAll()
    :silent! Neoformat
    :silent! wa
endfunction

imap <F5> <ESC>
nmap <F5> :call MakeAndRun()<CR>
nmap ss :w<CR>
nmap sa :call SaveAll()<CR>
" -----------------------------------------------------------------------------

" -----------------------------------------------------------------------------
" error message formats - see :help errorformat
let &efm = '\.\.\/%f:%l: FAILED:' . ','
let &efm .= '%f:%l: FAILED:' . ','
let &efm .= '\.\.\/%f:%l:%c: error: %m' . ','
let &efm .= '%f:%l:%c: error: %m' . ','
let &efm .= '\.\.\/%f:%l:%c: warning: %m' . ','
let &efm .= '%f:%l:%c: warning: %m' . ','
let &efm .= '\.\.\/%f:%l: error: %m' . ','
let &efm .= '%f:%l: error: %m' . ','
let &efm .= '\.\.\/%f:%l: warning: %m' . ','
let &efm .= '%f:%l: warning: %m' . ','

" Change cursor modes when entering/exiting visual from/to normal mode
:autocmd InsertEnter * set nocul
:autocmd InsertLeave * set cul
