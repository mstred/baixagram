require 'sinatra'
require 'nokogiri'
require 'open-uri'

get '/' do erb :index end

not_found do erb :fof end
