module ReverseWorld
    def self.puts text
        print text.reverse.to_s
    end
end

ReverseWorld::puts 'the result is'
puts "\n"
puts 'the result is'