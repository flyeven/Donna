require 'sinatra/base'
require 'sinatra/config_file'
require 'sinatra/activerecord'

require_relative 'helpers/init'
require_relative 'models/init'
require_relative 'routes/init'

class Donna < Sinatra::Base
  set :app_file, __FILE__

  register Sinatra::ConfigFile
  register Sinatra::ActiveRecordExtension

  helpers Sinatra::HaltHelper
  helpers Sinatra::RouteHelper

  config_file 'config/local_settings.yml'
end
