require "spec_helper.rb"
RSpec.describe Granja do 
    describe Ganadera do
    include Funciones

        #nombre,edad,sexo,peso,raza,aprovechamiento,alimentacion
        Vaca=Ganado.new("Vaca",890,"Hembra",720000,"bovino","carne, piel, leche","herbívoro")
        Cabra=Ganado.new("Cabra",350,"Macho",95000,"caprino","carne, piel, leche","herbívoro")
        #@oveja=Ganado.new("Oveja",2,"Hembra",80000,"ovino","carne, piel, leche","herbívoro")
        
        before :each do
            @granja = Ganadera.new(1111,"Granja el sol","ganadera","Granja nueva","bovino","leche",250,500,1000,"almacena", [Vaca,Cabra]) 
        end

        context "Herencia de la clase Ganadera" do
            
            it "Se espera que una instancia de la clase Ganadera sea una granja Ganadera" do
                expect((@granja).is_a? Ganadera).to eq(true)
            end

            it "Se espera que una instancia de la clase Ganadera sea un Dato" do
                expect((@granja).is_a? Datos).to eq(true)
            end

            it "Se espera que una instancia de la clase Ganadera sea un Object" do
                expect((@granja).is_a? Object).to eq(true)
            end

            it "Se espera que una instancia de la clase Ganadera sea un BasicObject" do
                expect((@granja).is_a? BasicObject).to eq(true)
            end
            
            it "Se espera que una instancia de la clase Ganadera sea un Animal" do
                expect((@granja).is_a? Animal).not_to eq(true)
            end

            it "Se espera que una instancia de la clase Ganadera sea Ganado" do
                expect((@granja).is_a? Ganado).not_to eq(true)
            end
        end

        context "Atributos de la clase Ganadera" do

            it "Tiene una clase para representar los datos de la granja" do
                expect(@granja).not_to eq(nil)
            end

            it "Tiene un atributo para el tipo de animales (bovino, ovino, caprino, porcino)" do
                expect(@granja.tipoganado).to eq("bovino")
            end

            it "Tiene un atributo para el destino de los animales (leche, sacrificio)" do
                expect(@granja.destino).to eq("leche")
            end

            it "Tiene un atributo para el número de animales de la granja" do
                expect(@granja.numanimales).to eq(250)
            end
            
            it "Tiene un atributo para el precio unitario de los animales" do
                expect(@granja.precio).to eq(500)
            end

            it "Tiene un atributo para el precio de venta unitario de los animales" do
                expect(@granja.precioventa).to eq(1000)
            end

            it "Tiene un atributo para almacenar el ganado de la granja" do
                expect(@granja.almacen).to eq("almacena")
            end

            it "Se obtiene una cadena con la información de la granja Ganadera correctamente formateada" do
                expect(@granja.to_s).to eq("ID: 1111\nNombre: Granja el sol\nTipo: ganadera\nDescripción: Granja nueva\nTipo de ganado: bovino\nDestino: leche\nNumero Animales: 250\nPrecio del animal: 500\nPrecio de venta: 1000\nAlmacen: almacena")
                #"ID: #{@id}\nNombre: #{@nombre}\nTipo: #{@tipo}\nDescripción: #{@descripcion}\nTipo de ganado: #{@tipoganado}\nDestino: #{@destino}\nNumero Animales: #{@numanimales}\nPrecio del animal: #{@precio}\nPrecio de venta: #{@precioventa}\nAlmacen: #{@almacen}" 
              end
        end

        context "Pruebas en la Granja" do
            
            it "Atributo para saber si el ganado está en camp o abierto o en jaulas" do
                expect(Funciones.set_condicionesdevida("campo abierto")).to eq("campo abierto")
            end

            it "Atributo para saber los antibioticos que recibee ganado" do
                expect(Funciones.set_cuidados("Baño", 150, [Vaca,Cabra])).to eq(["Baño", 150])
            end

            it "Las granjas Ganaderas han de ser Enumerables" do
                expect((@granja).is_a? Enumerable).to eq(true)
            end


        end
    end
end