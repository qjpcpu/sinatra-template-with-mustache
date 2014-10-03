require 'bundler'
Bundler.require

# 加载环境
require './config/application'

# 启动App
require './app'
run App.new
