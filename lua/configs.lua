function req(name)
    name = string.format('configs/%s',name)
    return require(name)
end

function setup()

    req('powershell')
    req('terminal')

end

return setup()

