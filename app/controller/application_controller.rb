# application_controller.rb
# VaporDB Frontend Mock-up
# Author: Scott Stamp <scott@hypermine.com>
# Date: 04/18/2015

class ApplicationController < Sinatra::Base
  helpers ApplicationHelper

  set :views, File.expand_path('../../views', __FILE__)

  configure :production, :development do
    enable :logging
  end

  get '/' do
    erb :index
  end
end