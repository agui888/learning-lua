--
-- User: aaron
-- Date: 4/5/16
-- Time: 20:58
--

local M = {}

local redis = {}
redis['host'] = '127.0.0.1'
redis['port'] = 6379
redis['password'] = '****'
redis['prefix'] = 'url_service:'

local err_msg = {}
err_msg[41] = 'URL is not matched'
err_msg[42] = 'URL is invalid'
err_msg[51] = 'Redis is out of service'
err_msg[52] = 'Getting data error'

local default = {}
default['url'] = 'http://baidu.com'

M['redis'] = redis
M['err_msg'] = err_msg
M['default'] = default

return M
