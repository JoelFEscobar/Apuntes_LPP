1. ¿Que es una clase?

2. ¿Que es un objeto?

3. ¿Que es una variable local?

4. ¿Que es una variable de instancia?

5. ¿Que es una variable global?

6. ¿Que es una variable de clase?

7. ¿Que es un metodo de acceso (getter )?

8. ¿Que es un metodo de asignacion de valores (setter )?

9. ¿Cual es la visibilidad del metodo initialize?

10. El valor retornado por initialize es usado para la construccion del objeto. ¿Verdadero o falso?

Una clase es una plantilla o esquema para la creación de objetos en un lenguaje de programación orientado a objetos. Una clase define las propiedades y comportamientos de un objeto, incluyendo sus atributos y métodos.
Un objeto es una instancia de una clase. Un objeto tiene su propia memoria y puede tener sus propios valores para los atributos y comportamientos definidos en la clase.
Una variable local es una variable que es declarada dentro de un método o un bloque de código y solo es accesible dentro de ese ámbito.
Una variable de instancia es una variable que pertenece a un objeto individual y es accesible desde cualquier método de ese objeto.
Una variable global es una variable que es declarada fuera de cualquier función o clase y es accesible desde cualquier parte del programa.
Una variable de clase es una variable que es compartida por todas las instancias de una clase y es accesible desde cualquier método de esa clase.
Un método getter es un método que se utiliza para obtener el valor de un atributo de un objeto.
Un método setter es un método que se utiliza para asignar un valor a un atributo de un objeto.
La visibilidad del método initialize es generalmente "público", lo que significa que el método puede ser llamado desde cualquier parte del programa.
El valor retornado por initialize es usado para la construcción del objeto es falso. El método initialize no retorna ningún valor, su función es inicializar los atributos de la instancia de la clase cuando se crea un nuevo objeto.

11. Considere el siguiente codigo Ruby:

1 class AClass
2 @x = 4
3 @y = 9
4
5 def initialize(x,y)
6 @x, @y = x, y
7 end
8 end
a) ¿Que tipo de variable son las de las lıneas 2 y 3? ¿Cual es su visibilidad? Explique su
respuesta.
b) ¿Que tipo de variable son las de la lınea 6? ¿Cual es su visibilidad? Explique su respuesta.
a) Las variables en las líneas 2 y 3 son variables de clase. Puedes identificarlas por el símbolo @ antes del nombre de la variable y la falta de la palabra "initialize", lo que indica que son variables globales dentro de la clase AClass, es decir compartida por todas las instancias de la clase AClass. Su visibilidad es "pública" lo que significa que pueden ser accedidas desde cualquier método dentro de la clase AClass.
b) Las variables en la línea 6 son variables de instancia. Puedes identificarlas por el símbolo @ antes del nombre de la variable y porque están dentro del método "initialize". Su visibilidad es "privada" lo que significa que solo son accesibles desde dentro del objeto, pero no desde fuera de él.

12. Señale el error de concepto en la codificacion de la siguente clase Ruby:
class MyClass
def initialize(b)
@b = b
end
def to_s
puts @b
end
end

El error de concepto en la codificación de la clase "MyClass" es que el método "to_s" no retorna ningún valor, en cambio imprime el valor de la variable de instancia @b en lugar de retornarlo. El método "to_s" es un método especial en Ruby que se utiliza para devolver una representación en forma de cadena de un objeto, por convención se espera que este método devuelva una cadena y no imprima nada por pantalla.


13. Considere el siguiente codigo Ruby:
1 class AClass
2 attr_accessor :n
3 ...
4 def initialize(n)
5 @n = n
6 end
7 ...
8 def square
9 n = n * n
10 end
11 ...
12 end
En los accesos a n a la derecha de la igualdad en la lınea 9
a) ¿a que tipo de variable se esta accediendo?
b) ¿y en el acceso a la izquierda de la igualdad?
c) ¿attr_accessor es un metodo de instancia o de clase?
d) ¿En que clase esta definido attr_accessor?

a) En el acceso a "n" a la derecha de la igualdad en la línea 9 se está accediendo a una variable local.
b) En el acceso a "n" a la izquierda de la igualdad en la línea 9 se está accediendo a una variable de instancia.
c) attr_accessor es un método de clase, ya que se utiliza para generar automáticamente los métodos getter y setter para una variable de instancia.
d) attr_accessor está definido en la clase Module de Ruby, que es una clase base de la cual todas las clases en Ruby heredan.


14. Considere la creacion de una clase Ruby para representar numeros fraccionarios. ¿Como se denominan a los metodos necesarios para definir las siguientes operaciones? ¿Cuantos argumentos reciben?
la suma, la resta, la multiplicacion, la division, el opuesto,la indexacion la asignacion a un elemento del objeto

Suma: El método para la suma se denominaría "suma" o "+". Recibe dos argumentos, la fracción actual y la fracción con la que se está sumando.
Resta: El método para la resta se denominaría "resta" o "-". Recibe dos argumentos, la fracción actual y la fracción con la que se está restando.
Multiplicación: El método para la multiplicación se denominaría "multiplicar" o "*". Recibe dos argumentos, la fracción actual y la fracción con la que se está multiplicando.
División: El método para la división se denominaría "dividir" o "/". Recibe dos argumentos, la fracción actual y la fracción con la que se está dividiendo.
Opuesto: El método para el opuesto se denominaría "opuesto" o "~". Recibe un argumento, la fracción actual.
Indexación: El método para la indexación se denominaría "[]" o "at". Recibe un argumento, la posición del elemento que se desea acceder.
Asignación a un elemento del objeto: El método para la asignación a un elemento del objeto se denominaría "[]=" o "store". Recibe dos argumentos, la posición del elemento y el valor que se desea asignar.


