# entrada de dado
print "Digite o primeiro número inteiro: "

# .to_i tranforma a string em um número inteiro
# Recebendo uma entrada do teclado
number1 = gets.chomp.to_f

# entrada de dado - 2
print "Digite o segundo número inteiro: "

# Recebendo uma entrada do teclado
number2 = gets.chomp.to_f

# calculo
addition = number1 + number2
subtraction = number1 - number2
multiplication = number1 * number2
division = number1 / number2
exponent = number1**number2
porcent = number1 % number2

# saida utilizando puts
puts "O resultado da adição entre os dois número é #{addition}"
puts "O resultado da subtração entre os dois número é #{subtraction}"
puts "O resultado da multiplicação entre os dois número é #{multiplication}"
puts "O resultado da divisão entre os dois número é #{division}"
puts "O resultado do expoente entre os dois número é #{exponent}"
puts "O resultado da porcentagem entre os dois número é #{porcent}"


system ("pause")