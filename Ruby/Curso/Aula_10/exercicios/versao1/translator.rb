require 'rest-client'
require 'net/http'
require 'openssl'
require 'json'


class Translator
    attr_accessor :text , :current_language , :destination_language
    KEY = "8d4f72d3c2msh2f1b198f9132c06p10ae68jsnf6832028404e"
    
    def initialize( text , current_language ,destination_language)
        @text = text
        @current_language = current_language
        @destination_language = destination_language

        url = URI("https://google-translate1.p.rapidapi.com/language/translate/v2")
        http = Net::HTTP.new(url.host, url.port)
        http.use_ssl = true
        http.verify_mode = OpenSSL::SSL::VERIFY_NONE
    end

    def translate 
        request = Net::HTTP::Post.new(url)
        response = RestClient.post('https://google-translate1.p.rapidapi.com/language/translate/v2', {params: {key: KEY , text: text , lang: "#{current_language}-#{destination_language}"}})
        json = JSON.parse(response.body)
        puts response.read_body
       
        File.open(DateTime.now.strftime('%d-%m-%Y_%H_%M.txt') , 'a') do |line|   
            line.puts( "#{text} / #{json['text'][0]} ")
        end

        return json['text'][0]
    end
end