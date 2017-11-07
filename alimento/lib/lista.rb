Node = Struct.new(:value, :next, :prev)

class Lista
    
    attr_reader :cabeza,:cola
    
    def initialize()
        @cabeza,@cola = nil
    end    

    def push(other)
        if @cabeza == nil
            @cabeza = other
            other.next = @cabeza
            other.prev = @cabeza
            @cola = other
        end    
        
        if @cabeza != nil
            other.next = @cabeza
            other.prev = @cola
            @cola.next = other
            @cabeza.prev = other
            @cola = other
        end
    end
    
    def pop_first()
        @cabeza = @cabeza.next
    end 
    
    def pop_last()
       @cola = @cola.prev 
    end    
    
end  
