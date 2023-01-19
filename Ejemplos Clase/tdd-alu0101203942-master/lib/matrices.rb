class Matrices
  attr_reader :fil, :col, :matriz  
  def initialize(fil,col,matriz)
	@fil=fil
	@col=col
	@matriz=matriz
  end
  def to_s
	"#{@matriz}"
  end
  def +(a)
        matriz_resultado=Array.new(@fil) {Array.new(a.col, 0)}
        for i in 0..a.fil - 1
          for j in 0..a.col - 1
            matriz_resultado[i][j]=@matriz[i][j] + a.matriz[i][j]
              end
            end
        Matrices.new(a.fil, a.col, matriz_resultado)
   end

  def traspuesta
       trasp=@matriz.transpose
       Matrices.new(@fil,@col,trasp)
  end

  def *(valor)

        for i in 0..@fil - 1
          for j in 0..@col - 1
            @matriz[i][j]=@matriz[i][j]*valor
           end
         end
         Matrices.new(@fil,@col,@matriz)
      end

end
