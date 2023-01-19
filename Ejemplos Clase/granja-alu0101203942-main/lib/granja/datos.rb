#Clase para definir los datos
class Datos

    #Getter para los atributos de Datos
    attr_reader :id, :nombre, :tipo, :descripcion

    #Método initialize de datos
    def initialize(id,nombre,tipo,descripcion)

        @id = id
        @nombre = nombre
        @tipo = to_tipo(tipo)
        @descripcion = descripcion

    end

    
    #tipo
    def to_tipo(tipo)
        if(tipo == "ganadera" || tipo == "avícola") then
            return tipo
        else
            return nil
        end
      end

    #Método to_s 
    def to_s
        "La #{@nombre} es una granja del tipo #{@tipo} con numero identificador #{@id} que se dedica a #{@descripcion}"
    end

end