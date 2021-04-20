# entrada de dado
print "Digite o primeiro número inteiro: "

# .to_i tranforma a string em um número inteiro
# Recebendo uma entrada do teclado
number1 = gets.chomp.to_i

# entrada de dado - 2
print "Digite o segundo número inteiro: "

# Recebendo uma entrada do teclado
number2 = gets.chomp.to_i

# calculo
addition = number1 + number2

# saida utilizando puts
puts "O resultado da adição entre os dois número é #{addition}"

system ("pause")