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


