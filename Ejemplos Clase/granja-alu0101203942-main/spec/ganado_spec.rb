require "spec_helper.rb"
RSpec.describe Granja do
    describe Ganado do
        before :each do
            @oveja=Ganado.new("Oveja",2,"Hembra",80000,"ovino","carne, piel, leche","herbívoro")
        end

        context "Atributos de la clase Ganado" do
            
            it "Tiene clase para representar Ganado" do
                expect(@oveja).not_to eq(nil)
            end

            it "Tiene un atributo para la raza" do
                expect(@oveja.raza).to eq("ovino")
            end

            it "Tiene un atributo para el tipo de aprovechamiento" do
                expect(@oveja.aprovechamiento).to eq("carne, piel, leche")
            end

            it "Tiene un atributo para su tipo de alimentación" do
                expect(@oveja.alimentacion).to eq("herbívoro")
            end

            
             #El animal es un León Macho que tiene 5 años y pesa 190000 gramos, su raza es ovino es herbívoro y su aprovechamiento es carne, piel, leche 
            it "Se obtiene una cadena con la información del Ganado correctamente formateada" do
                expect(@oveja.to_s).to eq("El animal es Oveja Hembra que tiene 2 años y pesa 80000 gramos, su raza es ovino, es herbívoro y su aprovechamiento es carne, piel, leche")
            end
        end

        context "Herencia de la clase Ganado" do
            
            it "Se espera que una instancia de la clase Ganado sea un Ganado" do
                expect((@oveja).is_a? Ganado).to eq(true)
            end

            it "Se espera que una instancia de la clase Ganado sea un Animal" do
                expect((@oveja).is_a? Animal).to eq(true)
            end

            it "Se espera que una instancia de la clase Ganado sea un objeto (Object)" do
                expect((@oveja).is_a? Object).to eq(true)
            end

            it "Se espera que una instancia de la clase Ganado sea un objeto básico (BasicObject)" do
                expect((@oveja).is_a? BasicObject).to eq(true)
            end

            it "No se espera que una instancia de la clase Ganado sea una cadena (String)" do
                expect((@oveja).is_a? String).to eq(false)
            end

            it "No se espera que una instancia de la clase Ganado sea un número (Numeric)" do
                expect((@oveja).is_a? Numeric).to eq(false)
            end
        end

        context "Pruebas de la clase Ganado" do
            it "El ganado debe ser coparable según su edad" do
                vaca=Ganado.new("vaca",6,"Hembra",300000,"bovina","carne, piel, leche","herbívoro")
                expect(vaca > @oveja).to eq(true)
            end
        end


    end
end