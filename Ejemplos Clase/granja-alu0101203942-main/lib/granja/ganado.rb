#Hereda de la clase Animal
class Ganado < Animal
    #getters
    attr_reader :raza,:aprovechamiento,:alimentacion

    #Método initialize
    def initialize(nombre,edad,sexo,peso,raza,aprovechamiento,alimentacion)
        @raza=to_raza(raza)
        @aprovechamiento=to_aprovechamiento(aprovechamiento)
        @alimentacion=to_alimentacion(alimentacion)
        super(nombre,edad,sexo,peso)
    end

    #raza
    def to_raza(raza)
        if(raza == "bovino"  || raza == "porcino" || raza == "ovino" || raza == "caprino") then
            return raza
        else
            return nil
        end
    end
    
    #aprovechamiento
    def to_aprovechamiento(aprovechamiento)
        if(aprovechamiento == "carne, piel, leche" ) then 
            return aprovechamiento
        else
            return nil
        end
    end


    #Alimentación
    def to_alimentacion(alimentacion)
        if(alimentacion == "herbívoro" || alimentacion =="omnívoro") then
            return alimentacion
        else
            return nil
        end
    end


    #método to_s 
    def to_s
        "El animal es #{@nombre} #{@sexo} que tiene #{@edad} años y pesa #{@peso} gramos, su raza es #{@raza}, es #{@alimentacion} y su aprovechamiento es #{@aprovechamiento}"
    end


    #Comparación de ganado según su edad
    def <=>(otro)
        return nil unless otro.instance_of? Ganado
        @edad<=>otro.edad
    end
end