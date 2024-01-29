-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny

vim.cmd.colorscheme = "catppuccin"
lvim.use_icons = true
lvim.leader = "space"
lvim.builtin.treesitter.rainbow.enable = true

vim.g.transparent_background = true        -- transparent background(Default: false)
lvim.transparent_window = true
vim.g.italic_comments = true               -- italic comments(Default: true)
vim.g.italic_keywords = true               -- italic keywords(Default: true)
vim.g.italic_functions = true              -- italic functions(Default: false)
vim.g.italic_variables = true              -- italic variables(Default: false)

lvim.plugins = {
  {
    "Pocco81/auto-save.nvim",
    config = function()
      require("auto-save").setup()
    end,
  },
  {
    'wfxr/minimap.vim',
    build = "cargo install --locked code-minimap",
    cmd = {"Minimap", "MinimapClose", "MinimapToggle", "MinimapRefresh", "MinimapUpdateHighlight"},
    config = function ()
      vim.cmd ("let g:minimap_width = 10")
      vim.cmd ("let g:minimap_auto_start = 1")
      vim.cmd ("let g:minimap_auto_start_win_enter = 1")
    end,
  },
  {
    "nacro90/numb.nvim",
    event = "BufRead",
    config = function()
    require("numb").setup {
      show_numbers = true, -- Enable 'number' for the window while peeking
      show_cursorline = true, -- Enable 'cursorline' for the window while peeking
    }
    end,
  }, 
  {
    "norcalli/nvim-colorizer.lua",
      config = function()
        require("colorizer").setup({ "css", "scss", "html", "javascript" }, {
            RGB = true, -- #RGB hex codes
            RRGGBB = true, -- #RRGGBB hex codes
            RRGGBBAA = true, -- #RRGGBBAA hex codes
            rgb_fn = true, -- CSS rgb() and rgba() functions
            hsl_fn = true, -- CSS hsl() and hsla() functions
            css = true, -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
            css_fn = true, -- Enable all CSS *functions*: rgb_fn, hsl_fn
            })
    end,
  },
  {
    "npxbr/glow.nvim",
    ft = {"markdown"},
    build = "apt install glow"
  },
  {
    "karb94/neoscroll.nvim",
    event = "WinScrolled",
    config = function()
    require('neoscroll').setup({
          -- All these keys will be mapped to their corresponding default scrolling animation
          mappings = {'<C-u>', '<C-d>', '<C-b>', '<C-f>',
          '<C-y>', '<C-e>', 'zt', 'zz', 'zb'},
          hide_cursor = true,          -- Hide cursor while scrolling
          stop_eof = true,             -- Stop at <EOF> when scrolling downwards
          use_local_scrolloff = false, -- Use the local scope of scrolloff instead of the global scope
          respect_scrolloff = false,   -- Stop scrolling when the cursor reaches the scrolloff margin of the file
          cursor_scrolls_alone = true, -- The cursor will keep on scrolling even if the window cannot scroll further
          easing_function = nil,        -- Default easing function
          pre_hook = nil,              -- Function to run before the scrolling animation starts
          post_hook = nil,              -- Function to run after the scrolling animation ends
          })
    end
  },
  {
    "folke/todo-comments.nvim",
    event = "BufRead",
    config = function()
      require("todo-comments").setup()
    end,
  },
  {
    "itchyny/vim-cursorword",
      event = {"BufEnter", "BufNewFile"},
      config = function()
        vim.api.nvim_command("augroup user_plugin_cursorword")
        vim.api.nvim_command("autocmd!")
        vim.api.nvim_command("autocmd FileType NvimTree,lspsagafinder,dashboard,vista let b:cursorword = 0")
        vim.api.nvim_command("autocmd WinEnter * if &diff || &pvw | let b:cursorword = 0 | endif")
        vim.api.nvim_command("autocmd InsertEnter * let b:cursorword = 0")
        vim.api.nvim_command("autocmd InsertLeave * let b:cursorword = 1")
        vim.api.nvim_command("augroup END")
        end
  },
-- {
--   'nvim-telescope/telescope.nvim', 
--   dependencies = { 'nvim-lua/plenary.nvim' }
-- },
-- {
--   "nvim-telescope/telescope-project.nvim",
--   event = "BufWinEnter",
--   setup = function()
--     vim.cmd [[packadd telescope.nvim]]
--   end,
-- },
  {
    "wakatime/vim-wakatime"
  },
  {
    "mrjones2014/nvim-ts-rainbow",
  },
  {
    "brooth/far.vim",
  },
  {
    "christoomey/vim-tmux-navigator",
    lazy = false,
  },
  { "catppuccin/nvim",
    name = "catppuccin",
    opts = {
      flavour = "macchiato",
    },
  },
  {
    "vimpostor/vim-tpipeline"
  }
}

--funtions
lvim.builtin.terminal.open_mapping = "<c-t>"
lvim.keys.normal_mode["<S-x>"] = ":q<CR>"
lvim.keys.normal_mode["<C-n>"] = ":tabnew"

--manipulation
lvim.keys.visual_mode["<C-c>"] = "y"
lvim.keys.visual_mode["<C-x>"] = "c"
lvim.keys.visual_mode["<C-S-v>"] = "p"
lvim.keys.visual_mode["<S-z>"] = '"_d'
lvim.keys.visual_mode["<tab>"] = ">"
lvim.keys.visual_mode["<S-tab>"] = "<"
lvim.keys.normal_mode["<tab>"] = ">>"
lvim.keys.normal_mode["<S-tab>"] = "<<"


--changes
lvim.keys.normal_mode["<C-z>"] = "u"
lvim.keys.normal_mode["<C-y>"] = "<C-r>"
lvim.keys.normal_mode["<C-A-Down>"] = "<C-v>"
lvim.keys.normal_mode["<C-A-Up>"] = "<C-v>"
lvim.keys.normal_mode["<C-s>"] = ":w<CR>"

--Tabs
lvim.keys.normal_mode["<S-h>"] = ":bprev<CR>"
lvim.keys.normal_mode["<S-l>"] = ":bnext<CR>"

