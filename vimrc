set number
set mouse=a
set tags=./tags,./TAGS,tags;~,TAGS;~
set cscopetag
set csto=0

if filereadable("cscope.out")
   cs add cscope.out   
elseif $CSCOPE_DB != ""
    cs add $CSCOPE_DB
endif
set cscopeverbose

"CSCOPE shortcut mapping
nmap zs :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap zg :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap zc :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap zt :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap ze :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap zf :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap zi :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap zd :cs find d <C-R>=expand("<cword>")<CR><CR>

"Taglist shortcut mapping
nmap <F8> :TlistToggle<CR><CR>
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1
set ut=100

"NerdTree shortcut mapping
nmap <F9> :NERDTreeToggle<CR><CR>
let NERDTreeWinPos=1

"SrcExpl settings
nmap <F10> :SrcExplToggle<CR>
let g:SrcExpl_pluginList = [
    \"__Tag_List__",
    \"_NERD_tree_"
    \]

nmap <F7> :TrinityToggleAll<CR>
