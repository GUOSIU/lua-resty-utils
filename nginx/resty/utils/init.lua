
local __ = {}

local UTILS = {
    tb      = require "resty.utils.tb",         -- table
    dt      = require "resty.utils.dt",         -- 时间库
    str     = require "resty.utils.str",        -- 字符串
    xml     = require "resty.utils.xml",        -- xml库
    fs      = require "resty.utils.fs",         -- 文件、目录 filesystem
    path    = require "resty.utils.path",       -- 目录库
    cache   = require "resty.utils.cache",      -- mlcache缓存库
    locker  = require "resty.utils.locker",     -- 锁
    net     = require "resty.utils.net",        -- http 请求
    other   = require "resty.utils.other",      -- 其它方法
}

for key, val in pairs(UTILS) do
    __[key] = val
end

-- 将常用的方法前置

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

-- 错误日志输出
__.err_log = __.other.err_log

return __
