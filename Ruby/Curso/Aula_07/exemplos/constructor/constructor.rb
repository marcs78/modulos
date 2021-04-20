class Person
    def initialize(name, age)
        @name = name
        @age = age
    end

    def check
        puts "Instance of the class started with the values:"
        puts "Name = #{@name}"
        puts "Age = #{@age}"
    end
end

#person = Person.new('Jacob', 20)
#person.check

Person.new('John', '22').check