15. ¿Que es el polimorfismo?

El polimorfismo es una característica de la programación orientada a objetos que permite que un objeto de diferentes clases pueda ser tratado como si fuera un objeto de una clase padre o interfaz. En otras palabras, el polimorfismo permite que un método o función acepte un objeto de diferentes tipos y trate cada uno de ellos de manera diferente.

16. ¿Cual es la diferencia entre tipo y clase?

El tipo se refiere a la categoría general de un objeto, como un entero, una cadena o un objeto de una determinada clase. La clase, por otro lado, se refiere a la especificación de un objeto, es decir, su estructura y comportamiento. Mientras que el tipo se refiere a la generalidad de un objeto, la clase se refiere a la especificidad de un objeto.


17. ¿Qué ventajas e inconvenientes se tienen si en la escritura de un método metodo(x,y) se usa respond_to? para comprobar que los argumentos x e y responden a los métodos llamados en el cuerpo del método metodo?

18. ¿Que ventajas e inconvenientes se tienen si en la escritura de un m ́etodo metodo(x,y) se usa is_a? para comprobar que los argumentos x e y pertenecen a las clases esperadas por el metodo metodo?

19. En Ruby ¿el conocimiento de la clase obj.class del objeto obj caracteriza la conducta del
objeto?

20. ¿Que clase de objeto crea la llamada Fraction = Struct.new(:num, :denom)?

21. ¿Como se puede impedir que se invoque a los m ́etodos num= y denom= de la clase
Fraction = Struct.new(:num, :denom)?

22. ¿Que es una variable de clase?

23. ¿En qué forma se define en Ruby un método de clase?

24. ¿Es posible definir una constante de la clase MyClass antes de la definición del método initialize?

25. ¿Es posible definir constantes de una clase desde fuera de la misma?

26. ¿A que clase de variable n permite acceder la declaración  de la lınea 3?

1 class Tutu
2 class << self
3 attr_accessor :n
4 end
5 end

27. ¿Qué se entiende por herencia?

28. Enumere los tipos de herencia y descríbalos brevemente.

29. ¿Que tipo de herencia proporciona Ruby?

30. ¿Que se entiende por invalidación de un método (overriden)?

31. ¿Qué puede ocurrir si en una subclase se escribe un método con con nombre intimo igual al de un método privado intimo de la superclase? ¿Que ocurre si el método toto de la superclase llama a intimo?

32. ¿Que ocurre cuando se llama a super sin argumentos?

33. ¿Como se puede llamar a super sin argumentos?

34. Describa la salida de estos dos programas Ruby:
class A
@@value = 1
def A.value
@@value
end
end
puts A.value
class B < A
@@value = 2
end
puts A.value
puts B.value
class C < A; @@value = 3; end
puts B.value
puts C.value
puts A.class_variables.inspect
puts B.class_variables.inspect
puts C.class_variables.inspect

class A
@value = 1
def self.value
@value
end
end
puts A.value
class B < A
@value = 2
end
puts A.value
puts B.value
class C < A; @value = 3; end
puts B.value
puts C.value

35. Suponga que la clase B hereda de A un método tutu que usa la constante C definida en A. Si en la clase B se define C, ¿Que definición de C usar  tutu, la de A o la de B?

36. ¿Que es la encapsulación ?

37. ¿Cual es la visibilidad por defecto de un método?

38. ¿Cual es la visibilidad por defecto de un metodo que ha sido definido fuera de cualquier clase (por ejemplo en un script)?

39. Los ḿetodos privados no pueden ser llamados desde una subclase, ¿cierto o falso?

40. Dentro de una clase y fuera de un metodo self, ¿a que objeto hace referencia self?

41. ¿Como se denomina la superclase de la clase Class?

42. La palabra reservada private seguida del nombre de un metodo permite restringir el acceso a dicho metodo. ¿Que es falso en la afirmacion anterior?

43. ¿Que es un modulo?

44. ¿Que es un espacio de nombres (namespace)?

45. ¿Que es un (mix-in)?

46. ¿Que es Enumerable?

47. ¿Que es Comparable?

48. ¿Que operador se ha de definir para que a partir de  ́el se puedan comparar elementos de la clase?
49. ¿Qué módulo se debe incluir para poder ordenar objetos?

50. ¿Qué diferencias hay entre los siguientes predicados?
a) ==
b) eql?
c) equal?
d) ===
e) =~

51. ¿Cuál es el resultado?

> (1..10) === 5
=> ???
> /\d+/ === "123"
=> ???
> String === "s"
=> ???
> :s === "s"
=> ???

52. ¿Cual  es la diferencia entre obj.nil? y obj == nil?

53. ¿Cómo se puede permitir que los objetos de la clase Fraction = Struct.new(:num, :denom) sean comparables?

54. ¿Qué predicado es usado por Ruby para comprobar la igualdad entre claves de un hash?

