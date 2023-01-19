require "spec_helper.rb"
RSpec.describe Granja do
    #Pruebas de la clase Animal
    describe Animal do

        #Estructura para crear los objetos de clase animal
        before :each do
            #Creeando un objeto animal
            @leon=Animal.new("León",5,"Macho",190000)  
        end

        #Expectativas de los atributos de la clase Animal
        context "Atributos de la clase Animal" do

            it "Tiene una clase para representar animales" do
                expect(@leon).not_to eq(nil)
            end

            it "Tiene un atributo prara representar el animal" do
                expect(@leon.nombre).to eq("León")
            end

            it "Tiene un atributo con la edad del animal" do
                expect(@leon.edad).to eq(5)
            end

            it "Tiene un atributo con el sexo del animal" do
                expect(@leon.sexo).to eq("Macho")
            end

            it "Tiene un atributo con el peso del animal en gramos" do
                expect(@leon.peso).to eq(190000)
            end

            it "Se obtiene una cadena con la información del animal correctamente formateada" do
                expect(@leon.to_s).to eq("El animal es un León Macho que tiene 5 años y pesa 190000 gramos. Número de Objetos 6")
            end
            

        end

        #Expectativas para la herencia de la clase animal
        context "Herencia de la clase Animal" do

            it "Se espera que una instancia de la clase Animal sea un Animal" do
                expect((@leon).is_a? Animal).to eq(true)
            end

            it "Se espera que una instancia de la clase Animal sea un objeto (Object)" do
                expect((@leon).is_a? Object).to eq(true)
            end

            it "Se espera que una instancia de la clase Animal sea un objeto básico (BasicObject)" do
                expect((@leon).is_a? BasicObject).to eq(true) 
            end

            it "No se espera que una instancia de la clase Animal sea una cadena (String)" do
                expect((@leon).is_a? String).to eq(false) 
            end

            it "No se espera que una instancia de la clase Animal sea un número (Numeric)" do
                expect((@leon).is_a? Numeric).to eq(false) 
            end

        end

        #Expectativas para comparar los animales según su peso
        context "Pruebas de la comparativa de la clase Animal" do
            it "Los animales han de ser comparables según su peso" do
                tigre=Animal.new("Tigre",3,"Hembra",10000) 
                expect(@leon>tigre).to eq(true)
            end
        end
    end
end