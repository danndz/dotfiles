-- load all plugins
require "pluginList"
require "options"
require "plugins.bufferline"

local g = vim.g

g.mapleader = " "
g.auto_save = false

-- colorscheme related stuff
g.nvchad_theme = "onedark"
vim.cmd[[
    let g:onedark_style = 'warm'
    colorscheme onedark
]]


require "highlights"
require "mappings"

require("utils").hideStuff()
