# -*- coding: utf-8 -*-
#require 'sinatra/base'
#require 'mustache/sinatra'

class App #< Sinatra::Base
   # register Mustache::Sinatra
   # set :mustache, {
   #     :views     => 'views/',
   #     :templates => 'templates/'
   # }

    get '/' do
        @title = "sinatra template"
        mustache :index
    end
end
