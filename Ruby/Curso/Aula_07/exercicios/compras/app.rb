require_relative 'product'
require_relative 'market'

product = Product.new
product.name = 'Orange'
product.price = '$0.50'

Market.new(product.name, product.price).buy