module Habilidades
    module Volador
        def volar
            'Estoy volandooooo!'
        end
        def aterrizar
            'Estoy cansado de volar, voy a aterrizar'
        end
    end

    module Nadador
        def nadar
            'Estoy nadando!'
        end
        def sumergir
            'glu glub glub glu'
        end
    end
    
    module Caminante
        def caminar
            'Puedo caminar!'
        end
    end
end

module Alimentacion
    module Herbivoro
        def comer
            'Puedo comer plantas!'
        end
    end
    
    module Carnivoro
        def comer
            'Puedo comer carne!'
        end
    end
end

# 1) Crear la clase Animal con un atributo nombre . Agregar un método getter para el atributo nombre
class Animal
    include Habilidades
    include Alimentacion
    attr_reader :nombre
    
    def initialize(nombre)
        @nombre = nombre
    end
end

# 2) Crear las clases Ave, Mamifero e Insecto. Ambas heredan de Animal
class Ave < Animal
end

class Mamifero < Animal  
end

class Insecto < Animal  
end

# 3) Crear las clases Pingüino, Paloma y Pato. Las tres heredan de Ave 
class Pinguino < Ave
    include Nadador
    include Caminante
    include Carnivoro
end

class Paloma < Ave
    include Volador
    include Caminante
    include Herbivoro
end

class Pato < Ave
    include Volador
    include Nadador
    include Caminante
    include Herbivoro
end

# 4) Crear las clases Perro, Gato y Vaca. Las tres heredan de Mamifero 
class Perro < Mamifero
    include Caminante
    include Herbivoro
    include Carnivoro
end

class Gato < Mamifero
    include Caminante
    include Herbivoro
    include Carnivoro
end

class Vaca < Mamifero
    include Caminante
    include Herbivoro
end

# 5) Crear las clases Mosca, Mariposa y Abeja . Las tres heredan de Insecto
class Mosca < Insecto
    include Volador
    include Caminante
    include Carnivoro
end

class Mariposa < Insecto
    include Volador
    include Herbivoro
end

class Abeja < Insecto
    include Volador
    include Caminante
    include Herbivoro
end

mamifero = Perro.new('Cachupin')
puts "#{mamifero.nombre}:"
puts " - #{mamifero.caminar}"
puts " - #{mamifero.comer}\n\n"

ave = Pato.new('Donald')
puts "#{ave.nombre}:"
puts " - #{ave.volar}"
puts " - #{ave.nadar}"
puts " - #{ave.caminar}"
puts " - #{ave.comer}\n\n"

insecto = Abeja.new('Maya')
puts "#{insecto.nombre}:"
puts " - #{insecto.volar}"
puts " - #{insecto.caminar}"
puts " - #{insecto.comer}\n\n"
