# frozen_string_literal: true

#Contiene las pruebas de la gema granja
RSpec.describe Granja do
  it "La gema Granja tiene un número de versión con formato X.Y.Z" do
    expect(Granja::VERSION).not_to be nil
  end

  
  
end
