require "alimento/version"

class Alimentos

    attr_reader :nombre,:proteinas,:glucidos,:lipidos
    
    def initialize(nombre,proteinas,glucidos,lipidos)
        
        @nombre,@proteinas,@glucidos,@lipidos= nombre,proteinas,glucidos,lipidos

    end

    def ve
        @proteinas[0..@proteinas.size-1].to_f*4+@glucidos[0..@glucidos.size-1].to_f*4+@lipidos[0..@lipidos.size-1].to_f*9
    end 

end
