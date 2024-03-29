# If no env, set to dev
if not process.env?.application_env
	process.env.application_env = "local"

configs = {
	name: "WD Boilerplate"
}


switch process.env.application_env
	when "local"
		configs.mongoURL = "mongodb://localhost/wdbootstrapdb"
		configs.host = "localhost"
		configs.port = "3333"
		configs.url = "http://localhost:3333"
		configs.cache = false

module.exports = exports = configs
