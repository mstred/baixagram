require 'sinatra'
require 'open-uri'
require 'nokogiri'
require 'json'

not_found do erb :fof end

get '/' do erb :index end

get '/images' do
  res = params
	res.to_json
end
