#Ela pode ser guardada em uma variável para ser chamada futuramente com o método call.
first_lambda = lambda {puts "my first lambda"}
first_lambda.call

#Você pode abreviar a declaração de uma lambda da seguinte forma
first_lambda = -> {puts "my first lambda"}
first_lambda.call

#Uma lambda também pode receber parâmetros para sua execução
first_lambda = -> (names){ names.each { |name |puts name}}

names = ["John", "Marie", "Peter"]

first_lambda.call(names)
