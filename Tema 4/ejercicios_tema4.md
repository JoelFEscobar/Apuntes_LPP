## 1. ¿Qué es un bloque en Ruby?

Un bloque en Ruby es un fragmento de código que se puede pasar como argumento a un método, y que puede ser ejecutado más tarde por ese método. Los bloques son similares a las funciones en otros lenguajes de programación, pero son más flexibles ya que pueden ser creados y utilizados en línea, y no requieren una declaración previa.

## 2. ¿Qué se obtiene como salida? Describa el comportamiento del programa.
```Ruby
class MyArray < Array
  def initialize (a_array)
    super (a_array)
  end
  def times_repeat (a_num)
    a_num.times do |num|
      self.each do |i|
        yield "[#{num}] :: ’#{i}’"
      end
    end
  end
end
a_array = MyArray.new([1,2,3])
a_array.times_repeat(2) do |x|
  puts x
end

```
La salida sería: 
```Ruby
"[0] :: '1'" 
"[0] :: '2'" 
"[0] :: '3'" 
"[1] :: '1'" 
"[1] :: '2'" 
"[1] :: '3'"
```

La clase MyArray extiende de la clase Array, en el constructor recibe un arreglo y en el metodo times_repeat recibe un numero y este numero es el que se va a repetir el bloque que se encuentra en el metodo times_repeat.


## 3. ¿Qué es un Proc?

Un Proc es un objeto que representa un bloque de código en Ruby. Se puede crear un Proc utilizando el método Proc.new o utilizando la notación lambda. Los Procs se pueden pasar como argumentos a métodos, almacenar en variables y llamar más tarde como si fueran funciones.

## 4. ¿Qué se obtiene como salida? Describa el comportamiento del programa.

```Ruby
def a_method( a_block_argument)
  x = "Bye"
  a_block_argument.call
end

x = "Hello"
a_block = Proc.new {puts x}
a_method(a_block)
```

La salida sería "Bye". El comportamiento del programa es el siguiente:

- Se define un método "a_method" que recibe un argumento "a_block_argument" y dentro del método se asigna un valor "Bye" a la variable "x".
- Se llama al método "call" en "a_block_argument"
- Antes de llamar al método "a_method", se asigna el valor "Hello" a la variable "x"
- Se crea un objeto Proc que al ser llamado, imprime el valor de x
- Se llama al método "a_method" pasando el objeto Proc como argumento
- Dentro del método "a_method" se llama al objeto Proc, el cual imprime el valor de x, que en este momento es "Bye"


## 5. ¿Qué es un lambda?

Un lambda es una forma de definir un bloque de código en Ruby. Es similar a una función anónima en otras lenguajes de programación, y se puede utilizar para pasar bloques como argumentos a métodos, almacenarlos en variables, etc. Los lambdas tienen una sintaxis ligeramente diferente a las funciones regulares, y se crean utilizando la palabra clave lambda o el símbolo ->.

## 6. ¿Qué  se obtiene como salida? Describa el comportamiento del programa.
```Ruby
def a_lambda( arg )
  return lambda {|i| i * arg}
end
a = a_lambda(0.10)
b = a_lambda(0.175)
puts a.call(10)
puts b.call(10)
```

El programa define una función llamada a_lambda que toma un argumento y devuelve un lambda que multiplica ese argumento por el valor que se le pase al llamar al lambda. En este caso, se crean dos lambdas, uno con un multiplicador de 0.10 y otro con un multiplicador de 0.175. Luego se imprimen los resultados de llamar a cada lambda con el argumento 10. La salida sería: 1.0 1.75


## 7. ¿Cómo se define una closure?

Una closure es un tipo de función de orden superior que recuerda el contexto en el que fue creada, incluyendo las variables locales y los valores de los parámetros. En Ruby, una closure se define utilizando un bloque de código que se puede asignar a una variable o pasar como argumento a un método. Un ejemplo de closure es un lambda o un Proc.



## 8. ¿Qué  se obtiene como salida?
   
```Ruby
> def tutu(n,m, &b) b.call() end
=> nil
> tutu 2, {:a =>1, :b =>2} { puts "hello" }
=>
> tutu(2,{:a =>1, :b =>2}) { puts "hello" }
=>
```

