local Gruvbox = {}
Gruvbox.setup = function ()

    local colorscheme = 'gruvbox'
    vim.go.termguicolors = true
    vim.go.background = 'dark'

    vim.cmd('colorscheme '..colorscheme)

end

return Gruvbox.setup()