55. ¿Cómo se puede conseguir que el producto de un número por un objeto de una clase que se está definiendo funcione? Por ejemplo: 4 * obj

56. protected es un método de instancia de la clase Module ¿Verdadero o falso?

57. ¿Disponen los elementos de la clase Module de un método new?

58. ¿Cómo se puede hacer que la única forma de construir objetos de la clase MyClass se haga mediante nuestro propio método factoría/constructor my_maker (desde una clase externa a MyClass)?

59. ¿Qué es una clase abstracta?

60. ¿Cómo se define una clase concreta?

61. ¿Cómo se denomina la clase a la que pertenecen las clases de Ruby? Dibuje la jerarquía de clases a la que pertenece.

62. ¿Que se obtiene como salida?
> class MyClass
> end
=> nil
> MyClass.class
=> ?
> String.class
=> ?
> Object.class
=> ?
> Class.class
=> ?





63. ¿Que  se obtiene como salida? Describa el comportamiento del programa.

def show (a_class)
if (a_class != nil) then
puts "#{a_class}:: es hija de = #{a_class.superclass}"
show(a_class.superclass)

end
end
show(Fixnum)

64. ¿Que es un ḿetodo singleton?

65. ¿Cual es la sintaxis Ruby para crear un ḿetodo singleton?

66. ¿Que  se obtiene como salida? Describa el comportamiento del programa.
class AClass
def m
’method m’
end
end

obj = AClass.new
def obj.s1
’method s1’
end
class << obj

def s2
’method s2’
end
end

puts obj.m
puts obj.s1
puts obj.s2

67. ¿Qué es la eigenclass?

68. Sea x una variable que contiene un objeto de la clase Class. ¿Con qué otro nombre se conoce a los métodos singleton del objeto x?

69. ¿En qué clase se alojan los métodos singleton de x?

70. ¿Que diferencia hay entre la eigenclass de un objeto de la clase Class y la de un objeto
ordinario?

71. ¿Qué queda en z?

z = class << String; self end

72. Sea M un módulo y C una clase. ¿Que ocurre si se ejecuta C.extend(M)? ¿Dónde acaban los métodos de instancia de M?

73. ¿Qué  ocurre si en una clase C se incluyen dos módulos M1 y M2 (en ese orden) en los que existen métodos con el mismo nombre a method?

74. ¿Qué  ocurre si en una clase C se incluye un módulo M en el que existe un método a method con el mismo nombre que un método a method que ya existe en la clase C?

75. Considere la expresión obj.m donde se llama al método m con receptor el objeto obj. ¿En qué  clase busca Ruby primero a m?



76. Describa el algoritmo de búsqueda de Ruby para el método my_method():

class MyClass
def my_method; ’my_method()’; end
end
class MysubClass < MyClass
end
obj = MySubclass.new
obj.my_method()

77. Describa el algoritmo de búsqueda de Ruby para el método my_method():
module M
def my_method; ’M#my_method()’; end
end
class C
include M
end
class D < C ; end
D.new.my_method()
78. Considere el siguiente c ́odigo Ruby:
1 def Integer.a_method(x)
2 x.to_i
3 end
4 n = Fixnum.a_method("5")

Describa el algoritmo de búsqueda de la invocación de la línea 4.

79. ¿Qué es un método singleton de una clase?

80. ¿Que se está declarando?

class << AClass
def a_method
’a_method’
end
end

81. ¿Qué tipo de  ámbito se utiliza para la búsqueda de constantes en Ruby?

82. ¿Que se obtiene como salida? Describa el comportamiento del programa.¿Que contiene la variable search?

module Kernel
A=B=C=D=E=F="defined in Kernel"
end
#Top level or global constant defined in Object
A=B=C=D=E="defined at top-level"
class Super
A=B=C=D="defined in superclass"
end
module Included
A=B=C="defined in included module"
end
module Enclosing
A=B="defined in enclosing module"
class Local < Super
include Included
A = "defined locally"
search = (Module.nesting + self.ancestors + Object.ancestors).uniq
puts A
puts B
puts C
puts D
puts E
puts F
end
end

83. Considere el siguiente programa Ruby.
1 class AClass
2 def s
3 ’a_s’
4 end
5
6 def g
7 ’a_g’
8 end
9 end
10
11 class OtherClass < AClass
12 def s
13 ’o_s’
14 end
15
16 def g
17 super << " and o_g"
18 end
19 end

a) ¿Qué se hace en la línea 12?
b) ¿Que se hace en la línea 16?

84. ¿Que  devuelve? ¿Por qué?

def a_method
end

85. ¿Que  devuelve? ¿Por qué?

def a_method
s = "message"
a = 1
b = 2.0
return a, b, 3, ’four’, s, 6*10
end





86. ¿Qué devuelve? ¿Por qué?

def a_method
{’a’ => ’1’, ’b’ => ’2’, ’c’ => ’3’}
end

87. ¿Cual es la salida? ¿Por qué?

> def a_method(a = 10, b = 20, c = 100, *d)
> return a,b,c,d
> end
=> nil
> a_method(1,2,3,4,5,6)
=> ?

88. Se ̃nale el error de concepto en la codificación de la siguiente clase Ruby:
class MyClass
def initialize(x,y)
@x, @y = x, y
end
def polar(x,y)
Math.hypot(y,x), Math.atan2(y,x)
end
end