La primera línea define una función tutu que recibe 3 argumentos, n y m son argumentos normales y &b es un argumento de bloque. 
La función simplemente llama al bloque b. 
Sin embargo, en la primera llamada a la función tutu, el bloque no se pasa correctamente y en la segunda llamada, el bloque es pasado correctamente dentro del paréntesis, por lo que se imprime "hello" en consola.

## 9. Considere el siguiente código Ruby:
```Ruby
array = [1,2,3,4]
array.collect! do |n|
  n ** 2
end
puts array
```

a) Escriba el código de un método denominado iterador! que se comporte de la misma forma utilizando yield.
b) Repita el ejercicio anterior utilizando un objeto Proc.

a) def iterador!(array) array.each_index do |i| array[i] = yield(array[i]) end end iterador!(array) { |n| n ** 2 } puts array
b) square = Proc.new { |n| n ** 2 } iterador!(array, &square) puts array


## 10.  ¿Que  se obtiene como salida? Describa el comportamiento del programa.

```Ruby
class AClass
  def a_method(a_block)
    @hello = "I say"
    puts "[ In AClass.a_method ] "
    puts "in #{self} object of class #{self.class}, @hello = #{@hello}"
    puts "[ In AClass.a_method ] when block is called... "
    a_block.call
  end
end

a_closure = lambda {
@hello << " append!"
puts "in #{self} object of class #{self.class}, @hello = #{@hello}"
}

def a_method(a_closure)
  @hello = "hello"
  a_closure.call
end

a_method(a_closure)
data = AClass.new
data.a_method(a_closure)
```

El programa define una clase AClass con un método a_method que recibe un bloque como argumento. Dentro del método, se define una variable de instancia @hello con el valor "I say" y se imprime su valor en la consola.

Luego, se llama al bloque recibido como argumento y se vuelve a imprimir el valor de @hello.

Antes de esto, se define una variable de ámbito global llamada a_closure, la cual es un lambda que modifica la variable de instancia @hello agregando " append!" al final del valor existente. 

Se define un método llamado "a_method" que recibe un bloque como parametro, y luego se llama a ese bloque.

Después, se crea una instancia de la clase AClass y se llama al método a_method con el bloque a_closure como argumento. 

Al ejecutarse el bloque, se modifica la variable de instancia @hello de la instancia de la clase AClass y se vuelve a imprimir su valor en la consola. 

El programa imprimirá en consola:
"[ In AClass.a_method ] " "in #AClass:0x0000555555555555 object of class AClass, @hello = I say" "[ In AClass.a_method ] when block is called... " "in #AClass:0x0000555555555555 object of class AClass, @hello = I say append!"

La salida del método "a_method" anterior no esta definida ya que no se imprime nada en ese metodo y no se modifica ninguna variable global. El resultado de ejecutar este metodo seria vacio.


## 11. Considere el siguiente código Ruby
    
```Ruby
  def multiplier(n)
    lambda do |*arr|
      arr.collect { |i| i*n }
    end
  end
```

a) ¿Que devuelve multiplier?
b) Proponga un ejemplo de uso del objeto devuelto por multiplier

a) El método multiplier devuelve un objeto lambda, que toma como argumento un arreglo de números y los multiplica por un valor dado (el argumento "n" pasado al método multiplier). 

b) Un ejemplo de uso del objeto devuelto por multiplier sería:
```Ruby 
doble = multiplier(2) 
triple = multiplier(3) 
puts doble.call(1,2,3) # [2,4,6] 
puts triple.call(1,2,3) # [3,6,9]
```

## 12.  ¿Que se obtiene como salida?

```Ruby
1 def a_method
2 yield 2
3 end
4
5 x = 1
6 a_method { |x| }
7 puts x
```

La salida sería "1", ya que la variable x dentro del bloque de código en la línea 2 no tiene ningún efecto sobre la variable x declarada en la línea 5.

## 13.  ¿Qué se entiende por efectos laterales?

Los efectos laterales son cambios en el estado del sistema o en variables fuera del alcance de la función que son causados por la ejecución de esa función.

