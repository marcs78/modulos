# variavel
day = 'Holiday'

# Se o dia é Domingo, então o almoço é especial
if day == 'Sunday'
  lunch = 'special'
# Senão e se o dia é feriado, então o almoço é tarde
elsif day == 'Holiday'
  lunch = 'later'
# Senão, o almoço é normal
else
  lunch = 'normal'  
end

# saida utilizando puts
puts "Lunch is #{lunch} today"

system ("pause")

