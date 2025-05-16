vim.g.mapleader	= " "
vim.keymap.set('n', 'H', "<cmd>bprev<cr>", { silent = true, noremap = true })
vim.keymap.set('n', 'L', "<cmd>bnext<cr>", { silent = true, noremap = true })
vim.keymap.set('n', '<leader>d', "<cmd>bdelete!<cr>", { silent = true, noremap = true })

vim.o.tabstop = 4 -- A TAB character looks like 4 spaces
vim.o.expandtab = true -- Pressing the TAB key will insert spaces instead of a TAB character
vim.o.softtabstop = 4 -- Number of spaces inserted instead of a TAB character
vim.o.shiftwidth = 4

vim.opt.termguicolors = true

vim.cmd('packadd vim-jetpack')
require('jetpack.packer').add {
    {'tani/vim-jetpack'},
    {'mbbill/undotree' },
    {'navarasu/onedark.nvim'},
    {'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate',
        config = function()
            require 'nvim-treesitter.configs'.setup {
                ensure_installed = {'cpp', 'vim', 'vimdoc', 'javascript', 'css', 'html'},
                highlight = { enable = true }
            }
        end
    },
    {
        'nvimdev/modeline.nvim',
        config = function()
            require('modeline').setup()
        end
    },
    {'nvim-tree/nvim-web-devicons'},
    {
        'akinsho/bufferline.nvim',
        config=function ()
            require("bufferline").setup{}
        end
    },
    {
        "lukas-reineke/indent-blankline.nvim",
        config = function()
            require("ibl").setup()
        end
    }
}
require('onedark').load()
