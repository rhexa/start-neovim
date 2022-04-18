vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

function get_setup(name)
  return string.format('require("plugins/%s")', name)
end

return require('packer').startup({
    function(use)
        -- Plugins here
        use 'wbthomason/packer.nvim'
        -- use 'vimwiki/vimwiki'
        use 'kyazdani42/nvim-web-devicons'
        use {
            'nvim-lualine/lualine.nvim',
            config = get_setup('lualine')
        }
        -- use {
        --     'kyazdani42/nvim-tree.lua',
        --     config = get_setup('nvim-tree')
        -- }
        use { 
            "ellisonleao/gruvbox.nvim",
            config = get_setup("gruvbox")
        }
        use { 
            "terrortylor/nvim-comment",
            config = get_setup("nvim-comment")
        }
    end,
    config = {
        display = {
            open_fn = require('packer.util').float,
        }
    }
})
