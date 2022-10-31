
-- 子目录列表 v20.08.09 --------------------------------------------------------

--【升级说明】v20.08.09
-- 1) 不输出 _bk 目录

--------------------------------------------------------------------------------

local lfs       = require "lfs" -- LuaFileSystem

local __ = {}

-- 子目录列表
__.path_list = function(path)

    local list, index = {}, 0

    for f in lfs.dir(path) do
        if f ~= "." and f ~= '..' and f ~= "_bk" then
            local p = path .. "/" .. f
            local t = lfs.attributes(p).mode
            if t == "directory" then
                index = index + 1
                list[index] = f
            end
        end
    end

    return list

end

return __
