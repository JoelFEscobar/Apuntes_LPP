class Ganadera < Datos
  include Enumerable
  
  attr_reader :tipoganado,:destino,:numanimales,:precio,:precioventa,:almacen,:vector

  def initialize(id,nombre,tipo,descripcion,tipoganado,destino,numanimales,precio,precioventa,almacen,vector)
      @numanimales=numanimales
      @precio=precio
      @precioventa=precioventa
      @tipoganado=to_tipoganado(tipoganado)
      @destino=to_destino(destino)
      @almacen=to_almacen(almacen)
      @vector=vector
      super(id,nombre,tipo,descripcion)
  end

  def to_tipoganado(tipoganado)
      if(tipoganado == "bovino" || tipoganado == "ovino" || tipoganado == "caprino" || tipoganado == "porcino") then
          return tipoganado
      else
          return nil
      end
  end

  def to_destino(destino)
      if(destino == "leche" || destino == "sacrificio") then
          return destino
      else
          return nil
      end
  end

  def to_almacen(almacen)
      if(almacen == "almacena" || almacen == "no almacena") then
          return almacen
      else 
          return nil
      end
  end

  def to_s
      "ID: #{@id}\nNombre: #{@nombre}\nTipo: #{@tipo}\nDescripción: #{@descripcion}\nTipo de ganado: #{@tipoganado}\nDestino: #{@destino}\nNumero Animales: #{@numanimales}\nPrecio del animal: #{@precio}\nPrecio de venta: #{@precioventa}\nAlmacen: #{@almacen}" 
  end

  def each
      yield @numanimales
      yield @precio
      yield @precioventa
      yield @tipoganado
      yield @destino
      yield @almacen
  end

end