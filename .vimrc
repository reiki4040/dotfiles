" Neobundle refs http://catcher-in-the-tech.net/1063/
"---------------------------
" Start Neobundle Settings.
"---------------------------
" bundleで管理するディレクトリを指定
set runtimepath+=~/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" neobundle自体をneobundleで管理
NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'Townk/vim-autoclose'
NeoBundle 'Shougo/neocomplete'

NeoBundle 'fatih/vim-go'

call neobundle#end()

" Required:
filetype plugin indent on

" 未インストールのプラグインがある場合、インストールするかどうかを尋ねてくれるようにする設定
" 毎回聞かれると邪魔な場合もあるので、この設定は任意です。
NeoBundleCheck

"-------------------------
" End Neobundle Settings.
"-------------------------


let g:hybrid_use_iTerm_colors = 1
colorscheme hybrid

syntax on

" set list              " 不可視文字表示
" set listchars=tab:>.,trail:_,extends:>,precedes:< " 不可視文字の表示形式
set display=uhex      " 印字不可能文字を16進数で表示

" 全角スペースの表示
highlight ZenkakuSpace cterm=underline ctermfg=lightblue guibg=darkgray
match ZenkakuSpace /　/

set backspace=indent,eol,start   " バックスペースでなんでも消せるように "

" :Ptでインデントモード切替
command! Pt :set paste!

" 保存時に行末の空白を除去する
autocmd BufWritePre * :%s/\s\+$//ge

" <leader>j でJSONをformat
" http://wozozo.hatenablog.com/entry/2012/02/08/121504
map <Leader>j !python -m json.tool<CR>

"set number "行番号を表示
set tabstop=4 "タブスペース4つ分に設定
set smartindent "改行時のオートインデント
set completeopt=menuone "コード補完時のプレビューを無効にする

set ignorecase "大文字/小文字の区別なく検索する
set incsearch "検索フレーズに部分マッチしている部分を表示する
set hlsearch "マッチするすべを強調表示する
set smartcase "検索文字列に大文字が含まれている場合は区別して検索する
set history=100 "履歴を100個まで残す


"un highlight searchstring
nnoremap <ESC><ESC> :nohlsearch<CR>

" insert mode でjkでesc
inoremap jk <Esc>

"""""""" neocomplate
if neobundle#is_installed('neocomplete')
    " neocomplete用設定
    let g:neocomplete#enable_at_startup = 1
    let g:neocomplete#enable_ignore_case = 1
    let g:neocomplete#enable_smart_case = 1
    if !exists('g:neocomplete#keyword_patterns')
        let g:neocomplete#keyword_patterns = {}
    endif
    let g:neocomplete#keyword_patterns._ = '\h\w*'
    let g:neocomplcache_enable_underbar_completion = 1
endif

"""""""" golang
exe "set rtp+=".globpath($GOPATH, "src/github.com/nsf/gocode/vim")

if !exists('g:neocomplete#omni_patterns')
    let g:neocomplete#omni_patterns = {}
endif
let g:neocomplete#omni_patterns.go = '\h\w*\.\?'

""" vim-go
let g:go_bin_path = expand("/usr/local/go/bin")
let g:go_play_open_browser = 0
let g:go_fmt_fail_silently = 1
let g:go_fmt_autosave = 1
let g:go_fmt_command = "gofmt"
let g:go_disable_autoinstall = 1

au FileType go nmap <Leader>i <Plug>(go-info)
au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)
au FileType go nmap <leader>gb <Plug>(go-build)
au FileType go nmap <leader>gt <Plug>(go-test)
au FileType go nmap <leader>r <Plug>(go-run)