89. Considere el siguiente programa Ruby.
1 s = ’message 1’
2 r = ’message 2’
3
4 def s
5 ’message from s’
6 end
7
8 def r
9 ’message from r’
10 end
11
12 def t(x)
13 "#{x}"
14 end
15
16 puts (r)
17 puts r
18 puts r()
19 puts (t(s))
20 puts (t(s()))

a) ¿Que permite diferenciar las líneas 16, 17 y 18?

b) ¿Qué diferencia hay entre las líneas 19 y 20?
90. ¿Qué comentario al comienzo del fichero permite usar caracteres unicode dentro del programa?

91. ¿Qué comentario al comienzo del fichero permite usar caracteres UTF-8 dentro del programa?

92. ¿En qué consiste el proceso de depuración (debugging)?

93. ¿Qué es un depurador (debugger )?

94. ¿Cómo se invoca al depurador de Ruby?

95. ¿Qué comando del depurador le permite enumerar las líneas de código fuente?

96. ¿Cómo se establece un punto de ruptura (breakpoint) con el depurador?
97. ¿Cómo se avanza hasta un punto de ruptura (breakpoint) con el depurador?

98. ¿Cómo se avanza con el depurador hasta la siguiente instrucción?

99. ¿Qué comando del depurador hay que utilizar para inspeccionar una variable?

100. ¿Qué comando del depurador permite ejecutar un método?

101. ¿Qué comando del depurador muestra la pila de ejecución?

102. ¿Qué comando del depurador permite reiniciar el contador de programa?

103. ¿En qué consiste el proceso de construcción (build)?

104. ¿Qúe es rake?

105. ¿Cual  es la principal diferencia entre las herramientas de construcción genéricas como make y rake?

106. ¿Dónde se han de almacenar las tarea que ha de ejecutar rake?

107. ¿Cómo se describe una tarea en rake?

108. ¿Para que se utiliza la descripción  de una tarea en rake?

109. ¿Cómo se define un objetivo en rake?

110. ¿Para qué  se utiliza el objetivo de una tarea en rake?

111. ¿Cómo se definen las acciones a ejecutar en rake?

112. ¿Cómo se define la tarea por defecto en rake?

113. ¿Que es la comprobación de unidades de código (Unit Testing)?

La comprobación de unidades de código, también conocida como Unit Testing, es un proceso de prueba de software que consiste en asegurar que cada unidad o componente de código funciona correctamente de manera individual. Esto se logra mediante la creación de pruebas automatizadas que comprobarán que cada unidad de código cumpla con los requisitos especificados y se comporte de la manera esperada. El objetivo de las pruebas unitarias es detectar problemas temprano en el desarrollo y asegurar que el código siga funcionando correctamente a medida que se hacen cambios en el futuro.


114. ¿En qué  directorio hay que implementar las pruebas unitarias?

Las pruebas unitarias se suelen implementar en un directorio específico dentro de la estructura del proyecto, comúnmente llamado "test" o "spec". Sin embargo, esto puede variar dependiendo de la configuración y convenciones utilizadas en el proyecto.

115. ¿Qué fichero se ha de incluir para implementar las pruebas unitarias?

Para implementar las pruebas unitarias en Ruby se suele incluir un archivo con extension .rb dentro de un directorio específico para pruebas, como por ejemplo "test" o "spec". Este archivo suele contener las clases y métodos necesarios para ejecutar las pruebas unitarias.

116. ¿Cómo se denomina la clase Ruby de la cual hay que heredar para implementar las pruebas?

La clase Ruby de la cual se hereda para implementar las pruebas unitarias se denomina "Test::Unit::TestCase".

117. ¿Qué es un conjunto de pruebas (Test case)?

Un conjunto de pruebas (Test case) es un conjunto de pruebas unitarias que se utilizan para evaluar el comportamiento y la funcionalidad de un trozo específico de código. Un test case consta de uno o varios métodos de prueba que realizan comprobaciones específicas utilizando afirmaciones (assertions) y verifican si el código se comporta de la manera esperada. Si alguna afirmación falla, entonces se considera que la prueba ha fallado.

118. ¿Que es una afirmación (assertion)?

Una afirmación (assertion) es una declaración en el código que espera que una determinada condición sea verdadera. En el contexto de las pruebas unitarias, una afirmación se utiliza para comprobar si el resultado de una función o método es el esperado. Si la condición de la afirmación no se cumple, se genera un error y la prueba falla. Esto ayuda a detectar problemas en el código de manera temprana.


119. Describa el comportamiento de la afirmación assert(<boolean expresion>) y proponga un ejemplo de uso.

La afirmación assert(<boolean expresion>) se utiliza para comprobar la validez de una expresión booleana y generar una excepción AssertionError si la expresión es falsa. Esto se utiliza comúnmente en pruebas unitarias para asegurar que ciertas condiciones se cumplen en el código.
Por ejemplo, supongamos que se tiene una función que calcula el factorial de un número:
def factorial(n)
  if n < 0
    raise "n debe ser mayor o igual a 0"
  elsif n <= 1
    1
  else
    n * factorial(n-1)
  end
end

