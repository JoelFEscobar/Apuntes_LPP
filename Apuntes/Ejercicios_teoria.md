# Ejercicios de teoría que pueden entrar en el examen



### ¿Qué modelos de programación se agrupan en el paradigma declarativo? ¿Por qué?

Los modelos de programación que se agrupan en el paradigma declarativo son: Prolog, SQL, XQuery, y algunos lenguajes funcionales como Haskell. Estos lenguajes son declarativos porque se enfocan en lo que el programa debe hacer, en lugar de cómo debe hacerlo. En lugar de especificar el orden en que las operaciones deben realizarse, los programas declarativos describen los datos y las relaciones entre ellos, y dejan al sistema el trabajo de determinar cómo ejecutar el programa de manera eficiente. Esta enfoque permite a los programadores escribir código más conciso y fácil de entender, y a menudo es utilizado en aplicaciones que involucran procesamiento de datos complejos, como bases de datos y sistemas expertos.

Es decir programación lógica y programación funcional

- Programación funcional: Este enfoque se centra en el uso de funciones matemáticas puras para resolver problemas de programación. Se basa en el uso de funciones que no tienen efectos secundarios y retornan valores. Esto permite una mayor facilidad de pruebas y una mayor escalabilidad.

- Programación lógica: Es un enfoque basado en la lógica matemática para resolver problemas de programación, se basa en la utilización de reglas y hechos para inferir conclusiones.

### ¿Qué caracteriza al modelo de programación funcional?

El modelo de programación funcional se caracteriza por las siguientes características:

  - Funciones puras: las funciones en programación funcional son puras, es decir, siempre devuelven el mismo resultado para los mismos argumentos y no tienen efectos secundarios. Esto significa que no modifican variables globales o estado externo, y no tienen side effects.

  - Inmutabilidad: en programación funcional, se evita la modificación de los datos. Se trabaja con datos inmutables, lo que significa que una vez que se crea un objeto, su valor no se puede modificar.

  - Composición de funciones: en programación funcional, se utiliza la técnica de composición de funciones para construir programas a partir de funciones más pequeñas y simples.

  - Evitando efectos secundarios: en programación funcional se evita el uso de efectos secundarios, como las modificaciones de las variables globales o el acceso a una base de datos, lo que facilita la paralelización, concurrencia y la depuración de los programas.

  - Currying y Patter matching : una técnica utilizada en programación funcional es el currying, consiste en la transformación de una función de varios argumentos en una serie de funciones que toman un solo argumento. 

### ¿Qué caracteriza al modelo de programación imperativa?

El modelo de programación imperativo se caracteriza por:

- El uso de variables y estructuras de control de flujo (como condicionales y bucles) para manipular los datos.
  
- La ejecución de acciones o órdenes que modifican el estado del programa.
  
- El uso de efectos secundarios, es decir, las acciones que modifican el estado del programa y tienen un impacto en el sistema en general y no solo en el valor de las variables.
  
- El uso de procedimientos o funciones para encapsular lógica y reutilizar código.
  
- En general se basa en una forma de programación en la que el programador tiene un control explícito sobre el estado de la computadora y el control de flujo de la ejecución del programa.

Los lenguajes de programación que siguen este modelo incluyen C, C++, Java, Python, entre otro

### ¿Qué caracteriza al modelo de programación Declarativo?

El modelo de programación declarativo se caracteriza por:

  - El enfoque en describir qué se quiere lograr en lugar de cómo se logra.
  
  - La ausencia de efectos secundarios, lo que significa que las acciones no tienen impacto en el sistema en general y solo en el valor de las variables.
  
  - La utilización de patrones y relaciones entre variables para inferir el resultado deseado.
  
  - El uso de funciones puras, es decir, funciones que no tienen efectos secundarios y siempre devuelven el mismo resultado dado el mismo conjunto de parámetros.
  
  - La capacidad de resolver problemas mediante la descripción de un conjunto de restricciones y reglas en lugar de mediante la especificación de un algoritmo detallado.

Los lenguajes de programación que siguen este modelo incluyen Haskell, Prolog, Lisp, SQL y XSLT, entre otros.

### ¿Qué caracteriza al modelo de programación orientado a objetos?

El modelo de programación orientado a objetos se caracteriza por:

  - La organización de la lógica en objetos, los cuales representan entidades del mundo real o conceptos del problema a resolver.
  
  - La encapsulación de los datos y las funciones dentro de los objetos, lo que permite ocultar la complejidad interna y proporcionar una interfaz pública para interactuar con ellos.
  
  - El uso de herencia y polimorfismo para crear jerarquías de objetos y permitir la reutilización de código.
  
  - La programación basada en mensajes, donde los objetos interactúan entre sí enviándose mensajes y ejecutando acciones en respuesta a ellos.
  
  - El uso de clases y objetos como una forma de programación modular.

