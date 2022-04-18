local M = function ()
    vim.cmd [[
        function! SetKeyBinding()
            nmap <buffer> l  <Plug>NetrwLocalBrowseCheck
            nmap <buffer> h  <Plug>NetrwBrowseUpDir
            echo "keybinding is set"
        endfunction

        augroup AuNetrw
            au!
            au FileType netrw call SetKeyBinding()
        augroup End
    ]]
end

return M()
