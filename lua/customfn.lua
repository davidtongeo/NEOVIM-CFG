local m = {}

m.fixPath = function(path)
    return path:gsub("\\", "/")
end

return m
