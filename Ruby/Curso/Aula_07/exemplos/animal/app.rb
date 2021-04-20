require_relative 'animal'
require_relative 'dog'
require_relative 'cat'

puts '--Animal--'
animal = Animal.new
animal.jump
animal.sleep

puts '--Dog--'
dog = Dogs.new
dog.jump
dog.beating

puts '--Cat--'
cat = Cats.new
cat.sleep
cat.meowing
