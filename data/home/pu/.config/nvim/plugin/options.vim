" 共享系统剪切板
set clipboard=unnamedplus
" 显示
set termguicolors
set cursorline
set number
set relativenumber
set list
set listchars=tab:>·,trail:·
" 滚动限制，距离上下边界空十行
set scrolloff=10
" 缩进
" 使用软制表符。用空格代替 TAB
set expandtab
" 缩进空格数
set shiftwidth=4
" 软制表符宽度。一次删除4个空格
set softtabstop=4
" TAB 显示宽度
set tabstop=4
" 折行
set foldmethod=expr
set foldexpr=nvim_treesitter#foldexpr()
" 不自动折叠
set foldlevelstart=99
set nowrap
set colorcolumn=100
" 智能搜索大小写敏感
set ignorecase
set smartcase
set lazyredraw
set ttyfast
set autowrite
set autoread
" 总是显示 signcolumn
" set signcolumn=yes

let g:python_host_prog = "/usr/bin/python"
let g:python3_host_prog = "/usr/bin/python3"
let g:loaded_gzip = 1
let g:loaded_tar = 1
let g:loaded_tarPlugin = 1
let g:loaded_zip = 1
let g:loaded_zipPlugin = 1
let g:loaded_getscript = 1
let g:loaded_getscriptPlugin = 1
let g:loaded_vimball = 1
let g:loaded_vimballPlugin = 1
let g:loaded_matchit = 1
let g:loaded_matchparen = 1
let g:loaded_2html_plugin = 1
let g:loaded_logiPat = 1
let g:loaded_rrhelper = 1
let g:loaded_netrw = 1
let g:loaded_netrwPlugin = 1
let g:loaded_netrwSettings = 1
let g:loaded_netrwFileHandlers = 1
let g:loaded_fzf = 1
