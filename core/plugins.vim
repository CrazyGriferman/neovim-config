" Plugin specification and lua stuff
lua require('lua-init')


""""""""""""""""""""""""""""""Goyo settings""""""""""""""""""""""""""""""
let g:goyo_width=80
nnoremap <leader>z :Goyo<CR>


""""""""""""""""""""""""""""""markdown-preview settings""""""""""""""""""""""""""""""
nnoremap <leader>mm :MarkdownPreviewToggle<CR>


"""""""""""""""""""""""""""""LeaderF settings"""""""""""""""""""""
" Do not use cache file
let g:Lf_UseCache = 0
" Refresh each time we call leaderf
let g:Lf_UseMemoryCache = 0

" Ignore certain files and directories when searching files
let g:Lf_WildIgnore = {
  \ 'dir': ['.git', '__pycache__', '.DS_Store'],
  \ 'file': ['*.exe', '*.dll', '*.so', '*.o', '*.pyc', '*.jpg', '*.png',
  \ '*.gif', '*.svg', '*.ico', '*.db', '*.tgz', '*.tar.gz', '*.gz',
  \ '*.zip', '*.bin', '*.pptx', '*.xlsx', '*.docx', '*.pdf', '*.tmp',
  \ '*.wmv', '*.mkv', '*.mp4', '*.rmvb', '*.ttf', '*.ttc', '*.otf',
  \ '*.mp3', '*.aac']
  \}


" Only fuzzy-search files names
let g:Lf_DefaultMode = 'NameOnly'

" Popup window settings
let w = float2nr(&columns * 0.8)
let g:Lf_PopupWidth = w
"if w > 140
"  let g:Lf_PopupWidth = 140
"else
"  let g:Lf_PopupWidth = w
"endif
let g:Lf_PopupPosition = [0, float2nr((&columns - g:Lf_PopupWidth)/2)]

"set popupmode
let g:Lf_PreviewInPopup = 1

" Do not use version control tool to list files under a directory since
" submodules are not searched by default.
let g:Lf_UseVersionControlTool = 0

" Use rg as the default search tool
let g:Lf_DefaultExternalTool = "rg"

" show dot files
let g:Lf_ShowHidden = 1

" Disable default mapping
let g:Lf_ShortcutF = ''
let g:Lf_ShortcutB = ''

" set up working directory for git repository
let g:Lf_WorkingDirectoryMode = 'a'

" Search files in popup window
nnoremap <silent> <leader>ff :<C-U>Leaderf file --popup<CR>

" Grep project files in popup window
nnoremap <silent> <leader>fg :<C-U>Leaderf rg --no-messages --popup<CR>

" Search vim help files
nnoremap <silent> <leader>fh :<C-U>Leaderf help --popup<CR>
" nnoremap <silent> <leader>h :<C-U>echoerr "Use \<lt>leader>fh instead!"<CR>

" Search tags in current buffer
nnoremap <silent> <leader>ft :<C-U>Leaderf bufTag --popup<CR>
" nnoremap <silent> <leader>t :<C-U>echoerr "Use \<lt>leader>ft instead!"<CR>

" Switch buffers
nnoremap <silent> <leader>fb :<C-U>Leaderf buffer --popup<CR>

" Search recent files
nnoremap <silent> <leader>fr :<C-U>Leaderf mru --popup<CR>

let g:Lf_PopupColorscheme = 'gruvbox_material'

" Change keybinding in LeaderF prompt mode, use ctrl-n and ctrl-p to navigate
" items.
" let g:Lf_CommandMap = {'<C-J>': ['<C-N>'], '<C-K>': ['<C-P>']}

" change popup preview window mode
let g:Lf_CommandMap = {'<C-Down>': ['<C-D>'], '<C-Up>': ['<C-E>']}


"""""""""""""""""""""""""""""which-key settings"""""""""""""""""""""


"""""""""""""""""""""""""""""Telescope settings"""""""""""""""""""""
nnoremap <leader>tf <cmd>Telescope find_files<cr>
nnoremap <leader>tg <cmd>Telescope live_grep<cr>
nnoremap <leader>tb <cmd>Telescope buffers<cr>
nnoremap <leader>th <cmd>Telescope help_tags<cr>


"""""""""""""""""""""""""""""Te/lescope settings"""""""""""""""""""""

nnoremap <leader>l :NvimTreeToggle<CR>
nnoremap <leader>ll :NvimTreeFocus<CR>
nnoremap <leader>nr :NvimTreeRefresh<CR>
nnoremap <leader>nf :NvimTreeFindFile<CR>


"""""""""""""""""""""""""""""md-img-paste settings"""""""""""""""""""""
let g:mdip_imgdir = '.'

" insert clipboard image snippet
autocmd FileType markdown nmap <buffer><silent> <leader>i :call mdip#MarkdownClipboardImage()<CR>

"""""""""""""""""""""""""""""vim-translator settings"""""""""""""""""""""
let g:translator_default_engines = ["bing"]

"""""""""""""""""""""""""""""m settings"""""""""""""""""""""

nnoremap <leader>hw :HopWord<CR>
nnoremap <leader>hl :HopLine<CR>
nnoremap <leader>ha :HopAnywhere<CR>
nnoremap <leader>hh :HopChar2<CR>

"""""""""""""""""""""""""""""undotree settings"""""""""""""""""""""
nnoremap <leader>u :UndotreeToggle<CR>
nnoremap <leader>uf :UndotreeFocus<CR>

