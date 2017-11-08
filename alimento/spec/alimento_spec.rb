require 'spec_helper'

RSpec.describe Alimentos do

    before :all do
        @huevoFrito= Alimentos.new('Huevo frito','14.1g','0.0g','19.5g')
        @leche= Alimentos.new('Leche vaca','3.3g','4.8g','3.2g')
        @yogurt= Alimentos.new('Yogurt','3.8g','4.9g','3.8g')
        @cerdo= Alimentos.new('Cerdo','21.5g','0.0g','6.3g')
        @ternera= Alimentos.new('Ternera','21.1g','0.0g','3.1g')
        @pollo= Alimentos.new('Pollo','20.6g','0.0g','5.6g')
        @bacalo= Alimentos.new('Bacalao','17.7g','0.0g','0.4g')
        @atun= Alimentos.new('Atún','21.5g','0.0g','15.5g')
        @salmon= Alimentos.new('Salmón','19.9g','0.0g','13.6g')
        @aceite= Alimentos.new('Aceite de oliva','0.0g','0.2g','99.6g')
        @chocolate= Alimentos.new('Chocolate','5.3g','47.0g','30.0g')
        @azucar= Alimentos.new('Azúcar', '0.0g','99.8g','0.0g')
        @arroz= Alimentos.new('Arroz','6.8g','77.7g','0.6g')
        @lentejas= Alimentos.new('Lentejas','23.5g','52.0g','1.4g')
        @papas= Alimentos.new('Papas','2.0g','15.4g','0.1g')
        @tomate= Alimentos.new('Tomate', '1.0g','3.5g','0.2g')
        @cebolla= Alimentos.new('Cebolla','1.3g','5.8g','0.3g')
        @manzana= Alimentos.new('Manzana','0.3g','12.4g','0.4g')
        @platanos= Alimentos.new('Plátano','1.2g','21.4g','0.2g')   

        @nodo1 = Node.new(@huevoFrito)
        @nodo2 = Node.new(@leche)
        @nodo3 = Node.new(@yogurt)
        @nodo4 = Node.new(@cerdo)
        @nodo5 = Node.new(@ternera)
        @nodo6 = Node.new(@pollo)
        @nodo7 = Node.new(@bacalo)
        @nodo8 = Node.new(@atun)          
        @nodo9 = Node.new(@salmon)
        @nodo10 = Node.new(@aceite)
        @nodo11 = Node.new(@chocolate)
        @nodo12 = Node.new(@azucar)
        @nodo13 = Node.new(@arroz)
        @nodo14 = Node.new(@lentejas)
        @nodo15 = Node.new(@papas)
        @nodo16 = Node.new(@tomate)
        @nodo17 = Node.new(@cebolla)
        @nodo18 = Node.new(@manzana)          
        @nodo19 = Node.new(@platanos)  

        @lista = Lista.new
	
    end

    describe "Pruebas almacenamiento de las variables: " do
        it "Se almacena correctamente el nombre" do
          expect(@yogurt.nombre).to eq('Yogurt') 
          expect(@leche.nombre).to eq('Leche vaca')
	end
        it "Se almacena correctamente la cantidad de proteínas" do
          expect(@platanos.proteinas).to eq('1.2g') 
        end  
        it "Se almacena correctamente la cantidad de glúcidos" do
          expect(@manzana.glucidos).to eq('12.4g') 
        end  
        it "Se almacena correctamente la cantidad de lípidos" do
          expect(@cebolla.lipidos).to eq('0.3g') 
        end
    end

    describe "Prueba del método ve: " do
        it "Se muestra el valor energético del alimento " do
          expect(@tomate.ve).to eq(19.8) 
	  expect(@chocolate.ve).to eq(479.2)
	  expect(@arroz.ve).to eq(343.4)
	  expect(@salmon.ve).to eq(202)	
        end
    end 

    describe "Prueba del alimento formateado: " do
        it "Se muestra el alimento formateado " do
          expect(@papas.to_s).to eq("Alimento:\sPapas\n------------------------------\nProteínas:\s2.0g\nGlúcidos:\s15.4g\nLípidos:\s0.1g") 
        end
    end 

    describe "Prueba de nodos" do
	it "Debe de existir un nodo con sus datos, siguiente y previo" do
	  expect(@nodo1.value.nombre).to eq("Huevo frito")
          @nodo1.next.length.should_not be 0
          @nodo1.prev.length.should_not be 0
	end	
    end

    describe "Prueba de lista" do
	it "Debe existir una Lista con su cabeza y su cola" do
	  @lista.cabeza.length.should_not be 0
      	  @lista.cola.length.should_not be 0
	end
    end
	
   
end



