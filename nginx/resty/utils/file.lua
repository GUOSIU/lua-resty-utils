
local lfs       = require "lfs" -- LuaFileSystem
local _sub      = string.sub
local _match    = string.match

local __ = {}

-- 文件名(不含后缀名)
__.file_name = function(file)
    local idx = _match(file, ".+()%.%w+$")
    if(idx) then
        return _sub(file, 1, idx-1)
    else
        return file
    end
end

-- 后缀名
__.exe_name = function(file)
    return _match(file, ".+%.(%w+)$")
end

-- lua文件列表
__.file_list = function(path)

    local list, index = {}, 0

    for f in lfs.dir(path) do
        if f ~= "." and f ~= '..' then
            local p = path .. "/" .. f
            local t = lfs.attributes(p).mode
            if t == "file" and __.exe_name(f) == "lua" then
                index = index + 1
                list[index] = __.file_name(f)
            end
        end
    end

    return list

end

return __
