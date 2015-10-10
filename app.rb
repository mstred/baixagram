require 'sinatra'
require 'nokogiri'
require 'open-uri'

not_found do erb :fof end

get '/' do erb :index end

get '/images' do |arg|
  
end
