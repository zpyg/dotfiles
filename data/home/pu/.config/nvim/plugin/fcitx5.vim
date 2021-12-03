augroup fcitx5 
    autocmd!
    autocmd InsertLeave * :silent !fcitx5-remote -c
    autocmd BufCreate *  :silent !fcitx5-remote -c
    autocmd BufEnter *  :silent !fcitx5-remote -c
    autocmd BufLeave *  :silent !fcitx5-remote -c
    autocmd CmdlineLeave * :silent !fcitx5-remote -c
    autocmd CmdlineEnter * :silent !fcitx5-remote -c
augroup END
