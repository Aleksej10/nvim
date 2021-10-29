let mapleader = ","
syntax on
filetype plugin indent on
set encoding=utf-8
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set termguicolors

function! SourceLocal(file)
  let path = '$HOME/.config/nvim/pconf/' . a:file
  exec 'source ' . path
endfunction

call plug#begin('$HOME/.config/nvim/plugged')
  Plug 'flazz/vim-colorschemes'

  Plug 'folke/lsp-colors.nvim'
  Plug 'ap/vim-css-color'

  Plug 'lukas-reineke/indent-blankline.nvim'

  Plug 'karb94/neoscroll.nvim'
  Plug 'kyazdani42/nvim-web-devicons'

  Plug 'folke/which-key.nvim'
  Plug 'romgrk/barbar.nvim'
  Plug 'yamatsum/nvim-cursorline'
  Plug 'tpope/vim-eunuch'

  Plug 'tpope/vim-fugitive'
  Plug 'jreybert/vimagit'
  Plug 'tanvirtin/vgit.nvim'
  Plug 'sindrets/diffview.nvim'

  Plug 'ggandor/lightspeed.nvim'

  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-commentary'

  Plug 'mg979/vim-visual-multi', {'branch': 'master'}
  Plug 'townk/vim-autoclose'

  Plug 'hrsh7th/nvim-compe'
  Plug 'hrsh7th/vim-vsnip'
  Plug 'mattn/emmet-vim'


  Plug 'vimwiki/vimwiki'
  Plug 'nvim-lua/popup.nvim'

  " lua stuff?
  Plug 'nvim-lua/plenary.nvim'

  Plug 'michaelb/sniprun', {'do': 'bash install.sh'}
  Plug 'ray-x/lsp_signature.nvim'
  Plug 'kyazdani42/nvim-tree.lua'
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'glepnir/galaxyline.nvim' , {'branch': 'main'}

  Plug 'neovim/nvim-lspconfig'
  " Plug 'kabouzeid/nvim-lspinstall'
  Plug 'williamboman/nvim-lsp-installer'
  Plug 'ray-x/guihua.lua', {'do': 'cd lua/fzy && make' }
  Plug 'ray-x/navigator.lua'
  " Plug 'glepnir/lspsaga.nvim'
  Plug 'folke/trouble.nvim'
  Plug 'simrat39/symbols-outline.nvim'
  " Plug 'kosayoda/nvim-lightbulb'

  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} 
  Plug 'nvim-treesitter/nvim-treesitter-refactor'

  Plug 'RishabhRD/popfix'
  Plug 'RishabhRD/nvim-lsputils'
call plug#end()

call SourceLocal('luatree.vim')
call SourceLocal('neoscroll.lua')
call SourceLocal('sniprun.lua')
call SourceLocal('treesitter.lua')
call SourceLocal('telescope.lua')
call SourceLocal('galaxyline.lua')
call SourceLocal('compe.lua')
call SourceLocal('lsp.lua')
" call SourceLocal('lspinstall.lua')
call SourceLocal('lspinstaller.lua')
call SourceLocal('trouble.lua')
call SourceLocal('navigator.lua')
" call SourceLocal('lspsaga.lua')
call SourceLocal('lspsignature.lua')
" call SourceLocal('lightbulb.lua')
call SourceLocal('lsputils.lua')
call SourceLocal('symbolsoutline.lua')
call SourceLocal('whichkey.lua')
call SourceLocal('vgit.lua')
call SourceLocal('diffview.lua')



let g:user_emmet_leader_key='<leader>e'

" Indent stuff 
let g:indent_blankline_enabled = v:false
let g:indent_blankline_use_treesitter = v:true
nnoremap <leader>i :IndentBlanklineToggle!<cr>

" commentary:
  " gc - motion or selection (gcap for paragraph)
  " gcc - line
  " works as a toogle
  "

" Disables automatic commenting on newline:
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" surround:
   ""hello" + cs"[ = [ hello ]
   " hello + ysiw[ =  [hello]

call SourceLocal('lightspeed.lua')
call SourceLocal('multicursor.vim')

call SourceLocal('basics.vim')


" Navigating with guides
inoremap <leader><leader> <esc>/<++><Enter>"_c4l
vnoremap <leader><leader> <esc>/<++><Enter>"_c4l
map <leader><leader> /<++><Enter>"_c4l
