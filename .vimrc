"+----------------------------------------------------------------------------------------+
"  基本設定
"+----------------------------------------------------------------------------------------+
"新しい行のインデントを現在行と同じにする
set autoindent
"ファイル保存ダイアログの初期ディレクトリをバッファファイル位置に設定
set browsedir=buffer
"クリップボードをOSと連携
set clipboard=unnamed
"Vi互換をオフ
set nocompatible
"タブの代わりに空白文字を挿入する
set expandtab
"変更中のファイルでも、保存しないで他のファイルを表示
set hidden
"インクリメンタルサーチを行う
set incsearch
"タブ文字、行末など不可視文字を表示する
set list
"listで表示される文字のフォーマットを指定する
set listchars=eol:$,tab:>\ ,extends:<
"行番号を表示する
set number
"閉じ括弧が入力されたとき、対応する括弧を点滅表示しない
set noshowmatch
"検索時に大文字を含んでいたら大/小を区別
set smartcase
"新しい行を作ったときに高度な自動インデントを行う
set smartindent
"行頭の余白内で Tab を打ち込むと、'shiftwidth' の数だけインデントする。
set smarttab
"カーソルを行頭、行末で止まらないようにする
set whichwrap=b,s,h,l,<,>,[,]
"検索をファイルの先頭へループしない
set nowrapscan
"起動時のメッセージを消す
set shortmess+=I
"外部のエディタで編集中のファイルが変更されたら自動的に読み直す
set autoread
"検索結果をハイライトしない
set nohlsearch
"Diff設定 埋め立て行を表示、常に垂直分割
set diffopt=filler,vertical
"コマンドの履歴保存数を指定
set history=100000
"タブ幅を設定
set tabstop=4
set shiftwidth=4
"ビープ音を抑制
set vb t_vb=

"+----------------------------------------------------------------------------------------+
"  キーマップ設定
"+----------------------------------------------------------------------------------------+
"検索語が画面の真ん中に来るようにする
nmap n nzz
nmap N Nzz
"*で部分一致も検索する
nmap * g*zz
nmap # g#zz
"行末まで移動したとき表示行が真ん中にくるようにする
nmap G Gzz
"<Space>で画面中央カーソルのままスクロール
nnoremap <Space> jzz
nnoremap <S-Space> kzz
"インサートモード移行時カーソル行を画面中央に
nnoremap i zzi
nnoremap I zzI
nnoremap a zza
nnoremap A zzA
nnoremap o zzo
nnoremap O zzO
"ブロック移動時カーソル行を画面中央に
nnoremap } }zz
nnoremap { {zz
"<C-o>ジャンプ時カーソル行を画面中央に
nnoremap <C-o> <C-o>zz

"ノーマルモード時Enterで改行する
nnoremap <CR> o<ESC>

"表示行単位で行移動
noremap j gj
noremap k gk

"<Leader><Leader>で変更があれば保存
nnoremap <Leader><Leader> :up<CR>

"v$およびvvで行末まで選択
vnoremap $ $h
vnoremap v $h