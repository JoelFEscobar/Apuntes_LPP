require "spec_helper.rb"
RSpec.describe Granja do
    #Pruebas del módulo funciones
    describe Funciones do

        #nombre,edad,sexo,peso,raza,aprovechamiento,alimentacion
        Vaca=Ganado.new("Vaca",525,"Hembra",720000,"bovino","carne, piel, leche","herbívoro")
        Cabra=Ganado.new("Cabra",350,"Macho",95000,"caprino","carne, piel, leche","herbívoro")
        Cerdo=Ganado.new("Cabra",730,"Macho",150000,"porcino","carne, piel, leche","herbívoro")
        Granja_prueba = Ganadera.new(1111,"Granja el sol","ganadera","Granja nueva","bovino","leche",250,500,1000,"almacena", [Vaca,Cabra])

        Granja_nueva = Ganadera.new(4444,"Granja El Paraiso","ganadera","Granja de vacas","bovino","leche",300,650,1050,"almacena", [Vaca,Vaca])
        Granja_nueva2 = Ganadera.new(2222,"Granja quesos","ganadera","Granja de cabras","caprino","leche","500",500,1000,"almacena", [Vaca,Cerdo,Cabra])
        Granja_nueva3 = Ganadera.new(3333,"Granja Río Azul","ganadera","Criadero de cerdos","porcino","sacrificio",250,500,1000,"almacena", [Vaca,Cabra,Cerdo])

        Coperativa = [Granja_nueva,Granja_nueva2,Granja_nueva3]

        #Prueba de los componentes        
        context "Componentes del módulo Funcion" do

            it "Existe un módulo para almacenar las funcionalidades" do
                expect(Funciones).not_to eq(nil)
            end

            it "Existe una constante para representar las condiciones de vida (campo abierto, jaulas)" do
                expect(Funciones.set_condicionesdevida("campo abierto")).to eq("campo abierto")
            end

            it "Existe una constante para representar las condiciones de vida (campo abierto, jaulas)" do
                expect(Funciones.set_condicionesdevida("jaulas")).to eq("jaulas")
            end

            it "Existe un procedimiento para establecer los cuidados de los animales" do
                expect(Funciones.set_cuidados("Baño", 150, [Vaca,Cabra])).to eq(["Baño", 150])
            end

        end

        #Expectativas de la herencia
        context "Herencia del módulo Funcion" do
            it "Se espera que sea un objeto de la clase Module" do
                expect(Funciones.is_a? Module).to eq(true)
            end

            it "Se espera que sea un objeto (Object)" do
                expect(Funciones.is_a? Object).to eq(true)
            end

            it "Se espera que sea un objeto básico (BasicObject)" do
                expect(Funciones.is_a? BasicObject).to eq(true)
            end

            it "No se espera que sea una instancia de la clase que representa una cadena (String)" do
                expect(Funciones.is_a? String).to eq(false)
            end

            it "No se espera que sea una instancia de la clase que representa un número (Numeric)" do
                expect(Funciones.is_a? Numeric).to eq(false)
            end
            

        end


        context "Calculo del bienestar animal" do

            it "Se espera comparar el bienestar de los animales" do
                expect(Funciones.set_bienestar(Granja_prueba,"jaulas")).to eq(29) 
                expect(Funciones.set_bienestar(Granja_nueva, "jaulas")).to eq(50)
                expect(Funciones.set_bienestar(Granja_nueva2, "jaulas")).to eq(22)


            end
            
            it "Se espera calcular el beneficio neto de una granja" do
                expect(Funciones.set_beneficio(Granja_prueba)).to eq(100)
                #expect(Funciones.set_beneficio(Granja_p)).to eq(100)
            end

            it "Se espera calcular el indicador de productividad" do
                expect(Funciones.set_productividad(Funciones.set_beneficio(Granja_prueba),Funciones.set_bienestar(Granja_prueba,"jaulas"))).to eq(2)
                expect(Funciones.set_productividad(Funciones.set_beneficio(Granja_prueba),Funciones.set_bienestar(Granja_prueba,"campo abierto"))).to eq(2)
            
            end

            it "Se espera calcular la granja con máximo indicador de productividad de una coperativa" do
                max = 0
                mejor = Granja_nueva
                Coperativa.each do |element|
                    indice = Funciones.set_productividad(Funciones.set_beneficio(element),Funciones.set_bienestar(element))
                    if(indice > max)
                        max = indice
                        mejor = element
                    end 
                end
                expect(mejor).to eq(Granja_nueva)
            end

        end
    end
end