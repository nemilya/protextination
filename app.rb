require 'sinatra'
require 'sinatra/reloader' if development?
require "sinatra/config_file"
require 'unsplash'

config_file 'config.yml'

get '/' do
  Unsplash.configure do |config|
    config.application_access_key = settings.application_access_key
    config.application_secret = settings.application_secret
    # config.application_redirect_uri = "http://localhost:4567/oauth/callback"
    config.utm_source = "protextination_client_app"
  end
  images = Unsplash::Photo.random(query: rand(2) == 1 ? "puppy" : "cat", count: 30)
  @images = images.map{|image| { src: image.urls.small, url: image.links.html } }

  erb :index
end
