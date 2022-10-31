
local __ = { ver = "22.10.31" }

local UTILS = {
    tb      = require "resty.utils.tb",         -- table
    dt      = require "resty.utils.dt",         -- 时间库
    str     = require "resty.utils.str",        -- 字符串
    xml     = require "resty.utils.xml",        -- xml库
    fs      = require "resty.utils.fs",         -- 文件、目录 filesystem
    cache   = require "resty.utils.cache",      -- mlcache缓存库
    locker  = require "resty.utils.locker",     -- 锁
    net     = require "resty.utils.net",        -- http 请求
}

for key, val in pairs(UTILS) do
    __[key] = val
end

-- 将常用的方法前置

-- 复制对象
__.copy = __.tb.copy

-- 深度克隆对象
__.clone = __.tb.clone

-- 合并数据
__.join = __.tb.join

-- 将指定的key列表的值列表合并
__.concat_by_keys = __.tb.concat_by_keys

-- 将列表转换成group
__.list_to_group = __.tb.list_to_group

-- 将列表转换成dict
__.list_to_dict = __.tb.list_to_dict

-- 生成待更新数据
__.gen_update = __.tb.gen_update

-- 清除值为空字符串的参数
__.strip_keys = __.tb.strip_keys

-- 分割字符串
__.split = __.str.split

-- 清除字符串左右空格
__.strip = __.str.strip

-- 清除名称中的空字符串
__.strip_name = __.str.strip_name

return __
