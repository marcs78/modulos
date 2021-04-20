# Missão 1 - Crie um programa que possua um método que resolva a potência dado um número base e seu expoente. 
# Estes dois valores devem ser informados pelo usuário.

def calculo(base, expoente)
    base**expoente
end

print 'Informe o número base:'
base = gets.chomp.to_i

print 'Informe o expoente:'
expoente = gets.chomp.to_i

result = calculo(base, expoente)

puts "A potencia é #{result}"