let g:EasyMotion_do_mapping = 0 " Disable all default key mapping
let g:EasyMotion_smartcase = 1  " do smart case search

" " Make line move quickly
map <Leader>l <Plug>(easymotion-lineforward)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>h <Plug>(easymotion-linebackward)

" " use s to do navigation
nmap s <Plug>(easymotion-s2)

" " Map / search to easy motion
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)

" " These `n` & `N` mappings are options. You do not have to map `n` & `N` to
" " Without these mappings, `n` & `N` works fine. (These mappings just provide
" " different highlight method and have some other features )
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)
