# -*- coding: utf-8 -*-

class App < MustacheApp
    get '/' do
        @title = "sinatra template"
        mustache :index
    end
end
