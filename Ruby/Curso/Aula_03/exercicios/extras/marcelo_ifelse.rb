# saida de dado
print 'Que dia é hoje: '

# Recebendo uma entrada do teclado
day = gets.chomp

# se o dia informado for domingo então o almoço será especial, senão o almoço será normal.
if day == 'Domingo'
    lunch = 'Especial'
else
    lunch = 'Normal'
end

# saida utilizando puts
# use códigos ruby dentro de uma string com #{code}

puts "O Almoço hoje é #{lunch}!"

system ("pause")