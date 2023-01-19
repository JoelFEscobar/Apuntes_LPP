# Ejercicios Tema 2: Programación imperativa.



## 1. ¿Qué se entiende por abstracción?

Abstracción se refiere a la habilidad de ver solo los aspectos relevantes de un problema o sistema y ignorar los detalles irrelevantes. En programación, la abstracción se utiliza para crear modelos simplificados de sistemas complejos y para crear interfaces que ocultan la complejidad interna de un sistema.

## 2. ¿Qué estructura dan los traductores de lenguajes de programación de alto nivel a la memoria de ejecución?

Los traductores de lenguajes de programación de alto nivel proporcionan una estructura a la memoria de ejecución para almacenar información como variables, valores de retorno y estructuras de control de flujo.

## 3. ¿Que es un procedimiento (subprograma)?

Un procedimiento (subprograma) es un bloque de código que puede ser reutilizado en varias partes de un programa. Pueden ser funciones o procedimientos, y pueden recibir parámetros y devolver valores. El uso de subprogramas ayuda a organizar y dividir un programa en partes más manejables.

## 4. ¿Que es un Registro de Activación (Stack Frame)?

Un Registro de Activación (Stack Frame) es una estructura de datos que se utiliza para almacenar información sobre una llamada a un subprograma. Contiene información como los parámetros de la llamada, las variables locales, y el punto de retorno al programa principal.

## 5. ¿Cuáles son las componentes de un registro de activación?
Las componentes de un registro de activación incluyen: puntero de retorno, parámetros de la llamada, variables locales, y registros de variables.

## 6. ¿Dibuje el flujo de ejecución de un programa principal en el que se hace una llamada a un subprograma para sumar dos números? (Revisar)

El flujo de ejecución de un programa principal en el que se hace una llamada a un subprograma para sumar dos números es el siguiente:
- El programa principal llama al subprograma pasando dos números como parámetros
- El subprograma crea un registro de activación en la pila de ejecución, almacenando los parámetros y las variables locales
- El subprograma realiza la suma de los dos números y almacena el resultado en una variable local
- El subprograma devuelve el resultado al programa principal
- El programa principal recibe el resultado y continúa su ejecución.

## 7. ¿Qué se entiende por programación procedural?

La programación procedural es un paradigma de programación en el que se utilizan procedimientos (o subprogramas) para dividir un programa en partes manejables. Se enfoca en la ejecución de una serie de instrucciones o procedimientos para lograr un objetivo.

## 8. ¿Cuál es el nombre de la instrucción en la que se basaban los primeros lenguajes de programación para modificar la secuencia de ejecución de las instrucciones mediante una transferencia incondicional de su control?

La instrucción en la que se basaban los primeros lenguajes de programación para modificar la secuencia de ejecución de las instrucciones mediante una transferencia incondicional de su control se llama "go to" (ir a).

## 9. ¿Por qué se considera perjudicial el uso de sentencias go to? (E. Dijkstra, “Letters to the Editor: Go to Statement Considered Harmful”, Comm. ACM vol. 11, n.3, 147-148, 1968.)

El uso de sentencias go to es considerado perjudicial porque puede crear código difícil de entender y mantener, ya que puede generar un flujo de control complejo e impredecible. También puede dificultar la detección y corrección de errores en el código.

## 10. ¿Que establece el Teorema Fundamental de la Estructura? (C. B ̈ohm, G. Jacopini, “Flow dia-grams, Turing Machines and Languages with only Two Formation Rules”, Comm. ACM vol. 9, n. 5, 366-371, 1966.)

El Teorema Fundamental de la Estructura establece que todo algoritmo que puede ser escrito utilizando estructuras de control de flujo como "go to" (ir a), también puede ser escrito utilizando únicamente las estructuras de control condicional y de repetición.

## 11. ¿Qué se entiende por programación estructurada o modular?¿Cuáles son las principales características de la programación estructurada?

La programación estructurada es un enfoque de programación en el cual se divide un programa en bloques lógicos y bien definidos, conocidos como módulos o subprogramas. Esto ayuda a organizar y dividir el código en partes más manejables.