Podríamos escribir una prueba unitaria para asegurarnos de que la función está funcionando correctamente:
def test_factorial
  assert(factorial(0) == 1)
  assert(factorial(1) == 1)
  assert(factorial(2) == 2)
  assert(factorial(3) == 6)
end

En este caso, cada una de las afirmaciones comprueba si el valor devuelto de la función factorial es igual al valor esperado. Si alguna de las afirmaciones es falsa, se generará una excepción AssertionError y se detendrá la ejecución del programa.

120. Describa el comportamiento de la afirmación assert_equal(expected, actual) y proponga un ejemplo de uso.

121. Describa el comportamiento de la afirmación assert_not_equal(expected, actual) y proponga un ejemplo de uso.

122. Describa el comportamiento de la afirmación assert_raise(exception_type,..){<code block} y proponga un ejemplo de uso.

123. Describa el comportamiento de la afirmación assert_not_raise(exception_type,..){<code block} y proponga un ejemplo de uso.

124. Describa el comportamiento de la afirmación assert_instance_of(class_expected, object) y proponga un ejemplo de uso.

125. Describa el comportamiento de la afirmacion assert_respond_to(object, method) y proponga un ejemplo de uso.

126. Describa el comportamiento de la afirmacion
assert_in_delta(expected_float, actual_float, delta) y proponga un ejemplo de uso.

127. ¿Qué  hace el método setup de la clase TestCase?

128. ¿Para qué se utiliza el método teardown de la clase TestCase?

129. ¿Qué opción permite ejecutar es solo uno de los test unitarios implementados?

130. ¿Qué opción permite ejecutar los test unitarios cuyos nombres concuerdan con un patrón?

131. Escriba una tarea de Rake para lanzar las pruebas unitarias.




132. ¿En qué consiste el desarrollo dirigido por pruebas (Test Driven Development)?

133. ¿Cómo se denomina el paradigma de desarrollo en el que se basa la herramienta RSpec?

134. Describa el conjunto de pasos a seguir para desarrollar una aplicación con RSpec.

135. ¿En qué directorio hay que implementar las especificaciones de las expectativas de una clase?

136. ¿Qué hace el método describe?

137. ¿Qué hace el método it?

138. ¿Qué hace el método before? ¿Qué significado tienen :each y :all?

139. ¿Qué significado tiene la expectativa expect(result).to eq(5)?

140. ¿Qué significado tiene la expectativa expect([1,2,3]).to include(2)?

141. ¿Qué significado tiene la expectativa expect { a += 1 }.to change { a }.by(1) ?


El desarrollo dirigido por pruebas (Test Driven Development, TDD) es un enfoque de desarrollo de software en el cual las pruebas son escritas antes de escribir el código de la aplicación. Esto ayuda a asegurar que el código cumpla con las especificaciones y requerimientos deseados.
El paradigma de desarrollo en el que se basa la herramienta RSpec es el BDD (Behavior Driven Development)
Los pasos para desarrollar una aplicación con RSpec son los siguientes:
Escribir especificaciones o pruebas para cada una de las funciones o comportamientos deseados en la aplicación.
Ejecutar las pruebas y asegurarse de que fallan.
Escribir el código necesario para hacer que las pruebas pasen.
Ejecutar las pruebas nuevamente para asegurarse de que todas pasan.
Refactorizar el código según sea necesario.
Repetir los pasos 1 a 5 para cada nueva funcionalidad o comportamiento deseado.
El directorio donde se implementan las especificaciones de las expectativas de una clase es generalmente llamado "spec" o "tests".

El método describe es utilizado para describir el comportamiento esperado de una clase o método en particular.

El método it es utilizado para describir un comportamiento específico dentro de una clase o método.
El método before es una forma de definir una acción que se ejecutará antes de cada una de las pruebas. :each significa que se ejecutará antes de cada prueba individualmente, mientras que :all significa que se ejecutará antes de todas las pruebas.
La expectativa expect(result).to eq(5) espera que el valor de la variable "result" sea igual a 5. Si el valor es diferente, la prueba fallará.
La expectativa expect([1,2,3]).to include(2) espera que el arreglo [1,2,3] incluya el valor 2. Si el valor no se encuentra en el arreglo, la prueba fallará.
La expectativa expect { a += 1 }.to change { a }.by(1) espera que la operación dentro del bloque (a += 1) cambie el valor de la variable "a" en uno. Si el cambio es diferente, la prueba fallará.


142. ¿Qué opción permite ejecutar RSpec de manera que muestre por consola la descripción de cada una de las especificaciones realizadas?

143. Escriba una tarea de Rake para lanzar las pruebas de RSpec.

144. ¿En qué consiste la comprobacion continua Continous Testing?


La opción --format documentation permite ejecutar RSpec de manera que muestre por consola la descripción de cada una de las especificaciones realizadas.
Una tarea de Rake para lanzar las pruebas de RSpec podría ser:
task :rspec do
  Rake::Task["spec"].invoke
end

La comprobación continua (Continuous Testing) es un proceso en el que se ejecutan automáticamente las pruebas de una aplicación en un intervalo regulado de tiempo o cada vez que se realiza un cambio en el código. El objetivo de esta técnica es detectar problemas temprano y asegurar que la calidad del software sea alta en todo momento.




145. ¿Qué es Guard?

146. Describa el conjunto de pasos a seguir para usar Guard en el desarrollo de una aplicación.

