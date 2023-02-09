-- Plugin specification and lua stuff
require('lua-init')


-- Goyo settings
vim.g.goyo_width=80
vim.keymap.set('n', '<leader>z', ':Goyo<CR>')


-- markdown-preview settings --
vim.keymap.set('n', '<leader>mm', ':MarkdownPreviewToggle<CR>')

-- LeaderF settings

-- Do not use cache file
vim.g.Lf_UseCache = 0
-- Refresh each time we call leaderf
vim.g.Lf_UseMemoryCache = 0

-- Ignore certain files and directories when searching files
vim.g.Lf_WildIgnore = {
  ['dir'] = {'.git', '__pycache__', '.DS_Store'},
  ['file'] = {'*.exe', '*.dll', '*.so', '*.o', '*.pyc', '*.jpg', '*.png',
  '*.gif', '*.svg', '*.ico', '*.db', '*.tgz', '*.tar.gz', '*.gz',
  '*.zip', '*.bin', '*.pptx', '*.xlsx', '*.docx', '*.pdf', '*.tmp',
  '*.wmv', '*.mkv', '*.mp4', '*.rmvb', '*.ttf', '*.ttc', '*.otf',
  '*.mp3', '*.aac'}
}


-- Only fuzzy-search files names
vim.g.Lf_DefaultMode = 'NameOnly'

-- set popupmode
vim.g.Lf_PreviewInPopup = 1

-- Do not use version control tool to list files under a directory since
-- submodules are not searched by default.
vim.g.Lf_UseVersionControlTool = 0

-- Use rg as the default search tool
vim.g.Lf_DefaultExternalTool = "rg"

-- show dot files
vim.g.Lf_ShowHidden = 1

-- Disable default mapping
vim.g.Lf_ShortcutB = ''
vim.g.Lf_ShortcutF = ''

-- set up working directory for git repository
vim.g.Lf_WorkingDirectoryMode = 'a'

-- Search files in popup window
vim.keymap.set('n', '<leader>ff', ':<C-U>Leaderf file --popup<CR>', { silent = true })

-- Grep project files in popup window
vim.keymap.set('n', '<leader>fg', ':<C-U>Leaderf rg --no-messages --popup<CR>', { silent = true })

-- Search vim help files
vim.keymap.set('n', '<leader>fh', ':<C-U>Leaderf help --popup<CR>', { silent = true })

-- Search tags in current buffer
vim.keymap.set('n', '<leader>ft', ':<C-U>Leaderf bufTag --popup<CR>', { silent = true })

-- Switch buffers
vim.keymap.set('n', '<leader>fb', ':<C-U>Leaderf buffer --popup<CR>', { silent = true })

-- Search recent files
vim.keymap.set('n', '<leader>fr', ':<C-U>Leaderf mru --popup<CR>', { silent = true })

vim.g.Lf_PopupColorscheme = 'gruvbox_material'

vim.keymap.set('n', '<leader><space>', ':<C-U>Leaderf mru --popup<CR>')

-- change popup preview window mode (current not working)
-- vim.g.Lf_CommandMap = { ['<C-Down>'] = '<C-D>', ['<C-Up>'] = '<C-E>'}


-- Telescope settings
vim.keymap.set('n', '<leader>tf', ':Telescope find_files<CR>')
vim.keymap.set('n', '<leader>tg', ':Telescope live_grep<CR>')
vim.keymap.set('n', '<leader>tb', ':Telescope buffers<CR>')
vim.keymap.set('n', '<leader>th', ':Telescope help_tags<CR>')

-- Telescope settings
vim.keymap.set('n', '<leader>l', ':NvimTreeToggle<CR>')
vim.keymap.set('n', '<leader>ll', ':NvimTreeFocus<CR>')
vim.keymap.set('n', '<leader>nr', ':NvimTreeRefresh<CR>')
vim.keymap.set('n', '<leader>nf', ':NvimTreeFindFile<CR>')

-- md-img-paste settings
vim.g.mdip_imgdir = '.'

-- insert clipboard image snippet

vim.api.nvim_create_autocmd(
  "FileType",
  { pattern = {"markdown"}, command = [[nnoremap <buffer><silent> <leader>i :call mdip#MarkdownClipboardImage()<CR>]] }
)

-- hop settings

vim.keymap.set('n', '<leader>hw', ':HopWord<CR>')
vim.keymap.set('n', '<leader>hl', ':HopLine<CR>')
vim.keymap.set('n', '<leader>ha', ':HopAnywhere<CR>')

-- undotree settings

vim.keymap.set('n', '<leader>u', ':UndotreeToggle<CR>')
vim.keymap.set('n', '<leader>uf', ':UndotreeFocus<CR>')

-- nvim-ide settings

vim.keymap.set('n', '<leader>il', ':Workspace LeftPanelToggle<CR>')
vim.keymap.set('n', '<leader>ir', ':Workspace RightPanelToggle<CR>')

-- nvim-dap
vim.fn.sign_define('DapBreakpoint',
                   {text = '🟥', texthl = '', linehl = '', numhl = ''})
vim.fn.sign_define('DapBreakpointRejected',
                   {text = '🟩', texthl = '', linehl = '', numhl = ''})
vim.fn.sign_define('DapStopped',
                   {text = '⭐️', texthl = '', linehl = '', numhl = ''})