Las principales características de la programación estructurada son:
División del programa en bloques lógicos y bien definidos (módulos o subprogramas)
- Uso de estructuras de control de flujo simples y predecibles (condicionales y bucles)
- Eliminación de sentencias "go to" (ir a)
- Uso de nombres claros y significativos para variables y funciones.
- Uso de funciones o procedimientos para dividir el código en partes más manejables
- Estructura clara de las funciones o procedimientos, con una clara separación entre declaración, entrada, proceso y salida.

La programación estructurada se enfoca en la ejecución de una serie de instrucciones o procedimientos para lograr un objetivo.
La programación estructurada se enfoca en la legibilidad y la facilidad de lectura del código.
La programación estructurada ayuda a la detección y corrección de errores en el código.


## 13. ¿Qué es Ruby?

Ruby es un lenguaje de programación de alto nivel, de código abierto, con un enfoque en la legibilidad y la expresividad. Fue creado por Yukihiro "Matz" Matsumoto en 1995. Ruby es utilizado principalmente para desarrollar aplicaciones web, aunque también se utiliza para desarrollar aplicaciones de escritorio y scripts de sistemas. Ruby es conocido por su sintaxis limpia y fácil de leer, y por su enfoque en la programación orientada a objetos. Es similar en estilo y sintaxis a otros lenguajes como Python o Perl. Ruby es utilizado en una gran variedad de proyectos, desde aplicaciones web hasta sistemas de automatización de pruebas, y en la creación de scripts de sistemas.

## 14. ¿Cual es la principal característica de Ruby?

La principal característica de Ruby es su enfoque en la expresividad y la legibilidad, lo que lo hace fácil de aprender y utilizar para los programadores.

## 15. ¿Cual es el constructor estándar?

El constructor estándar en Ruby es el método "initialize" que es automáticamente llamado cuando una nueva instancia de una clase es creada. Puede ser utilizado para inicializar las variables de instancia.

## 16. ¿Cómo se define un método en Ruby?

Se define un método en Ruby utilizando la palabra reservada "def" seguida del nombre del método y los parámetros entre paréntesis. El cuerpo del método se escribe dentro de las llaves. Ejemplo:
```Ruby 
def suma(a, b)
  return a + b
end
```

## 17. ¿Cuál es el separador de sentencias en Ruby?

El separador de sentencias en Ruby es el carácter "fin" al final de cada sentencia o bloque de código.

## 18. ¿Cómo se especifican comentarios en Ruby?

Se especifican comentarios en Ruby utilizando el carácter "#" al principio de la línea. Ejemplo:
```Ruby 
# Este es un comentario en Ruby
```

## 19. ¿Cómo se especifican las cadenas literales en Ruby?

Se especifican las cadenas literales en Ruby utilizando comillas simples o dobles. Ejemplo:
```Ruby
cadena = "Hola, soy una cadena en Ruby"
otra_cadena = 'También puedo ser una cadena en Ruby'
```

## 20. ¿Qué  se entiende por interpolación de expresiones? ¿Cuál es su sintaxis? ¿Cuál es su semántica?

La interpolación de expresiones en Ruby es una técnica para incluir expresiones dentro de cadenas utilizando el carácter "#{ }". La expresión dentro de los corchetes es evaluada y su valor se inserta en la cadena. Ejemplo:
```Ruby
x = 5
puts "El valor de x es #{x}" #Imprime "El valor de x es 5"
```

## 21. ¿Que indican los siguientes prefijos en la declaración de una variable?
$
@
@@

Los siguientes prefijos en la declaración de una variable en Ruby indican el nivel de acceso de la variable: 

- $ -> Variables globales 
- @ -> Variables de instancia 
- @@ -> Variables de clase

## 22.  ¿Cómo se definen los identificadores en Ruby?

Los identificadores en Ruby son nombres asignados a variables, métodos, clases, etc. Los identificadores en Ruby pueden contener letras, dígitos y el carácter "" (guión bajo), y deben comenzar con una letra o el carácter "". No se pueden utilizar palabras reservadas de Ruby como nombres de identificadores.

