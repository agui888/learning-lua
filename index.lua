--
-- User: aaron
-- Date: 4/5/16
-- Time: 18:04
--
ngx.header.content_type = 'text/html'

local config = require 'config'
local functions = require 'functions'

local short_string = ngx.re.sub(ngx.var.uri, "^/u/(.*)", "$1", "o")
--ngx.say(short_string)
local long_url, err = functions.get_long_url(short_string)

if err then
    functions.show_error(err)
    return
end

ngx.redirect(long_url)