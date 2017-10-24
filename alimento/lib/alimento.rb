require "alimento/version"

class Alimentos

    attr_reader :nombre,:proteinas,:glucidos
    
    def initialize(nombre,proteinas,glucidos,lipidos)
        
        @nombre,@proteinas,@glucidos,@lipidos= nombre,proteinas,glucidos,lipidos

    end
end
