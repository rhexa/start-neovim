function req(name)
    name = string.format('keybindings/%s',name)
    return require(name)
end

function setup()

    req('netrw')
    req('buffer')
    req('terminal')

end

return setup()
