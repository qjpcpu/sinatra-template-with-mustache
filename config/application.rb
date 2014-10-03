# -*- coding: utf-8 -*-
ENV['RACK_ENV']||='development'

Root=File.expand_path("../..",__FILE__)

require 'sinatra/base'
require 'mustache/sinatra'

class App < Sinatra::Base
    register Mustache::Sinatra
    set :mustache, {
        :views     => 'views/',
        :templates => 'templates/'
    }
end

# 加载数据库配置
# Add code here

# 加载models
Dir[Root+'/models/*.rb'].each{|m| require m }

# 加载views
Dir[Root+'/views/*.rb'].sort_by{|x| x.include?('layout') ? 0 : 1 }.each{|v| require v }

# 加载helpers
Dir[Root+'/helpers/*.rb'].each{|h| require h }