Los lenguajes de programación que siguen este modelo incluyen Java, C++, Python, C#, entre otros.

### ¿Qué caracteriza al modelo de programación lógica?

El modelo de programación lógico se caracteriza por su enfoque en la representación de conocimiento y la resolución de problemas mediante inferencia lógica. Los programas en lenguajes lógicos están escritos en forma de reglas y hechos, que describen relaciones entre conceptos y propiedades. Estas reglas y hechos se utilizan para deducir nuevos conocimientos a partir de la información ya conocida.

Los lenguajes lógicos son altamente expresivos y pueden manejar conceptos abstractos y relaciones complejas con facilidad. Además, estos lenguajes suelen tener un mecanismo de inferencia automático, que permite al programa encontrar soluciones a problemas mediante la aplicación de reglas lógicas.

El lenguaje lógico más conocido es Prolog, que se utiliza en aplicaciones como la inteligencia artificial, el procesamiento del lenguaje natural, y la gestión de bases de datos. Sin embargo, hay otros lenguajes lógicos como Datalog, Mercury, y Oz.

En resumen, el modelo de programación lógico se caracteriza por representar el conocimiento mediante reglas y hechos, y utilizar inferencia lógica para encontrar soluciones a problemas.

### Considere los lenguajes de programación imperativos. ¿Cómo se distribuye la memoria de ejecución?

En los lenguajes de programación imperativos, la memoria de ejecución se distribuye principalmente en dos áreas: el stack y el heap.

El stack es una estructura de datos de orden LIFO (Last In First Out) que almacena las variables locales de las funciones, las direcciones de retorno y los argumentos. El stack es utilizado por el sistema para llevar un registro de la ejecución de las funciones, y su tamaño se asigna y libera automáticamente por el compilador.

El heap, por otro lado, es una zona de la memoria dinámica que se utiliza para almacenar datos que se crean y destruyen durante la ejecución del programa. El heap se maneja de manera manual mediante la asignación y liberación de memoria (malloc, calloc, free, etc.).

En general, el stack se utiliza para almacenar variables locales y el heap para almacenar objetos y estructuras de datos dinámicas. A menudo, las variables locales son almacenadas en el stack porque su vida es corta y su tamaño es conocido, mientras que los objetos y estructuras de datos dinámicas son almacenadas en el heap, ya que su vida puede ser más prolongada y su tamaño puede variar durante la ejecución del programa. Sin embargo, esto varia dependiendo del lenguaje y cada uno tiene sus propias reglas y características.

### Considere los lenguajes de programación imperativos. ¿Qué establece el teorema de fundamental de la programación estructurada?

El teorema fundamental de la programación estructurada establece que todo programa escrito en un lenguaje de programación imperativo se puede dividir en tres construcciones básicas: secuencia, selección e iteración.

La construcción de secuencia se refiere a la ejecución de una serie de instrucciones una detrás de otra, en el orden en que aparecen en el programa. Esta construcción se utiliza para describir el flujo de ejecución normal de un programa.

La construcción de selección se refiere a la capacidad de tomar decisiones en un programa, mediante la evaluación de condiciones. Esta construcción se utiliza para describir las ramificaciones en el flujo de ejecución de un programa, y se implementa mediante instrucciones como if-else y switch-case.

La construcción de iteración se refiere a la capacidad de repetir una secuencia de instrucciones varias veces, mediante la evaluación de una condición. Esta construcción se utiliza para describir bucles y repeticiones en el flujo de ejecución de un programa, y se implementa mediante instrucciones como while, for, y do-while.

En resumen, el teorema fundamental de la programación estructurada establece que cualquier programa escrito en un lenguaje de programación imperativo puede ser dividido en tres construcciones básicas: secuencia, selección e iteración. Estas construcciones son suficientes para describir cualquier algoritmo complejo y se considera la base de la programación estructurada.

### Considere los lenguajes de programación orientados a objetos. ¿Qué diferencia a las variables de instancia de las variables de clase?

En los lenguajes de programación orientados a objetos, las variables de instancia (también conocidas como atributos o campos) son aquellas que se asocian con una instancia específica de una clase. Cada vez que se crea una nueva instancia de una clase, se asigna un espacio de memoria para almacenar los valores de las variables de instancia de esa instancia. Por lo tanto, el valor de una variable de instancia puede ser diferente para cada instancia de una clase.

