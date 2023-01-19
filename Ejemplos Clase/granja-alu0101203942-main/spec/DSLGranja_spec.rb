require "spec_helper"
RSpec.describe Granja do
  #Pruebas de la clase DSLGranja
  describe DSLGranja do
    

      Vaca=Ganado.new("Vaca",890,"Hembra",720000,"bovino","carne, piel, leche","herbívoro")
      Cabra=Ganado.new("Cabra",350,"Macho",95000,"caprino","carne, piel, leche","herbívoro")

     

    before :each do
      @granja = Ganadera.new(1111,"Granja el sol","ganadera","Granja nueva","bovino","leche",250,500,1000,"almacena", [Vaca,Cabra]) 

      @granja_1 = DSLGranja.new(12345678) do
        datos "Pollos muertos",
          :descripcion => "PyME - Pequeña y mediana empresa",
          :tipo => :pollos

        ejemplar "12345678-0000001",
          :edad => 365,
          :peso => 700.2,
          :precio_compra => 4.25,
          :precio_venta => 4.75

      end
    end

    context "Atributos de la clase DSLGranja" do

          it "Tiene una clase para almacenar los datos de la granja" do
            expect(@granja).not_to eq(nil)
          end

          it "Tiene un método para los datos" do
              expect(@granja_1).to respond_to(:datos)
          end

          it "Tiene un método para los ejemplares" do
            expect(@granja_1).to respond_to(:ejemplar)
          end
    end

  end
end