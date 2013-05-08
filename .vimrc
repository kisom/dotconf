" General options
set background=light
set backspace=indent,eol,start
set cindent autoindent
set cinoptions=t0,+4,(4,u4,w1
set confirm
set encoding=utf-8
set expandtab
set incsearch
set mouse=a
set nocompatible
set nohlsearch
set number
set ruler
"set shiftwidth=8
set showcmd
set showmatch
set showmode
"set softtabstop=8
"set tabstop=8
set tags=./tags,tags,/usr/src/sys/arch/amd64/tags,/var/db/libc.tags
set term=screen-256color
set ttyfast
colorscheme hybrid
source /usr/share/vim/vim73/ftplugin/man.vim
syntax on

" ^n/^p to switch between tabs
nnoremap <C-n> :tabnext<Enter>
nnoremap <C-p> :tabprevious<Enter>

" switch between relative and absolute number
nn <F2> :setlocal relativenumber! relativenumber?<CR>
nn <F3> :setlocal number! number?<CR>

" toggle search highlighting (off by default)
nn <F4> :setlocal hlsearch! hlsearch?<CR>

" indent the current file with indent(1)
nn ,i :%!indent -st<CR>

" make clean
nn ,c :silent! make clean \| redraw! \| cw<CR><CR>
nn ,t :silent! make tags \| redraw! \| cw<CR><CR>

" mk options
nn ,M :!mk<CR>
nn ,C :!mk clean<CR>
nn ,N :!mk nuke<CR>

" KNR mode and highlight lines > 80 chars
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.*/
let c_space_errors=1
" line
set cinoptions=:0,t0,+4,(4

" fix glitches in certain terminals
" backspace
imap ^? ^H

" ctrl up and ctrl down in tmux
"if &term == "screen"
"        set t_kN=^[[6;*~
"        set t_kP=^[[5;*~
"endif

" spell checking
" text & mutt files
au BufNewFile,BufRead /tmp/mutt*,/tmp/cvs*,*.txt set tw=72 noai noshowmatch
au BufNewFile,BufRead /tmp/mutt*,/tmp/cvs*,*.txt setlocal spell spelllang=en_us
au BufNewFile,BufRead /tmp/mutt*,/tmp/cvs*,*.txt syntax off
" git commits
au BufNewFile,BufRead *.git/COMMIT_EDITMSG set tw=72 noai noshowmatch
au BufNewFile,BufRead *.git/COMMIT_EDITMSG setlocal spell spelllang=en_us
" f7 toggles spelling on/off
nn <F7> :setlocal spell! spell?<CR>

" view binary files as hex
" Convert to hex and back; does not save changes
nn <F5> :%!xxd -g 1<CR>
nn <F6> :%!xxd -g 1 -r<CR>

" makefile magic
" compiler stuff
let g:compiler_gcc_ignore_unmatched_lines=1
let mapleader=','
" quickfix :make
nmap <silent> <Leader>m :wa<CR>:silent! make \| redraw! \| cw<CR><CR>
vmap <silent> <Leader>m :wa<CR>:silent! make \| redraw! \| cw<CR><CR>
" handy shortcuts
map <Leader>h :ccl<CR>
map <Leader>s :cw<CR>
map <Leader>l :cl<CR>
" jump between messages
map <Leader>n :cn<CR>
map <Leader>p :cp<CR>

" format selection
map <Leader>f :!fmt<CR>

" @c comment, @u uncomment, @p print function name
let @u='0xx$xx^['
let @c='I/*^[A*/^['
let @p='ofprintf(stderr, "%s\n", __func__);^['

function! s:ExecuteInShell(command, bang)
        let _ = a:bang != '' ? s:_ : a:command == '' ? '' : join(map(split(a:command), 'expand(v:val)'))

        if (_ != '')
                let s:_ = _
                let bufnr = bufnr('%')
                let winnr = bufwinnr('^' . _ . '$')
                silent! execute  winnr < 0 ? 'new ' . fnameescape(_) : winnr . 'wincmd w'
                setlocal buftype=nowrite bufhidden=wipe nobuflisted noswapfile nowrap
                silent! :%d
                let message = 'Execute ' . _ . '...'
                call append(0, message)
                echo message
                silent! 2d | resize 1 | redraw
                silent! execute 'silent! %!'. _
                silent! execute 'resize ' . line('$')
                silent! execute 'autocmd BufUnload <buffer> execute bufwinnr(' . bufnr . ') . ''wincmd w'''
                silent! execute 'autocmd BufEnter <buffer> execute ''resize '' .  line(''$'')'
                silent! execute 'nnoremap <silent> <buffer> <LocalLeader>r :call <SID>ExecuteInShell(''' . _ . ''', '''')<CR>'
                silent! execute 'nnoremap <silent> <buffer> <LocalLeader>g :execute bufwinnr(' . bufnr . ') . ''wincmd w''<CR>'
        endif
endfunction

command! -complete=shellcmd -nargs=* -bang Shell call s:ExecuteInShell(<q-args>, '<bang>')
cabbrev shell Shell

" command! -bang Fixmake 


:ab #d #define
:ab #i #include

autocmd FileType make setlocal noexpandtab
autocmd FileType c setlocal noexpandtab
autocmd FileType go setlocal noexpandtab

