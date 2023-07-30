:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
set clipboard=unnamed
set nocompatible
filetype plugin on
syntax on

:syntax enable
let g:NERDTreeMinimalMenu=1
let &t_SI = "\e[6 q"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

set ttimeout
set ttimeoutlen=1
set ttyfast
call plug#begin()
Plug 'vimwiki/vimwiki'
Plug 'https://github.com/hashivim/vim-terraform'
Plug 'https://github.com/preservim/nerdtree'
Plug 'https://github.com/joshdick/onedark.vim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
call plug#end()
autocmd BufRead,BufNewFile *.hcl set syntax=hcl filetype=hcl
autocmd BufRead,BufNewFile .terraformrc,terraform.rc set filetype=hcl
autocmd BufRead,BufNewFile *.tf,*.tfvars set syntax=terraform filetype=terraform
autocmd BufRead,BufNewFile *.tfstate,*.tfstate.backup set filetype=json


nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>

lua << EOF
EOF


