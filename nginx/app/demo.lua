
local _new_app = require "app.comm.new_app"
local      app = _new_app() -- 创建app
---------------------------------------------------

app.name       = "demo"
app.title      = "演示项目"
app.ver        = "v22.10.24"

-- 数据库的连接配置（db库）------------------------
app.db_config  = {
    host       = "127.0.0.1"    -- 服务器IP
,   port       = 3306           -- 服务器端口
,   user       = "root"         -- 登录账号
,   password   = "sumdoo"        -- 登录密码
,   database   = "demo_db"      -- 默认数据库
}

--- 帮助文档 --------------------------------------
app.help_html  = [[
]]

---------------------------------------------------
return app
