#calculadora com opções de multiplicar, dividir, adicionar ou subtrair dois números.

result = ''
loop do
    puts result
    puts 'Selecione qual calculo deseja realizar'
    puts '1 - Adição'
    puts '2 - Subtração'
    puts '3 - Divisão'
    puts '4 - Multiplicação'
    puts '0 - Sair'
    print 'Opção: '

    option = gets.chomp.to_i
 
    if option == 1
        print 'Informe o primeiro número: '
        number1 = gets.chomp.to_i
        print 'Informe o segundo número: '
        number2 = gets.chomp.to_i
        adicao = number1 + number2
        result = "O resultado é #{adicao}"
    elsif option == 2
        print 'Informe o primeiro número: '
        number1 = gets.chomp.to_i
        print 'Informe o segundo número: '
        number2 = gets.chomp.to_i
        subtracao = number1 - number2
        result = "O resultado é #{subtracao}"
    elsif option == 3
        print 'Informe o primeiro número: '
        number1 = gets.chomp.to_i
        print 'Informe o segundo número: '
        number2 = gets.chomp.to_i
        divisao = number1 / number2
        result = "O resultado é #{divisao}"
    elsif option == 4
        print 'Informe o primeiro número: '
        number1 = gets.chomp.to_i
        print 'Informe o segundo número: '
        number2 = gets.chomp.to_i
        multiplicacao = number1 * number2
        result = "O resultado é #{multiplicacao}"
    elsif option == 0
        break if option == 0
    else
        result = 'Opção inválida'
    end 
    # Comando para limpar o console
    system ("clear")
end

system ("pause")