Por otro lado, las variables de clase (también conocidas como variables estáticas) son aquellas que se asocian con la clase en sí, en lugar de con una instancia específica. Sólo existe una copia de una variable de clase para todas las instancias de una clase, y su valor es compartido entre todas las instancias. Por lo tanto, si se modifica el valor de una variable de clase en una instancia, este cambio se reflejará en todas las demás instancias de la clase.

En resumen, la principal diferencia entre las variables de instancia y las variables de clase es que las variables de instancia están asociadas con una instancia específica de una clase, mientras que las variables de clase están asociadas con la clase en sí y son compartidas por todas las instancias de la misma.


### Considere el lenguaje de programación orientado a objetos ‘Ruby’. Describa el algoritmo de búsqueda de métodos. (Dar por sentado que cae)

Cuando llamamos a un método siempre buscará en el siguiente orden:

- 1. Métodos de instancia (Objeto)
- 2. Métodos de clase  (Clase)
- 3. Módulos incluidos  (Módulo)
- 4. Repite los pasos del 1 al 3 en el Padre


### Considere los lenguajes de programación funcional. ¿Qué es la memoization?

La memoization es una técnica de optimización utilizada en programación funcional para mejorar el rendimiento de funciones puras y recursivas. Una función pura es aquella que siempre devuelve el mismo resultado para los mismos argumentos, y no tiene efectos secundarios.

La idea detrás de la memoization es almacenar en caché los resultados de una función para evitar tener que volver a calcularlos si se vuelve a llamar con los mismos argumentos. De esta manera, si una función pura recursiva se llama con los mismos argumentos varias veces, en lugar de tener que volver a calcular el resultado, se puede recuperar rápidamente de la caché.

La memoization se puede implementar de varias maneras, pero a menudo se hace mediante el uso de un diccionario o una tabla hash para almacenar los resultados de la función. Cada vez que se llama a la función, se comprueba si el resultado ya está en caché, y si es así, se devuelve el resultado almacenado en caché, en lugar de volver a calcularlo.

En resumen, la memoization es una técnica de optimización utilizada en programación funcional para mejorar el rendimiento de funciones puras y recursivas almacenando en caché los resultados de la función para evitar tener que volver a calcularlos si se vuelve a llamar con los mismos argumentos.

A continuación se presenta un ejemplo de cómo se podría memoizar una función recursiva para calcular el factorial de un número:
```Ruby
  # Creamos un diccionario para almacenar los resultados de la función
  $cache = {}

  # Definimos la función recursiva para calcular el factorial
  def factorial(n)
    # Si el resultado ya está en caché, lo devolvemos
    return $cache[n] if $cache.has_key?(n)
    
    # Si n es 0 o 1, el factorial es 1
    if n == 0 || n == 1
      result = 1
    else
      # Si no está en caché, lo calculamos
      result = n * factorial(n-1)
    end
    
    # Almacenamos el resultado en caché
    $cache[n] = result
    result
  end
```
En este ejemplo, creamos un diccionario global `$cache` para almacenar los resultados de la función factorial. Cada vez que se llama a la función, se comprueba si el resultado ya está en caché utilizando el método `has_key?`. Si el resultado ya está en caché, se devuelve el resultado almacenado en caché. Si no está en caché, se calcula el resultado y se almacena en caché para su uso futuro.

Es importante mencionar que en este ejemplo se usó una variable global para almacenar la caché, pero es posible hacerlo de otras formas como, utilizando una variable de instancia de la clase, una variable de clase, o una variable de bloque.

### Considere los lenguajes de programación funcional. ¿Qué es el currying?


El currying es una técnica de programación funcional que consiste en transformar una función que toma varios argumentos en una serie de funciones que toman un solo argumento. Es una técnica muy utilizada en lenguajes funcionales para hacer el código más legible y fácil de entender, así como para facilitar la composición de funciones.

Un ejemplo de cómo se podría currificar una función en Ruby sería el siguiente:

```Ruby
  # Definimos la función que toma dos argumentos
  def add(x, y)
    x + y
  end

  # La currificamos para que tome un solo argumento
  add_curried = -> (x) { -> (y) { add(x, y) } }
```
En este ejemplo, la función add toma dos argumentos (x, y) y devuelve su suma. La versión currificada de esta función, add_curried, toma un solo argumento (x) y devuelve una función que toma un segundo argumento (y) y devuelve la suma de x e y.

La ventaja de currificar una función es que permite aplicar un argumento de la función antes de llamarla, y esto puede ser util para crear funciones más específicas y fáciles de reutilizar. Por ejemplo, si queremos llamar a la función add_curried con el primer argumento siendo siempre 5, se podría hacer de la siguiente forma:

```Ruby
add_5 = add_curried.call(5)
add_5.call(3) # 8
add_5
```