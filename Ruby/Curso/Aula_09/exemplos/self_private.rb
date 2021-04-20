class Foo
    def call_private
        bar
    end

    private

    def bar
        puts "private method"
    end
end

foo = Foo.new
foo.call_private


class Foo
    def call_private(instance)
        instance.bar
    end

    protected

    def bar
        puts "private method"
    end
end

instance_1 = Foo.new
instance_2 = Foo.new

instance_1.call_private(instance_1)
instance_1.call_private(instance_2)