class Market
    def initialize(product, price)
        @product = product
        @price = price
    end

    def buy
        puts "You purchased the #{@product} product in price of #{@price}"
    end
end
