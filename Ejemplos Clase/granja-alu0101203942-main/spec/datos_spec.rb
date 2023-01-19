require "spec_helper"
RSpec.describe Granja do
    #Pruebas de la clase datos
    describe Datos do

        #Deinir un objeto granja
        before :all do
            @granja_nueva = Datos.new(1111,"Granja El Paraiso","ganadera","Granja de vacas")
            @granja_nueva2 = Datos.new(2222,"Granja El Sol","ganadera","Granja de conejos")
            @granja_nueva3 = Datos.new(3333,"Granja Río Azul","ganadera","Criadero de cerdos")
        
        end

        #Expectativas de los atributos de la clase datos
        context "Atributos de la clase Datos" do

            it "Tiene una clase para almacenar los datos de la granja" do

                expect(@granja_nueva).not_to eq(nil)
                expect(@granja_nueva2).not_to eq(nil)
                expect(@granja_nueva3).not_to eq(nil)
              end
          
              it "Tiene un atributo para la identificación de la granja y se puede acceder a ese atributo" do
          
                expect((@granja_nueva).id).to eq(1111)
                expect((@granja_nueva2).id).to eq(2222)
                expect((@granja_nueva3).id).to eq(3333)
          
              end
          
              it "Tiene un atributo para el nombre de la granja y se puede acceder a ese atributo" do
          
                expect((@granja_nueva).nombre).to eq("Granja El Paraiso")
                expect((@granja_nueva2).nombre).to eq("Granja El Sol")
                expect((@granja_nueva3).nombre).to eq("Granja Río Azul")
          
              end
          
              it "Tiene un atributo para el tipo de granja y se puede acceder a ese atributo" do
          
                expect((@granja_nueva).tipo).to eq("ganadera")
                expect((@granja_nueva2).tipo).to eq("ganadera")
                expect((@granja_nueva3).tipo).to eq("ganadera")
          
              end
          
              it "Tiene un atributo para la descripción de la granja y se puede acceder a ese atributo" do
          
                expect((@granja_nueva).descripcion).to eq("Granja de vacas")
                expect((@granja_nueva2).descripcion).to eq("Granja de conejos")
                expect((@granja_nueva3).descripcion).to eq("Criadero de cerdos")
          
              end
          
              it "Tiene definido el to_s para los datos de la granja" do
                expect((@granja_nueva).to_s).to eq("La Granja El Paraiso es una granja del tipo ganadera con numero identificador 1111 que se dedica a Granja de vacas")
              end

        end


        #Expectativa para la herencia de la clase datos
        context "Herencia de la clase Datos" do

            it "Se espera que una instancia de la clase Datos sea un Datos" do 
                expect((@granja_nueva).is_a? Datos).to eq(true)
            end

            it "Se espera que una instancia de la clase Datos sea un objeto (Object)" do 
                expect((@granja_nueva).is_a? Object).to eq(true)
            end

            it "Se espera que una instancia de la clase Datos sea un objeto básico (BasicObject)" do 
                expect((@granja_nueva).is_a? BasicObject).to eq(true)
            end

            it "No se espera que una instancia de la clase Datos sea una cadena (String)" do 
                expect((@granja_nueva).is_a? String).to eq(false)
            end

            it "No se espera que una instancia de la clase Datos sea un número (Numeric)" do 
                expect((@granja_nueva).is_a? Numeric).to eq(false)
            end

        end


    end
end