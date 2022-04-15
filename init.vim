 set nocompatible              " be iMproved, required
   filetype off
   set rtp+=~/.vim/bundle/Vundle.vim
   call vundle#begin()
    Plugin 'VundleVim/Vundle.vim'
    Plugin 'dracula/vim',{'name':'dracula'}
    Plugin 'jiangmiao/auto-pairs'
    Plugin 'alvan/vim-closetag'
    Plugin 'preservim/nerdtree'
    Plugin 'vim-python/python-syntax' "python syntax highlighting
    Plugin 'vim-airline/vim-airline'
    Plugin 'tc50cal/vim-terminal' " Vim Terminal
	Plugin 'rafi/awesome-vim-colorschemes' " Retro Scheme
	Plugin 'vim-airline/vim-airline-themes'
	Plugin 'mhinz/vim-startify' "homepage
	Plugin 'tpope/vim-surround' 	
	Plugin 'mattn/emmet-vim'
	Plugin 'tpope/vim-fugitive' "Git integration
	Plugin 'SirVer/ultisnips'
	Plugin 'honza/vim-snippets'
	Plugin 'junegunn/fzf.vim'
	Plugin 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plugin 'bfredl/nvim-ipy'
	Plugin 'davidhalter/jedi-vim'
	Plugin 'neoclide/coc.nvim' ", {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
	Plugin 'lepture/vim-jinja'
	Plugin 'dbeniamine/cheat.sh-vim'
  call vundle#end()            " required
 
  let mapleader = ' '
  filetype plugin indent on
  syntax on
  let g:coc_global_extensions = ['coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-tsserver']
  let g:user_emmet_mode='a'    "enable all function in all mode.
  let g:onedark_termcolors=256
  let g:airline_theme='onedark'
  let g:ycm_clangd_binary_path = trim(system('brew --prefix llvm')).'/bin/clangd'
  let g:closetag_filenames = '*.html,*.js'
  let g:airline#extensions#tabline#enabled = 1
  let g:airline_powerline_fonts = 1
  let g:python_highlight_all = 1
  let g:python_highlight_space_errors = 0
	nmap <F2> :w !python<CR>
	"nmap K i<CR><ESC>
nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <C-b> :TerminalSplit bash<CR>
nnoremap <C-p> :TerminalSplit python<CR>
nnoremap <C-h> :tabp<CR>
nnoremap <C-l> :tabn<CR>
nnoremap <buffer> H :<C-u>execute "!pydoc3 " . expand("<cword>")<CR>
" Trigger configuration. You need to change this to something other than <tab> if you use one of the following:
" - https://github.com/Valloric/YouCompleteMe
" - https://github.com/nvim-lua/completion-nvim
let g:UltiSnipsSnippetDirectories = ['~/.vim/UltiSnips', 'UltiSnips']
let g:UltiSnipsExpandTrigger= "<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="normal"
"keybinds for fuzzy finding 
nnoremap <silent> <C-f> :Files<CR>
nnoremap <silent> <Leader>f :Rg<CR>
nnoremap <silent> <Leader>b :Buffers<CR>
nnoremap <silent> <C-f> :Files<CR>
nnoremap <silent> <Leader>f :Rg<CR>
nnoremap <silent> <Leader>/ :BLines<CR>
nnoremap <silent> <Leader>' :Marks<CR>
nnoremap <silent> <Leader>g :Commits<CR>
nnoremap <silent> <Leader>H :Helptags<CR>
nnoremap <silent> <Leader>hh :History<CR>
nnoremap <silent> <Leader>h: :History:<CR>
nnoremap <silent> <Leader>h/ :History/<CR>
imap jj <Esc>
  set nu
  set noerrorbells
  set noswapfile
  set cursorline
  set title
  set tabstop=4
  set wildmenu
  set wildmode
  set shiftwidth=4
  set smartindent
  set termguicolors
  syntax enable
  colorscheme space-vim-dark
  set scrolloff=7

command! -nargs=0 RunQtConsole
\call jobstart("jupyter qtconsole --JupyterWidget.include_other_output=True")

let g:ipy_celldef = '^##' " regex for cell start and end

nmap <silent> <leader>jqt :RunQtConsole<Enter>
nmap <silent> <leader>jk :IPython<Space>--existing<Space>--no-window<Enter>
nmap <silent> <leader>jc <Plug>(IPy-RunCell)
nmap <silent> <leader>ja <Plug>(IPy-RunAll)