147. ¿En qué directorio hay que implementar los requerimientos de Guard?

148. ¿Que  se ha de especificar en el fichero Guardfile?

149. Describa el contenido de un fichero de Guardfile utilizado por Guard.

150. ¿Cómo se pone en funcionamiento Guard?


Guard es una herramienta de automatización de tareas para desarrolladores Ruby. Permite automatizar tareas comunes de desarrollo, como ejecutar pruebas, comprobar sintaxis y recargar un servidor en tiempo real.
Los pasos para usar Guard en el desarrollo de una aplicación incluyen instalar la gema Guard, crear un archivo Guardfile para especificar qué tareas se deben automatizar, y ejecutar el comando "guard" en la línea de comandos para iniciar Guard.
Los requerimientos de Guard deben implementarse en el directorio raíz del proyecto.
El archivo Guardfile especifica las tareas que se deben automatizar, junto con los patrones de archivo que deben activar estas tareas. Por ejemplo, se puede especificar que se ejecuten pruebas cada vez que se modifique un archivo en el directorio "spec".
El contenido de un archivo Guardfile puede variar dependiendo de las tareas específicas que se deseen automatizar. Sin embargo, en general, incluye las especificaciones de las tareas a automatizar, los patrones de archivo que deben activar estas tareas, y cualquier otra configuración necesaria.
150. Para poner en funcionamiento Guard, se debe seguir los siguientes pasos:
Instalar Guard: se puede hacer mediante la ejecución del comando "gem install guard" en la línea de comandos.
Crear un archivo Guardfile en el directorio raíz del proyecto. Este archivo especifica los plugin de guard y las tareas a ser ejecutadas.
Ejecutar el comando "guard init" en la línea de comandos para generar un archivo Guardfile inicial con las configuraciones básicas.
Agregar los plugin necesarios en el Guardfile para las tareas que se quieren automatizar.
Ejecutar el comando "guard" en la línea de comandos para iniciar Guard y comenzar a monitorear los cambios en los archivos especificados en el Guardfile.
Guard automáticamente ejecutará las tareas especificadas en el Guardfile cada vez que se detecte un cambio en los archivos monitoreados.


151. ¿En qué consiste la integración continua (Continuous Integration)?

152. Describa el conjunto de pasos a seguir para desarrollar una aplicación con Travis.

153. ¿En que directorio hay que implementar los requerimientos de Travis?

154. ¿Que  se ha de especificar en el fichero .travis.yml?

155. Describa el contenido de un fichero Gemfile utilizado por Travis.

156. ¿Cómo se pone en funcionamiento Travis?

La integración continua (Continuous Integration) es un proceso en el que se integran los cambios de código de forma regular en un repositorio centralizado. Esto permite detectar problemas y errores de manera temprana, lo que facilita la detección y corrección de problemas.
Los pasos a seguir para desarrollar una aplicación con Travis son:
Crear una cuenta en Travis y vincularla con el repositorio de la aplicación en GitHub.
Crear un archivo .travis.yml en el directorio raíz del proyecto con la configuración de las dependencias y las pruebas.
Añadir al archivo Gemfile las dependencias necesarias para ejecutar las pruebas.
Realizar un push al repositorio de GitHub para que Travis detecte y ejecute las pruebas.
Los requerimientos de Travis deben implementarse en el directorio raíz del proyecto.

El archivo .travis.yml debe especificar la versión de Ruby utilizada, las dependencias necesarias para ejecutar las pruebas y los comandos necesarios para ejecutar las pruebas.
Un fichero Gemfile utilizado por Travis contiene las dependencias necesarias para la aplicación, así como la versión de Ruby utilizada. También puede incluir la adición de la gema de Travis para realizar las pruebas automatizadas. Por ejemplo:
source 'https://rubygems.org'

gem 'rails', '5.2.4'
gem 'pg', '>= 0.18', '< 2.0'
gem 'travis'

Para poner en funcionamiento Travis, se debe crear una cuenta en travis-ci.org y vincularla con el repositorio de la aplicación en GitHub. Luego, se debe crear un archivo .travis.yml en el directorio raíz del proyecto, especificando los detalles de configuración, como el lenguaje de programación utilizado y las dependencias necesarias. A continuación, se debe habilitar el repositorio en Travis y ejecutar las pruebas automatizadas mediante el comando "travis setup" o "travis ci" para cada nueva versión de la aplicación.



157. ¿Qué es Coveralls?

158. Describa el conjunto de pasos a seguir para desarrollar una aplicación con Coveralls.

159. ¿En que directorio hay que implementar los requerimientos de Coveralls?

160. ¿Cómo se pone en funcionamiento Coverall?

161. ¿Que se ha de especificar en el fichero .coveralls.yml?

162. Describa el contenido de un fichero Gemfile utilizado por Coveralls.

163. ¿Cómo se pone en funcionamiento Coveralls?