## 14. ¿Qué son las funciones de orden superior (high order functions)?

Las funciones de orden superior son funciones que toman como argumento otras funciones o devuelven funciones como resultado. Esto permite una mayor abstracción y composición de código.


## 15. ¿Que es la memoización (memoization)?

La memoización es una técnica de programación que consiste en almacenar el resultado de una función o proceso para evitar tener que volver a calcularlo en caso de que sea llamado con los mismos argumentos en el futuro. 

Esto se utiliza a menudo para acelerar la ejecución de algoritmos o funciones costosas computacionalmente, ya que almacena el resultado en lugar de tener que volver a calcularlo cada vez que se llama a la función. 

Esto se logra a través de la creación de una tabla de memoria que almacena los resultados previamente calculados para cada conjunto de argumentos.


## 16. Un principio para hacer programación funcional en Ruby es no actualizar las variables, sino crearlas. Si se necesita cambiar un objeto, no hay que modificarlo, hay que crear uno nuevo. ¿Qué opción del siguiente código sigue este principio?

- Añadir elementos a un array o cadena:
```Ruby 
a) 	

indexes = [1,2,3]
indexes << 4 #[1,2,3,4]

b) 	

indexes = [1,2,3]
all_indexes = indexes + [4] #[1,2,3,4]
```

b) indexes = [1,2,3] all_indexes = indexes + [4] #[1,2,3,4]
sigue este principio ya que se esta creando un nuevo array con el elemento 4 incluido, en lugar de modificar el array existente.


- Actualización de hashes:

```Ruby
a) 	

hash = {:a => 1, :b => 2}
hash[:c] = 3

b) 	

hash = {:a => 1, :b => 2}
new_hash = hash.merge(:c => 3)
```

La opción b) sigue el principio de no actualizar las variables, sino crearlas. En lugar de modificar el objeto hash existente, se crea un nuevo objeto new_hash con el valor adicional incluido.


- Modificaciones sobre un objeto:

```Ruby
a) 	

string = "LPP"
string.gsub!(/P/,’p’) #"Lpp"

b) 	

string = "LPP"
new_string = string.gsub(/P/,’p’) #"Lpp"
```

La opción b) sigue este principio, ya que en lugar de modificar la variable original, se crea una nueva variable con el valor modificado.


- Acumulacion de valores

```Ruby
a) 	

output = []
output << 1
output << 2 if is_it_needed?
output << 3

b)	 

output = [1, 2 if is_it_needed?, 3].compact
```

b) output = [1, 2 if is_it_needed?, 3].compact sigue este principio ya que se está creando un nuevo arreglo con los valores deseados, en lugar de actualizar el arreglo existente. La función compact elimina los valores nulos del arreglo.

- Reutilización de variables

```Ruby
a) 

number = gets
number = number.to_i

b) 

number_string = gets
number = number_string.to_i
```

La opción b.

## 17.  Un principio para hacer programación funcional en Ruby es utilizar bloques (blocks) pero si existe una función para hacer lo mismo, se ha de utilizar la función. ¿Qué opción del siguiente código sigue este principio?

- (init-empy + each + push) o map

```Ruby
a) 	
    cars = []
    ["rayo","chicks"].each do |name|
      cars << name.upcase
    end       # ["RAYO", "CHICKS"]

b) 	
    cars = ["rayo","chicks"].map do |name|
      name.upcase
    end      # ["RAYO", "CHICKS"]
```
La opción b) sigue el principio de utilizar una función existente en lugar de un bloque. El método map se utiliza para aplicar una función a cada elemento de una colección y devolver una nueva colección con los resultados. El código en a) utiliza un bloque con un ciclo each y una variable temporal para almacenar los resultados. El código en b) utiliza el método map para lograr lo mismo de manera más concisa y legible.

- (init-empy + each + conditional push) o (select/reject)

```Ruby
a) 	
    cars = []
    ["rayo","chicks"].each do |name|
      if name.size == 4
        cars << name
      end
    end          # ["rayo"]

b) 	
    cars = ["rayo","chicks"].select do |name|
        name.size == 4
     end       # ["rayo"]
```
La opción b) sigue el principio de utilizar funciones de orden superior en lugar de bloques, ya que utiliza la función select para seleccionar los elementos del arreglo que cumplen con el predicado especificado en el bloque.

