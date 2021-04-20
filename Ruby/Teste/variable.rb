### DECLARANDO UMA VARIAVEL ###

first_name = "Marcelo"
last_name = "Cordeiro"

first_name, last_name = last_name, first_name

puts "#{first_name} #{last_name}"

first_name, last_name = "Marcelo", "Cordeiro"
puts "#{first_name} #{last_name}"

### CONDICIONAIS ###

money = 600
tax = 0

if money > 10000
  tax = 100
elsif money <= 10000 and money > 500
  tax = 10
else
  tax = 1
end

dinheiro = 600

imposto = if dinheiro > 10_000
    100
  elsif dinheiro <= 10_000 and dinheiro > 500
    10
  else
    1
  end

dinheiro = 600
imposto = case dinheiro
  when (0..500) then 1
  when (500..10_000) then 10
  else 100
  end

def multiplo_de(x)
  Proc.new { |produto| produto.modulo(x).zero? }
end

puts ("\n")

puts "Informe o Número: "
numero = gets.chomp.to_i
case numero
when multiplo_de(3) then puts "Multiplo de 3"
when multiplo_de(5) then puts "Multiplo de 5"
when multiplo_de(7) then puts "Multiplo de 7"
end
