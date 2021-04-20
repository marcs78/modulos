class String
    def iniciais
      ini = String.new
  
      for nome in self.split do
        ini += nome[0]
      end
  
      return ini
    end
  end
  
  puts "Marcelo Cesar Cordeiro Filho".iniciais # Imprime MCCF

  system ("pause")
