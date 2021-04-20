#Crie um módulo chamado Person com as classes Juridic e Physical.

module Person
    class Juridic
        def initialize(name, ein)
            @name = name
            @ein = ein
        end
        
        def add
            puts "Pessoa Júridica"
            puts "Company = #{@name}"
            puts "EIN = #{@ein}"
        end
    end

    class Physical
        def initialize(name, ssn)
            @name = name
            @ssn = ssn
        end

        def add
            puts "Pessoa Física"
            puts "Name = #{@name}"
            puts "SSN = #{@ssn}"
        end
    end
end

puts "\n"
Person::Juridic.new('The Big Company', '55-5765489').add
puts "\n"
Person::Physical.new('John Adams', '400-05-3771').add
puts "\n"




 