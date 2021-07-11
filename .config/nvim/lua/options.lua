local opt = vim.opt

opt.ruler = false
opt.hidden = true
opt.ignorecase = true
opt.splitbelow = true
opt.splitright = true
opt.termguicolors = true
opt.cul = true
opt.mouse = "a"
opt.signcolumn = "yes"
opt.cmdheight = 1
opt.updatetime = 250 -- update interval for gitsigns
opt.timeoutlen = 200
opt.clipboard = "unnamedplus"
opt.foldenable = false

-- Numbers
opt.number = true
opt.numberwidth = 2
-- opt.relativenumber = true

-- for indenline
opt.tabstop = 2
opt.softtabstop = 2
opt.expandtab = true
opt.shiftwidth = 2
opt.smartindent = true

-- disable builtin vim plugins
vim.g.loaded_gzip = 0
vim.g.loaded_tar = 0
vim.g.loaded_tarPlugin = 0
vim.g.loaded_zipPlugin = 0
vim.g.loaded_2html_plugin = 0
vim.g.loaded_netrw = 0
vim.g.loaded_netrwPlugin = 0
vim.g.loaded_matchit = 0
vim.g.loaded_matchparen = 0
vim.g.loaded_spec = 0

-- js config
vim.g.javascript_plugin_jsdoc = 1
vim.g.polyglot_disabled = {'jsx', 'tsx', 'js', 'ts'}
vim.g.vim_jsx_pretty_template_tags = {'html', 'jsx', 'tsx'}

-- Multiple Cursor
vim.g.multi_cursor_use_default_mapping = 0
vim.g.multi_cursor_start_word_key      = '<C-d>'
vim.g.multi_cursor_select_all_word_key = '<C-L>'
vim.g.multi_cursor_start_key           = 'g<C-d>'
vim.g.multi_cursor_select_all_key      = 'g<C-L>'
vim.g.multi_cursor_next_key            = '<C-d>'
vim.g.multi_cursor_prev_key            = '<C-p>'
vim.g.multi_cursor_skip_key            = '<C-i>'
vim.g.multi_cursor_quit_key            = '<Esc>'

-- easymotion
vim.g.EasyMotion_smartcase = 1
vim.g.EasyMotion_do_mapping = 0

local M = {}

function M.is_buffer_empty()
    -- Check whether the current buffer is empty
    return vim.fn.empty(vim.fn.expand("%:t")) == 1
end

function M.has_width_gt(cols)
    -- Check if the windows width is greater than a given number of columns
    return vim.fn.winwidth(0) / 2 > cols
end

-- file extension specific tabbing
-- vim.cmd([[autocmd Filetype python setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4]])

return M
