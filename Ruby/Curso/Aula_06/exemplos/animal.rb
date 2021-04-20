class Animal
    def pular
        puts 'Toing! tóim" bôim! póim!'
    end

    def dormir
        puts 'ZZzzZzz'
    end
end

class Cachorro < Animal
    def latir
        puts 'Au Au'
    end
end

cachorro = Cachorro.new
cachorro.pular
cachorro.dormir
cachorro.latir