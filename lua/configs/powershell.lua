-- Config to setup powershell as default terminal

local M = {}

M.default = function ()

    vim.cmd [[
        let &shell = has('win32') ? 'powershell' : 'pwsh'
        let &shellcmdflag = '-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.Encoding]::UTF8;'
        let &shellredir = '2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode'
        let &shellpipe = '2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode'
        set shellquote= shellxquote=
    ]]

end

M.setup = function ()

    M.default()

end

return M.setup()
