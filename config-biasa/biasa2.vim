:set number
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a
:set clipboard=unnamed

call plug#begin()
Plug 'https://github.com/rafi/awesome-vim-colorschemes'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.4' }
Plug 'preservim/nerdtree'
Plug 'lewis6991/gitsigns.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'neovim/nvim-lspconfig'
call plug#end()
:colorscheme jellybeans


" Map <leader>n to open NERDTree
nnoremap <space>n :NERDTreeFocus<CR>

" Map <C-n> to toggle NERDTree
" nnoremap <C-b> :NERDTreeToggle<CR>
nnoremap <space>a :NERDTreeToggle<CR>

" Map space + e to open Telescope
nnoremap <space>e :Telescope find_files<CR>

nnoremap <C-b> :call TermToggle()<CR>
vnoremap <M-~> <ESC>:call TermToggle()<CR>
inoremap <M-~> <ESC>:call TermToggle()<CR>
tnoremap <M-~> exit<CR>

function! TermToggle()
    if term_list() == []
        terminal
    else
        for term in term_list()
            call term_sendkeys(term, "exit\<cr>")
        endfor
    endif
endfunction

" Start NERDTree. If a file is specified, move the cursor to its window.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif

" Enable gitsigns.nvim
lua require('gitsigns').setup()



