set showmatch               " show matching 
set tabstop=4               " number of columns occupied by a tab 
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=4            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
set relativenumber          " relitive line numbers
syntax on                   " syntax highlighting
set clipboard=unnamedplus   " using system clipboard
set ttyfast                 " Speed up scrolling in Vim

if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif

call plug#begin()
    Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
    
    " auto compleet
    Plug 'hrsh7th/nvim-compe'
    " auto compleet sources
    Plug 'hrsh7th/cmp-nvim-lsp'
    Plug 'hrsh7th/cmp-buffer'
    Plug 'hrsh7th/cmp-path'
    Plug 'L3MON4D3/LuaSnip'   
    Plug 'hrsh7th/nvim-cmp'
    Plug 'saadparwaiz1/cmp_luasnip'

    " leap
    Plug 'ggandor/leap.nvim'

    " comment.nvim
    Plug 'numToStr/Comment.nvim'

    " telescope
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }

    "harpoon
    Plug 'nvim-lua/plenary.nvim' " don't forget to add this one if you don't have it yet! not sure why I'm supost to but ok prime
    Plug 'ThePrimeagen/harpoon'

    " lsp stuff
    Plug 'neovim/nvim-lspconfig'
    
call plug#end()
source $HOME/.config/nvim/theme/tokyonight.vim
luafile ~/.config/nvim/lua/prop.lua
colorscheme tokyonight


