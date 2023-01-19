include Comparable

#Clase animales
class Animal

    @@contador=0
    #getters 
    attr_reader :nombre,:edad,:sexo,:peso

    #Método initialize
    def initialize(nombre,edad,sexo,peso)
        @nombre=nombre
        @edad=edad
        @sexo=sexo
        @peso=peso
        @@contador+=1
    end


    #Método to_s de la clase animales
    def to_s
        "El animal es un #{@nombre} #{@sexo} que tiene #{@edad} años y pesa #{@peso} gramos. Número de Objetos #{@@contador}"
    end

    #Comparación entre pesos de animales
    def <=>(otro)
        return nil unless otro.instance_of? Animal
        @peso<=>otro.peso
    end

end
