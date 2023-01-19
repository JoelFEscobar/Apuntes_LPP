class DSLGranja

  def initialize(id, &block)
    @id = id
    @datos = []
    @ejemplar = []

    if block_given?  
      if block.arity == 1
        yield self
      else
       instance_eval(&block) 
      end
    end
  
  end

  
  def datos(name, options = {})
    datos = name 
    datos << "(#{options[:descripcion]}" if options[:descripcion] 
    datos << "(#{options[:tipo]}" if options[:tipo] 

    @datos << datos

  end

  def ejemplar(num, options = {})
      ejemplar = num
      ejemplar << "(#{options[:edad]})" if options[:edad]
      ejemplar << "(#{options[:peso]})" if options[:peso]
      ejemplar << "(#{options[:precio_compra]})" if options[:precio_compra]
      ejemplar << "(#{options[:precio_venta]})" if options[:precio_venta]
  end

end

