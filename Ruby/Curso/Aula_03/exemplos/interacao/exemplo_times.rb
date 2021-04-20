# dessa forma será exibido a frase “Estou aprendendo times” 2 vezes
2.times do
    puts 'Estou aprendendo times!'
end

#dessa forma será exibidoum índice do array name por 3 vezes
names = ['João', 'Alfredo', 'Juca']
# igual ao array o times começa com o indice 0

3.times do |index|
    puts names [index]
end

system ("pause")