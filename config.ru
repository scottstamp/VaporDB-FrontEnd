# config.ru
# VaporDB Frontend Mock-up
# Author: Scott Stamp <scott@hypermine.com>
# Date: 04/18/2015

require 'sinatra/base'
Dir.glob('./app/{helpers,controllers}/*.rb').each { |file| require file }
require_relative 'app/controller/application_controller'
map('/') { run ApplicationController }