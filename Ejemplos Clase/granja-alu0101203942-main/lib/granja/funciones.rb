#Clase para definir las Funcionalidades
module Funciones

    @@cuidados = ""
    @@reproduccion = ""
    @@antibioticos = 0
    @@condicionesdevida = ""
    @@ganado = []
    @@bienestar = 0
    @@beneficio = 0
    @@productividad = 0

#Función cuidados
def self.set_cuidados(cuidados,antibioticos,ganado)
    @@cuidados = cuidados
    @@antibioticos = antibioticos
    @@ganado = ganado
    
    return @@cuidados, @@antibioticos
end



#Función condiciones de vida
def self.set_condicionesdevida(condicionesdevida)  #cambiar orden
    if (condicionesdevida == "campo abierto")
        @@condicionesdevida = "campo abierto"
    elsif (condicionesdevida == "jaulas")
        @@condicionesdevida = "jaulas"
    else
        return nil
    end

end

#Función reproducción
def self.set_reproduccion(age)
    if(age >= 730)  #730 días son 24 meses
        @@reproduccion = "Seleccionado"
    else
        @@reproduccion = "No seleccionado"
    end
end
    
#Función bienestar
def self.set_bienestar(granja,condicionesdevida)
    if(@@condicionesdevida == "jaulas")
        edadpesojaula = granja.vector.collect { |x| x.peso / x.edad}.reduce {|sum, m| sum + m} / granja.vector.count
        edadpesomaxjaula = granja.vector.collect {|x| x.peso / x.edad}.max
        ((edadpesojaula) * 50) / (edadpesomaxjaula)
        
    else
        ratio_edadpeso = granja.vector.collect { |x| x.peso / x.edad}.reduce {|sum, m| sum + m} / granja.vector.count
        edad_peso = granja.vec.collect {|x| x.peso / x.edad}.max

        ((ratio_edadpeso * 100) / edad_peso)
        
    end
end

    #Función beneficio neto de una granja
    def self.set_beneficio(granja)
        if(granja.destino == "leche")

            ((granja.vector.collect { |x| x.edad }.reduce {|sum, m| sum + m} / granja.vector.count * granja.precioventa) / (granja.vector.collect {|x| x.edad }.reduce{ |sum, m| sum + m} / granja.vector.count * granja.precioventa)) * 100
        
        else

            ((granja.vector.collect { |x| x.peso }.reduce {|sum, m| sum + m} / granja.vector.count * granja.precioventa) / (granja.vector.collect {|x| x.peso }.reduce{ |sum, m| sum + m} / granja.vector.count * granja.precioventa)) * 100
        end
    end


    #Función de indicador de productividad
    def self.set_productividad(beneficio,bienestar)
        productividad1 = 0
        productividad2 = 0

        if(bienestar <= 20)

            productividad1 = 1

        elsif(bienestar < 80 && bienestar > 20) 

            productividad1 = 2

        elsif(bienestar >= 80) 

            productividad1 = 3

        else 

            productividad1 = 0
        end

        if(beneficio < 10)

            productividad2 = 1

        elsif(beneficio < 50 && beneficio > 10)

            productividad2 = 2

        elsif(beneficio > 50)

            productividad2 = 3
        else
            productividad2 = 0
        end

        @@productividad = (productividad1 + productividad2) / 2
    end



end

