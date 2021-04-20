# Classe

class HelloWorld

  # Construtor recebendo 'your_name' como parâmetro.
  def initialize(your_name)

    # Armazena o parêmetro em uma variável de instância.
    @your_name = your_name
  end

  # Método que imprime uma mensagem de boas vindas seguida de um nome
  def say_hello
    puts "Welcome to Ruby, #{@your_name}!"
  end
end

# Instancia a classe enviando meu nome como argumento para o construtor;
hello_world = HelloWorld.new "Marcelo Cordeiro"

# Invoca o método say hello, o qual imprime a mensagem.
hello_world.say_hello
