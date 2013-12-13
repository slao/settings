" pathogen
"call pathogen#runtime_append_all_bundles()
"filetype on "workaround to fix bad exit status if filetype is already off
"filetype off
"call pathogen#helptags() "call this when installing new plugins
call pathogen#infect()
syntax on
filetype plugin indent on

"Set Mapleader
let mapleader = ","
let g:mapleader = ","

"vim-javascript
let g:html_indent_inctags = "html,body,head,tbody"
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"

"Set Font
set guifont=Monaco:h12

"Colorscheme options
colorscheme molokai
let g:molokai_original=1

" Indent stuff
set noexpandtab
set tabstop=2
set shiftwidth=2

set nu
set modeline
set ls=2

set incsearch

map <Leader><Leader> :NERDTreeToggle<CR><C-W>=
map <Leader>r :NERDTreeFind<CR>
map <Leader>s :SyntasticCheck<CR>
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
map <D-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>
"remove trailing whitespaces
map <F5> :%s/\s\+$<CR>
map <D-1> :tabn 1<CR>
map <D-2> :tabn 2<CR>
map <D-3> :tabn 3<CR>
map <D-4> :tabn 4<CR>
map <D-5> :tabn 5<CR>
map <D-6> :tabn 6<CR>
map <D-7> :tabn 7<CR>
map <D-8> :tabn 8<CR>
map <D-9> :tabn 9<CR>

map! <D-1> <C-O>:tabn 1<CR>
map! <D-2> <C-O>:tabn 2<CR>
map! <D-3> <C-O>:tabn 3<CR>
map! <D-4> <C-O>:tabn 4<CR>
map! <D-5> <C-O>:tabn 5<CR>
map! <D-6> <C-O>:tabn 6<CR>
map! <D-7> <C-O>:tabn 7<CR>
map! <D-8> <C-O>:tabn 8<CR>
map! <D-9> <C-O>:tabn 9<CR>

map <Leader>m mz:%s/\r$//g<cr>`z

"Smart way to move btw. windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Press Space to turn off highlighting and clear any message already displayed.
:nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

" Toggle NERDTree on start
autocmd vimenter * if !argc() | NERDTree | endif

" Close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

"syntax checkers
let g:syntastic_mode_map = { 'mode': 'active',
			\ 'active_filetypes': ['javascript'],
			\ 'passive_filetypes': [] }
let g:syntastic_javascript_checkers = ['jshint']
let g:syntastic_always_populate_loc_list=1
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

"Command-T
let g:CommandTMaxFiles=10000
set wildignore+=*.o,*.class,.git

