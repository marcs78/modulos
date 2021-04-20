def foo
    if block_given?
        #call the block
        yield
    else
        puts "Without block type parameter"
    end
end

foo
foo {puts "With block type parameter"}