Coveralls es una herramienta en línea que se utiliza para medir el grado de cobertura de código de prueba en un proyecto de software.
Para desarrollar una aplicación con Coveralls, los pasos a seguir son: 1. Agregar la gema coveralls a su Gemfile y ejecutar bundle install. 2. Ejecutar las pruebas de su aplicación con el comando coveralls. 3. Enviar los resultados de la cobertura de código a Coveralls mediante el comando coveralls push. 4. Revisar los resultados de la cobertura de código en la página web de Coveralls.
Los requerimientos de Coveralls deben implementarse en el directorio raíz del proyecto.
Para poner en funcionamiento Coverall, es necesario ejecutar el comando coveralls en la línea de comandos después de haber ejecutado las pruebas de su aplicación.
El fichero .coveralls.yml debe especificar el repositorio de su proyecto y el token de Coveralls.
Un fichero Gemfile utilizado por Coveralls podría tener un contenido similar a esto:
source "https://rubygems.org"

gem "rails", "~> 6.0.3"
gem "pg", ">= 0.18", "< 2.0"
gem "puma", "~> 4.1"
gem "sass-rails", ">= 6"
gem "webpacker", "~> 4.0"

group :development, :test do
  gem "rspec-rails", "~> 4.0"
  gem "factory_bot_rails", "~> 5.1"
  gem "coveralls", require: false
end

Este archivo específica las dependencias de la aplicación, incluyendo la gema "coveralls" en el grupo de desarrollo y pruebas.
Para poner en funcionamiento Coveralls, se deben seguir los siguientes pasos:
Asegurarse de tener una cuenta en Coveralls.
Instalar la gema "coveralls" en el proyecto.
Ejecutar las pruebas de su aplicación con el comando "COVERALLS_REPO_TOKEN=<token> bundle exec rspec" para generar un archivo de salida de cubrimiento de código.
Ejecutar el comando "coveralls" para enviar el archivo de salida a Coveralls.
Verificar en el sitio web de Coveralls para ver el cubrimiento de código de su aplicación.


164. ¿Qué es RubyGem?

165. ¿Qué es una Gema (Gem)?

166. ¿Qué comando permite manipular gemas (gems)?

167. ¿Cómo se puede encontrar una gema (gem) en la máquina local? y ¿en remoto?

168. ¿Cómo se denomina el repositorio estándar de gemas (gems)?

169. ¿Qué comando permite manipular la instalación de gemas (gems)?

170. ¿Qué comando permite actualizar a la  última versión (gem)?

171. ¿Qué comando permite manipular la desinstalación de gemas (gems)?

172. ¿Cómo se hace uso de una gema (gem) ya instalada?

173. ¿Qué es bundler?

RubyGem es un sistema de gestión de paquetes o "gems" para el lenguaje de programación Ruby.
Una gema (gem) es un paquete o módulo de código que se utiliza para agregar funcionalidad a una aplicación Ruby. Una gema puede incluir código fuente, documentación, recursos y scripts.
El comando "gem" permite manipular gemas (gems), tales como instalar, desinstalar, actualizar y buscar gemas.
Para encontrar una gema (gem) en la máquina local, se puede utilizar el comando "gem list" y buscar en la lista de gemas instaladas. Para encontrar una gema (gem) en remoto, se puede utilizar el comando "gem search" y buscar en el repositorio de gemas.
El repositorio estándar de gemas (gems) se denomina RubyGems.
El comando "gem install" permite manipular la instalación de gemas (gems), permitiendo instalar una nueva gema o actualizar una existente.
El comando "gem update" permite actualizar a la última versión de una gema (gem) ya instalada.
El comando "gem uninstall" permite manipular la desinstalación de gemas (gems), permitiendo desinstalar una gema existente.
Para hacer uso de una gema (gem) ya instalada, se debe incluir en el código fuente de la aplicación la línea "require 'nombre_de_la_gema'" para cargar la gema y poder utilizar su funcionalidad.


174. ¿Que estructura de directorios genera la orden bundle gem ejemplo?

175. Describa el contenido del fichero Gemfile que se genera por defecto.

176. Describa el contenido del fichero ejemplo.gemspec que se genera por defecto.

Al ejecutar el comando "bundle gem ejemplo", se genera una estructura de directorios con la siguiente estructura:
Un directorio raíz llamado "ejemplo"
Un subdirectorio llamado "lib" que contiene un archivo "ejemplo.rb" que es el archivo principal de la gema.
Un subdirectorio llamado "ejemplo" que contiene los módulos y clases de la gema.
Un archivo "ejemplo.gemspec" que especifica la configuración de la gema.
Un archivo "Gemfile" que contiene las dependencias de la gema.
Un archivo "Rakefile" que contiene tareas específicas de la gema.
Un archivo "version.rb" que contiene la versión actual de la gema.
El fichero Gemfile contiene las dependencias de la gema, específicamente las gemas necesarias para que la gema funcione correctamente. También se pueden especificar las versiones necesarias de las dependencias.
El fichero ejemplo.gemspec contiene información específica sobre la gema, como su nombre, versión, autor, descripción, dependencias, etc.


177. Describa el contenido del fichero Rakefile que se genera por defecto.

178. Describa el contenido del fichero version.rb que se genera por defecto.

179. ¿Cual es el comando para crear la gema (gem) ejemplo? ¿Que se genera al ejecutarlo?
El fichero Rakefile generado por defecto contiene las tareas de Rake necesarias para construir, instalar y publicar la gema creada. Incluye tareas para crear documentación RDoc, probar la gema, y limpiar archivos generados durante la construcción.
require 'rake'
require 'rake/clean'

CLEAN.include("*.log", "*.swp")
CLOBBER.include("doc")

