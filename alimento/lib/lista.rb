Node = Struct.new(:value, :next, :prev)


class Lista
    
    attr_reader :cabeza,:cola
    
    def initialize()
        @cabeza,@cola = nil
    end
    
end
