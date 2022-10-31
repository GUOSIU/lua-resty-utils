
local __ = {}

-- 错误日志输出
__.err_log = function(err, ...)

    ngx.status = 500
    ngx.header["content-type"] = "text/plain"

    ngx.say "------ 出 错 啦 ------"

    if type(err)=="string" then
        ngx.say(err, ...)
    else
        local log = debug.traceback(err)
        ngx.log(ngx.ERR, "\n------ 出 错 啦 ------\n\n", log, "\n\n")
        ngx.say(log)
    end

    ngx.exit(500)
end

return __
