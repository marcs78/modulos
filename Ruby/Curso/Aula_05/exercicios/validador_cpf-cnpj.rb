# Missão 2 - Siga a documentação da gem cpf_cnpj para criar um programa que recebe como entrada um número de cpf 
# e em um método verifique se este número é válido.
require 'cpf_cnpj'


def valida(cpf)
    return CPF.valid?(cpf)
end

print 'Informe o CPF:'
cpf = gets.chomp

if valida(cpf)
    puts "CPF #{cpf} é valido"
else
    puts "CPF #{cpf} é inválido"
end