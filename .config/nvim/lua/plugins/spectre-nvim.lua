local M = {}

M.config = function()
    require("spectre").setup({
      highlight = {
        ui = "String",
        search = "DiffRemoved",
        replace = "DiffAdded"
      },
      mapping={
        ['toggle_word_regexp'] = {
          map = "tw",
          cmd = "<cmd>lua require('spectre').change_options('word-regexp')<CR>",
          desc = "toggle word regexp"
        },
      },
      find_engine = {
        -- rg is map with finder_cmd
        ['rg'] = {
          cmd = "rg",
          -- default args
          args = {
            '--color=never',
            '--no-heading',
            '--with-filename',
            '--line-number',
            '--column',
          } ,
          options = {
            ['ignore-case'] = {
              value= "--ignore-case",
              icon="[I]",
              desc="ignore case"
            },
            ['hidden'] = {
              value="--hidden",
              desc="hidden file",
              icon="[H]"
            },
            ['word-regexp'] = {
              value="--word-regexp",
              icon="[W]",
              desc="word regexp"
            }
          }
        },
      },
      is_insert_mode = true
    })
end

return M
