require_relative 'translator.rb'

LANGUAGE_MAP = { '1' => 'en' , '2' => 'ru' , '3'=> 'pt-br' }

puts 'Menu'
puts 'Enter a phrase:'
text = gets.chomp
puts 'Enter the current language:'
puts '1 - English'
puts '2 - Russian'
puts '3 - Portuguese'
number = gets.chomp
current_language = LANGUAGE_MAP[number]
puts
puts 'Enter the language you want to translate:'
puts '1 - English'
puts '2 - Russian'
puts '3 - Portuguese'
number2 = gets.chomp
destination_language = LANGUAGE_MAP[number2]

translation = Translator.new(text , current_language ,destination_language)