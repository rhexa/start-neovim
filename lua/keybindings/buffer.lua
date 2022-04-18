local i = require('keybindings/modules/map')
local nmap = i.nmap

local M = {}

local opts = { noremap=false }

M.bufferDelete = function ()
   -- need to be implemented 
end

M.setup = function ()
    
    nmap('bn', ':bn<CR>', opts)
    nmap('bp', ':bp<CR>', opts)
    nmap('bd', ':new|bd#<CR>', opts)

end

return M.setup()
