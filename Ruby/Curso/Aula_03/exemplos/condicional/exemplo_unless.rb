product_status = 'closed'
 
# a menos que o estado do produto seja aberto a troca é possível
unless product_status == 'open'
  check_change = 'can'
# senão, a troca não é possivel
else
  check_change = 'can not'
end
 
# saida de dados com put
puts "You #{check_change} change the product"

system ("pause")
