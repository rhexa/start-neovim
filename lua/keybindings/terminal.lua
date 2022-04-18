local i = require('keybindings/modules/map')
local nmap = i.nmap
local opts = { noremap=false }
M = {}

M.autocmd = function ()
    
    vim.cmd [[
        function! ToggleTerm()
            if len(bufname('term://')) > 0
                new
                b term:*
            else
                new | term
            endif
        endfunction

        augroup AuKeybindingTerminal
            function! Keymap()
                tnoremap <esc> <c-\><c-n>
            endfunction

            au!
            au FileType,BufWinEnter,WinEnter,TermOpen term://* call Keymap()
        augroup End
    ]]
end

M.keybinding = function ()
    
    nmap( '~', ':call ToggleTerm()<CR>', opts )

end

M.setup = function ()

    M.autocmd()
    M.keybinding()

end

return M.setup()
