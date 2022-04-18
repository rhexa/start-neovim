local M = {}

M.nmap = function (lhs, rhs, opts)
   vim.api.nvim_set_keymap('n', lhs, rhs, opts) 
end

M.test = function ()
    print('test from lua module')
end

return M
