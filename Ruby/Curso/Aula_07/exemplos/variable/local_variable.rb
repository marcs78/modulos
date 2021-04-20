class Bar
    def foo
        # Pode ser definida como local ou _local
        local = 'Local é acessada apenas dentro desse metodo'
        print local
    end
end

bar = Bar.new
bar.foo