task :default => :run

task :run do
  puts "Running the application"
  system "ruby app.rb"
end

desc "Generate documentation"
task :doc do
  puts "Generating documentation"
  system "rdoc -o doc *.rb"
end

Este es un ejemplo básico de un archivo Rakefile. La tarea principal es "run" y se ejecuta con el comando "rake" en la línea de comandos. También hay tareas adicionales para limpiar archivos temporales y generar documentación utilizando RDoc. El uso de CLEAN y CLOBBER se utiliza para limpiar archivos no deseados o para limpiar el directorio de documentación generado.
El fichero version.rb generado por defecto contiene la versión actual de la gema creada. Es un fichero simple que define una constante con la versión de la gema.
El comando para crear una gema es "bundle gem nombre_de_la_gema". Este comando genera una estructura de directorios con los archivos necesarios para construir, instalar y publicar la gema, incluyendo un archivo Gemfile, un archivo .gemspec y un archivo Rakefile. También genera una estructura de directorios para alojar el código fuente y un archivo de versión.


180. ¿Cual es el comando para publicar la gema (gem) ejemplo? ¿Qué se hace al ejecutarlo?

181. ¿En qué directorio hay que colocar el fichero de configuración de la gema (gem)?

182. ¿En qué directorio hay que colocar los ficheros con los códigos fuente Ruby de la gema (gem)?

183. ¿Qué es RDoc?

184. La herramienta RDoc incluida de manera estándar en Ruby puede procesar fichero de codigo fuente Ruby y bibliotecas de clases en código fuente C para extraer documentación y formatearla de manera que se pueda mostrar en un navegador. ¿Verdadero o falso? ¿Por qué?

185. ¿De dónde extrae la información RDoc?

186. El siguiente comentario es ignorado por RDoc. ¿Verdadero o falso? ¿Por qué?
=begin
Esto es un comentario RDoc
que ocupa varias lıneas
=end

El comando para crear una gema es "gem build nombre_de_la_gema.gemspec". Al ejecutarlo, se genera un archivo con la extensión .gem en el directorio actual, que contiene todos los archivos y metadatos necesarios para instalar y utilizar la gema.
El comando para publicar una gema es "gem push nombre_de_la_gema-versión.gem". Al ejecutarlo, se sube el archivo .gem a la plataforma de distribución de gemas, como RubyGems.org, permitiendo que otros desarrolladores la descarguen e instalen en sus proyectos.
El fichero de configuración de la gema se llama "nombre_de_la_gema.gemspec" y debe colocarse en el directorio raíz de la gema.
Los archivos con los códigos fuente Ruby de la gema deben colocarse en el directorio "lib" dentro del directorio raíz de la gema.
RDoc es una herramienta de generación de documentación para proyectos Ruby. Permite extraer comentarios y documentación de los archivos de código fuente y generar una página web estructurada con la documentación.
Falso, RDoc solo procesa archivos de código fuente Ruby, no bibliotecas de clases en código fuente C.
RDoc extrae la información de los comentarios en los archivos de código fuente Ruby, especialmente los comentarios de documentación que siguen un formato específico.
Falso. El comentario es un comentario de varias líneas de RDoc y será procesado por RDoc. Los comentarios de varias líneas de RDoc se deben iniciar con "=begin" y terminar con "=end" para que sean detectados y procesados ​​por RDoc.



187. ¿Cuál es el comando que pone en funcionamiento a RDoc?

188. ¿Dónde se aloja por defecto la documentación generada por RDoc?

189. Describa la documentación  generada por RDoc.

190. El siguiente comentario es ignorado por RDoc. ¿Verdadero o falso? ¿Por que?
#--
# Este comentario no aparecerá
# en la documentación
#--
# Este comentario sí aparece

191. Describa el significado de la línea 7.
1 # Esta es una clase que no hace nada
2 class AClass
3 # Esta es la documentaci ́on de este m ́etodo
4 def a_method_1
5 end
6
7 def a_method_2 #:nodoc:
8 end
9 end

192. RDoc no procesa los comentarios que están dentro de los métodos por lo tanto no aparecerán en la documentación producida. ¿Verdadero o falso? ¿Por qué?

193. ¿Para qué se utiliza la opción --all de la herramienta RDoc?



El comando que pone en funcionamiento a RDoc es "rdoc"
La documentación generada por RDoc se aloja por defecto en una carpeta llamada "doc" en el mismo directorio donde se ejecutó el comando RDoc
La documentación generada por RDoc incluye información sobre las clases y métodos de un proyecto, junto con comentarios y ejemplos de uso. La documentación se presenta en forma de páginas HTML y es fácil de navegar y buscar.
Verdadero. Los comentarios que están dentro de los bloques de código marcados con "--" son ignorados por RDoc y no aparecerán en la documentación generada.
La línea 7 es el cuerpo del método a_method_2, pero tiene un comentario especial ":nodoc:" lo que indica a RDoc que no debe incluir este método en la documentación generada.
Verdadero. RDoc no procesa los comentarios dentro de los métodos, por lo tanto, no aparecerán en la documentación producida.
La opción --all de la herramienta RDoc se utiliza para incluir todos los archivos del proyecto en la documentación generada, incluso los que RDoc normalmente ignoraría, como los archivos de prueba o de configuración.

