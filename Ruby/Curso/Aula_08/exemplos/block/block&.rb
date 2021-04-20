def foo(name, &block)
    @name = name
    block.call
end

foo('Leonard') {puts "Hello #{@name} "}