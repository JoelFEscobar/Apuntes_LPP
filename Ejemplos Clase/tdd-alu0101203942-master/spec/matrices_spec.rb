require 'matrices'
#Permite agrupar prebas
describe Matrices do
  before :each do
 	@A = Matrices.new(3,3,[[1,2,3],[4,5,6],[7,8,9]])
	@B = Matrices.new(3,3,[[1,2,3],[1,2,3],[1,1,0]])
	@C = Matrices.new(3,3,[[2, 4, 6], [5, 7, 9], [8, 9, 9]])
	@D = Matrices.new(3,3,[[1, 4, 7], [2, 5, 8], [3, 6, 9]])
	@E = Matrices.new(2,2,[[2, 2], [2, 2]])
	@F = Matrices.new(2,2,[[4, 4], [4, 4]])
  end
  #Describe la prueba
  it "Se espera que se pueda inicializar la matriz" do
    expect(Matrices.new(2,2,[[1,2],[3,4]])).not_to eq(nil)
  end

  it "Se espera acceder a los elementos con los getters" do
	expect(@A.fil).to eq(3)
	expect(@A.col).to eq(3)
	expect(@A.matriz).to eq([[1,2,3],[4,5,6],[7,8,9]])
  end
  it "Se espera que se pueda representar como un string" do
	expect(@A.to_s).to eq("[[1, 2, 3], [4, 5, 6], [7, 8, 9]]")
	expect(@F.to_s).to eq("[[4, 4], [4, 4]]")
  end
  
  it "Se espera que se puedan sumar dos matrices" do
	expect((@A+@B).to_s).to eq(@C.to_s)
	expect((@E+@F).to_s).to eq("[[6, 6], [6, 6]]")
  end

  it "Se espera que se pueda hacer la traspuesta" do
	expect(@A.traspuesta.to_s).to eq(@D.to_s)
	expect(@D.traspuesta.to_s).to eq(@A.to_s)

  end
  it "se espera que se pueda multiplicar la matriz por un valor" do
	expect((@E*2).to_s).to eq(@F.to_s)
	expect((@F*4).to_s).to eq("[[16, 16], [16, 16]]")
  end
end
