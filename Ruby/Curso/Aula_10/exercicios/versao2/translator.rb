require 'uri'
require 'net/http'
require 'openssl'
require 'json'

class Translator
    attr_accessor :text , :current_language , :destination_language
       
    def initialize( text , current_language ,destination_language)
        @text = text
        @current_language = current_language
        @destination_language = destination_language
        url = URI("https://google-translate1.p.rapidapi.com/language/translate/v2")
        
        http = Net::HTTP.new(url.host, url.port)
        http.use_ssl = true
        http.verify_mode = OpenSSL::SSL::VERIFY_NONE

        request = Net::HTTP::Post.new(url)
        request["content-type"] = 'application/x-www-form-urlencoded'
        request["accept-encoding"] = 'application/gzip'
        request["x-rapidapi-key"] = '8d4f72d3c2msh2f1b198f9132c06p10ae68jsnf6832028404e'
        request["x-rapidapi-host"] = 'google-translate1.p.rapidapi.com'
        request.body = "q=#{@text}&source=#{current_language}&target=#{destination_language}"
        response = http.request(request)
        puts response.read_body

        translated_text = JSON.parse(response.body)["data"]["translations"][0]["translatedText"]
   
        File.open(Time.now.strftime('%d-%m-%Y_%H.%M')+".txt" , 'a')do |line|   
            line.puts( "#{text} / #{translated_text} ")
        end
    end
end
