require "alimento/version"

class Alimentos

    attr_reader :nombre
    
    def initialize(nombre,proteinas,glucidos,lipidos)
        
        @nombre,@proteinas,@glucidos,@lipidos= nombre,proteinas,glucidos,lipidos

    end
end
