require 'sinatra'
require 'nokogiri'
require 'open-uri'

get '/' do
    erb :index
end

# baixagram
=begin
begin
    ARGV.each do|insta_url|
        insta = Nokogiri::HTML(open(insta_url))
        # instapp:owner_user_id
        img_url = insta.css('meta[property="og:image"]').attr('content').value
        fname = img_url[49..img_url.length]
        puts "\nCarregando foto da URL: #{img_url}"
        open(img_url) { |fi|
            File.open(fname, "wb") do |file|
                file.puts fi.read
            end
        }
        puts "\n...foto #{fname} baixada com sucesso"
    end
rescue
   puts "\nAlgo muito estranho tá acontecendo aqui... fale com o doido do lado" 
end
=end