- (initialize + each + accumulate) o inject

```Ruby
a) 	
    length = 0  
    ["rayo","chicks"].each do |car_name|
      length += car_name.length
    end 			# 10

b) 
    length = ["rayo","chicks"].inject(0) do |accumulator,car_name|
      acummulator + car_name.length
    end 				# 10
```

La opción b) sigue el principio de utilizar una función existente (inject) en lugar de utilizar un bloque con each para acumular el valor.

- (empty + each + accumulate + push) o scan

```Ruby
a) 	
    lengths = [0]
    total_length = 0
    ["rayo","chicks"].each do |car_name|
        total_length += car_name.length
        lengths << total_length
    end 		# [0, 4, 10]

b)  
  lengths = ["rayo","chicks"].partial_inject(0) do |acc, car_name|
    acc + car_name.length
  end 		# [0, 4, 10]

module Enumerable
  def partial_inject(initial_value, &block)
    inject([initial_value, [initial_value]]) do |(accumulated, output), element|
         new_value = yield(accumulated, element)
         [new_value, output << new_value]
    end 
end
```

La opción b) sigue el principio de utilizar una función existente (partial_inject) en lugar de utilizar un bloque con código personalizado (each + accumulate + push).


## 18. Escriba un método Ruby flip que reciba como argumentos dos lambdas y cambie el orden de los parámetros.

```Ruby
def flip(first_lambda, second_lambda)
  -> (a, b) {second_lambda.call(a, b) }
end
```

## 19. Escriba un método Ruby negate que reciba como argumento un lambdas y niege el predicado que recibe como parametro.

```Ruby
def negate(lambda)
  -> (a) { !lambda.call(a) }
end
```

## 20. Escriba un método Ruby compose que reciba como argumentos dos lambdas y retorne la composición de las mismas.

```Ruby
def compose(first_lambda, second_lambda)
  -> (a) {first_lambda.call(second_lambda.call(a))}
end
```

## 21. Escriba una función Ruby haciendo uso de funciones de orden superior que calcule la suma de los diez primeros números naturales cuyos cuadrados son múltiplos de cinco.

```Ruby
def sum_of_squares
  (1..10).select { |x| (x**2) % 5 == 0}.reduce(:+)
end
```

## 22. Escriba una función Ruby haciendo uso de funciones de orden superior que calcule el producto de los cien primeros números pares.

```Ruby
def product_of_first_hundred_evens
  (2..200).step(2).reduce(:+)
end
```

## 23. Escriba una función Ruby haciendo uso de funciones de orden superior que calcule el máximo de los cien primeros números naturales.

```Ruby
def max_off_hundred
  (1..100).max
end
```

## 24. Escriba una función Ruby haciendo uso de funciones de orden superior que calcule el mínimo de los cien primeros números naturales.

```Ruby
def min_of_first_hundred
  (1..100).min {|a,b| a <=> b}
end
```

## 25. Escriba una función Ruby haciendo uso de funciones de orden superior que seleccione los números pares de entre los cien primeros números naturales.

```Ruby
def even_of_first_hundred
  (1..100).select {|num| num.even? }
end
```

## 26. Escriba una función Ruby haciendo uso de funciones de orden superior que seleccione los números impares de entre los cien primeros números naturales.

```Ruby
def odd_of_first_hundred
  (1..100).select {|num| num.odd? }
end
```
## 27. ¿Que es la reflexión o instrospeccion?

La reflexión o instrospección es la capacidad de un programa para examinar y manipular su propio código en tiempo de ejecución. Esto permite a los programas ser más flexibles y adaptarse a diferentes situaciones.

## 28. ¿Qué es un contexto (binding)?

Un contexto (binding) es un objeto que contiene la información de un ámbito específico, incluyendo las variables locales, el self y el contexto llamado. Pueden ser utilizados para crear ámbitos aislados y evaluar código en un contexto específico.

## 29. ¿Que se entiende por metaprogramación?

