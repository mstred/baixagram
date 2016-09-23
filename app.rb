require 'sinatra'
require 'open-uri'
require 'nokogiri'
require 'json'

not_found do erb :fof end

get '/' do erb :index end

get '/images' do
  urls = params['urls']

  urls = urls.map do |url|
    insta = Nokogiri::HTML(open(url, {ssl_verify_mode: 0}))

    insta.css('meta[property="og:image"]').attr('content').value
  end

	urls.to_json
end
