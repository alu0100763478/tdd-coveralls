require "alimento/version"


class Alimentos

    include Comparable

    attr_reader :nombre,:proteinas,:glucidos,:lipidos
    
    def initialize(nombre,proteinas,glucidos,lipidos)
        
        @nombre,@proteinas,@glucidos,@lipidos= nombre,proteinas,glucidos,lipidos

    end

    def <=>(other)
        nombre.size <=> other.nombre.size
        ve <=> other.ve
    end

    def ve
        @proteinas*4+@glucidos*4+@lipidos*9
    end    
    
    def to_s
    
        "Alimento: #{@nombre}\n------------------------------\nProteínas:\s#{@proteinas}g\nGlúcidos:\s#{@glucidos}g\nLípidos:\s#{@lipidos}g"  
       
    end  

end

class AGrupos < Alimentos
    
    attr_reader :ngrupo
    
    def initialize(nombre,proteinas,glucidos,lipidos,ngrupo)
        super(nombre,proteinas,glucidos,lipidos)
        @ngrupo = ngrupo
    end
    
    def to_s
        s = "Grupo: #{@ngrupo}\n"
        s << super.to_s
        s
    end  

end
