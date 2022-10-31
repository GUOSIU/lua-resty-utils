
local _sub      = string.sub
local _find     = string.find
local _len      = string.len

local __ = {}

__.gsub = string.gsub
__.sub  = string.sub

__.trim = function (s)

    if type(s) ~= "string" or s == "" then
        return ""
    end

    return (s:gsub("^%s*(.-)%s*$", "%1"))

end

__.ltrim = function (s)

    if type(s) ~= "string" or s == "" then
        return ""
    end

    return (s:gsub("^%s+", ""))

end

__.rtrim = function (s)

    if type(s) ~= "string" or s == "" then
        return ""
    end

    return (s:gsub("%s+$", ""))

end

__.strip = function (s)

    if type(s) ~= "string" or s == "" then
        return nil
    end

    local res = (s:gsub("%s", ""))
    if res == "" then return nil end

    return res

end

-- 分割字符串
__.split = function(str, sep)

    local arr   = {}
    if type(str) ~= "string" or type(sep) ~= "string" then
        return arr
    end

    local i     = 1
    local index = 1
    local len   = _len(sep)

    while true do
        local j = _find(str, sep, i)
        if not j then
            local temp = _sub(str, i, _len(str))
            if _len(temp)>0 then arr[index] = temp end
            break
        end
        local temp = _sub(str, i, j - 1)
            if _len(temp) >0 then
                arr[index] = temp
                index = index + 1
            end
        i = j + len
    end

    return arr

end

-- 清除名称中的空字符串
__.strip_name = function(name)

    name = __.strip(name)
    if not name then return nil end

    name = __.gsub(name, "%(", "（")
    name = __.gsub(name, "%)", "）")

    return name

end

return __