## 23. ¿Que es un array? ¿Cuál es la sintaxis para definirlos en Ruby?

Un array en Ruby es una colección ordenada de elementos, pueden contener diferentes tipos de datos. La sintaxis para definirlos es utilizando los corchetes [] y separando cada elemento con comas. Ejemplo:
```Ruby
mi_array = [1, 2, 3, 4, 5]
```


## 24. ¿Qué es un hash? ¿Cuál es la sintaxis para definirlos en Ruby?

Un hash en Ruby es una estructura de datos que almacena pares de valores clave-valor. La sintaxis para definirlos es utilizando las llaves {} y separando cada par con dos puntos :. Ejemplo:
```Ruby
mi_hash = { "clave1" => "valor1", "clave2" => "valor2" }
```

## 25. ¿Que es nil en Ruby?

*nil* en Ruby es el valor nulo, equivalente a null en otros lenguajes de programación. Representa que una variable no tiene valor asignado.

## 26. ¿Qué es un symbol? ¿Cuál es la sintaxis para definirlos en Ruby?

Un símbolo en Ruby es un identificador único que se utiliza para representar una cadena. Son similares a los identificadores en otros lenguajes de programación. La sintaxis para definirlos es utilizando dos puntos : seguido del nombre del símbolo. Ejemplo:
```Ruby :simbolo ```


## 27. ¿Qué números son 010, 0x1F, 0b1111?

010 es un número octal, 0x1F es un número hexadecimal y 0b1111 es un número binario.


## 28. ¿Es correcto escribir subguiones en un número (por ejemplo: 1_000_000)?

Sí, es correcto escribir subrayados en un número para mejorar la legibilidad del código. Por ejemplo, 1_000_000 es equivalente a 1000000.

## 29. ¿Cual es la sintaxis para definir sentencias condicionales en Ruby?

La sintaxis para definir sentencias condicionales en Ruby es utilizando la palabra reservada "if" seguida de la expresión a evaluar, y el cuerpo del bloque de código a ejecutar dentro de las llaves. Ejemplo:
```Ruby 
if x > 0
  puts "x es mayor a 0"
end
```


## 30. ¿Cual es la sintaxis para definir sentencias iterativas en Ruby?

La sintaxis para definir sentencias iterativas en Ruby es utilizando las palabras reservadas "while" o "for" seguidas de la expresión a evaluar, y el cuerpo del bloque de código a ejecutar dentro de las llaves. Ejemplo:
```Ruby
while x < 10
  puts x
  x += 1
end
```


## 31. ¿Cuál es la sintaxis para definir expresiones regulares en Ruby?

La sintaxis para definir expresiones regulares en Ruby es utilizando el caracter / seguido de la expresión regular y el caracter / o %r{} para delimitar la expresión regular. Ejemplo:

```Ruby 
mi_expresion_regular = /[A-Za-z0-9]*/
```

## 32. ¿Cual es el operador de emparejamiento (matching) en Ruby?

El operador de emparejamiento (matching) en Ruby es el método "=~" el cual se utiliza para comparar una expresión regular con una cadena y determinar si hay una coincidencia. Ejemplo:

```Ruby 
mi_cadena = "Hola mundo"
mi_expresion_regular = /[A-Za-z]*/
mi_cadena =~ mi_expresion_regular
```

## 33. ¿Que es un bloque de código (Code blocks)? ¿Cuál es la sintaxis para definirlos en Ruby?

Un bloque de código en Ruby es un conjunto de instrucciones que se pueden ejecutar como una unidad. La sintaxis para definirlos es mediante la palabra reservada "do" seguida del cuerpo del bloque y la palabra reservada "end" para cerrarlo. Ejemplo:
```Ruby
3.times do
  puts "Esta es una iteración"
end
```

También se pueden utilizar los símbolos "{" y "}" para definir bloques más cortos, Ejemplo:
```Ruby
3.times { puts "Esta es una iteración" }
```