La metaprogramación es la práctica de escribir programas que generan o modifican otros programas. Esto permite a los programadores automatizar tareas comunes y crear código más reutilizable.

## 30. ¿Que es un Lenguaje de Dominio especıfico (DSL - Domain Specific Language)?

Un Lenguaje de Dominio Específico (DSL) es un lenguaje de programación diseñado para resolver problemas específicos de un dominio específico. Por ejemplo, un DSL para el diseño de páginas web o para la creación de gráficos.

Un ejemplo de DSL (Lenguaje de Dominio Específico) en Ruby podría ser una librería para generar código HTML. El código podría verse así:
```Ruby
html = HTML.new
html.head {
  title "Mi página"
}
html.body {
  h1 "Bienvenido a mi página"
  p "Este es un ejemplo de DSL en Ruby"
  a "Visita mi blog", href: "http://mi-blog.com"
}
puts html.render
```

En este ejemplo, se está utilizando una clase HTML que define métodos como head, body, title, h1, p, a que aceptan bloques de código Ruby y devuelven una estructura de código HTML. El método render se encarga de generar el código HTML final.

## 31. ¿Qué  diferencias hay entre instance eval, class eval y eval?

- instance_eval evalúa un bloque o cadena de código en el contexto del objeto receptor
- class_eval evalúa un bloque o cadena de código en el contexto de la clase receptor
- eval evalúa un bloque o cadena de código en el contexto global.

## 32. ¿Cuál es el peligro de usar eval en un entorno distribuido?

El uso de eval en un entorno distribuido puede ser peligroso ya que permite ejecutar código arbitrario en un sistema remoto, lo que puede permitir a un atacante obtener acceso no autorizado o causar daños al sistema.


## 33. Cuando se define un método dentro de un bloque o cadena llamado con class_eval ¿qué clase de método se está creando?

Cuando se define un método dentro de un bloque o cadena llamado con class_eval, se está creando un método de clase. Este tipo de método puede ser llamado directamente desde la clase en lugar de tener que crear una instancia de la clase primero. Los métodos de clase son comunes en las clases de utilidad o las clases que contienen configuraciones estáticas.

## 34. Cuando se define un método dentro de un bloque o cadena llamado con instance_eval ¿qué clase de método se está creando?

Cuando se define un método dentro de un bloque o cadena llamado con instance_eval, se está creando un método de instancia para la instancia del objeto en el que se está llamando instance_eval.

## 35. ¿Como se puede incorporar un método definido en una cadena x = ’def met; "a method"; end como método de clase, en una cierta clase A

Para incorporar un método definido en una cadena x = 'def met; "a method"; end' como método de clase en una cierta clase A, se puede utilizar la clase Class y su método class_eval. Por ejemplo: A.class_eval(x)

## 36. Sea M un módulo y C una clase. ¿Que ocurre si se ejecuta C.extend(M)? ¿Dónde acaban los metodos de instancia de M?

Cuando se ejecuta C.extend(M), se está extendiendo la clase C con los métodos de instancia del módulo M, por lo que estos métodos se convierten en métodos de instancia de la clase C.


## 37. Considere el siguiente fragmento de codigo en el que se llama repetidas veces a element:

```Ruby
class HTMLForm < XMLGrammar
element :form, :action => REQ, # atributo requerido
   :method => "GET", # cadena: valor por defecto
              :enctype => "application/x-www-form-urlencoded",
              :name => OPT # opcional
element :button, :name => OPT, :value => OPT,
        :type => "submit", :disabled => OPT
element :br
end
```
a) ¿Cuántos argumentos espera element? ¿Por qué?
b) ¿De qué clase son los argumentos?
c) ¿Existen argumentos opcionales?
d ) ¿El método element es de clase o de instancia?

a) Element espera un número variable de argumentos, ya que se pueden especificar varios atributos para el elemento, como action, method, enctype, name, etc. 

b) Los argumentos son de tipo hash, donde las claves son los nombres de los atributos y los valores son los valores asignados a esos atributos. 

c) Sí, existen argumentos opcionales, como se puede ver en los ejemplos de :name => OPT y :disabled => OPT. d) El método element es de clase, ya que es definido dentro de la clase HTMLForm y no es un método de instancia.


