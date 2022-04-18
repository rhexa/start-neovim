M = {}

M.autocmd = function ()
    
    vim.cmd [[
        function! Autocmd()
            resize 8
            startinsert
        endfunction

        augroup AuTerminal
            au!
            au FileType,BufWinEnter,WinEnter term://* call Autocmd()
        augroup End
    ]]

end

M.setup = function ()

    M.autocmd()

end

return M.setup()
