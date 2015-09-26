require 'nokogiri'
require 'open-uri'

# baixagram

begin
  ARGV.each do|insta_url|
    insta = Nokogiri::HTML(open(insta_url))
    # instapp:owner_user_id
    img_url = insta.css('meta[property="og:image"]').attr('content').value
    fname = /([^\/]+$)/.match(img_url).to_s
    puts "\nCarregando foto da URL: #{img_url}"
    open(img_url) do |img|
      File.open(fname, 'w') do |file|
        file.puts img.read
        file.close
      end
    end
    puts "\n...foto #{fname} baixada com sucesso"
  end
rescue
  puts "\nAlgo muito estranho tá acontecendo aqui... fale com o doido do lado"
end
