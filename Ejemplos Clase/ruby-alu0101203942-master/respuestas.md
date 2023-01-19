<pre>
---------Preguntas desde la 35 a la 67----------

35 ¿Que diferencia hay entre "\t\n" y ’\t\n’?

  Si escribo "\t\n" el intérprete escribe "\t\n"
  Si escribo '\t\n' el interprete escribe "\\t\\n"

36 ¿Cómo funciona %q? ¿Que es %q{hello world\n}? ¿Que es %q{’a’ ’b’ ’c’}?  

  > %q{hello world\n}
  => "hello world\\n" 
  > %q{'a' 'b' 'c'}
  => "'a' 'b' 'c'" 

37. ¿Como funciona %Q? ¿Que es %Q{hello world\n}? ¿Qu´e es %Q{"a" "b" "c"}?

 > %Q{hello world\n}
  => "hello world\n" 
 > %Q{'a' 'b' 'c'}
  => "'a' 'b' 'c'" 

38. ¿Qué queda en c?

  "--4--\n--2--\n" 

39 ¿Qué queda en c?

  "--4--\n--2--\n"

40  s = "hello". ¿Cual es el valor de las siguientes expresiones?

  s = "hello"
  => "hello"
 
  > s[0,2]
  => "he" 

  > s[-1,1]
  => "o"
 
  > s[0,10]
  => "hello"

41 ¿Que queda en g?

 g = "helloworld"

42 ¿Que queda en e?

 e = "..."

43 ¿Cual es el resultado?

   > a = 1
    => 1 
   > "#{a=a+1} "*3 
    => "2 2 2 " 

44 ¿Que es esto? %w[this is a test]

 > ["this", "is", "a", "test"]

45 ¿Que es esto? %w[\t \n]

 > ["\t", "\n"] 

46. ¿Que es esto? %W[\t \n]

47. ¿Que contiene nils? nils = Array.new(3)
  
  >[nil, nil, nil]

48. ¿Que contiene zeros? zeros = Array.new(3, 0)

 => [0, 0, 0]

49. ¿Que queda en b?
 => [0, 2, 4]  


50. ¿Que queda en c?
  => [0, 2, 4]  

51. ¿Cual es el resultado de cada una de estas operaciones?
   a[1,1] => ["b"]
   a[-2,2] => ["d", "e"]
   a[0..2] => ["a", "b", "c"]
   a[0...1] => ["a"]
   a[-2..-1] => ["d", "e"]      


52. ¿Cual es el resultado de cada una de estas operaciones?

   Da error porque la variable a no existe.

53. ¿Cual es el resultado de cada una de estas operaciones?

   Da error porque la variable a no existe.

54. ¿Cual es el resultado de cada una de estas operaciones?

  x = %w{a b c b a} => ["a", "b", "c", "b", "a"] 
  x = x - %w{b c d} => ["a", "a"]

55. ¿Cual es el resultado de cada una de estas operaciones?

  z = [0]*8 => [0, 0, 0, 0, 0, 0, 0, 0]

56. ¿Cual es el resultado de cada una de estas operaciones?
  a = [] => []
  a << 1 => [1]
  a << 2 << 3 => [1, 2, 3]
  a << [4, 5, 6] => [1, 2, 3, [4, 5, 6]]
  a.concat [7, 8] => [1, 2, 3, [4, 5, 6], 7, 8]

57. ¿Cual es el resultado de cada una de estas operaciones?
  
  c = a | b => [1, 2, 3, 4, 5]
  c = b | a => [5, 4, 3, 2, 1]
  e = a & b => [2, 3, 4]
  f = b & a => [4, 3, 2]

58. ¿Que resultados dan las siguientes operaciones?
 3.0.0 :001 > a = 1..10                                                                                                                                                       
    => 1..10                                                                                                                                                                   
 3.0.0 :002 > a.class                                                                                                                                                         
    => Range                                                                                                                                                                   
 3.0.0 :003 > a.to_a                                                                                                                                                          
    => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]                                                                                                                                         
 3.0.0 :004 > b = 1...10                                                                                                                                                      
    => 1...10                                                                                                                                                                  
 3.0.0 :005 > b.to_a                                                                                                                                                          
    => [1, 2, 3, 4, 5, 6, 7, 8, 9]                                                                                                                                             
 3.0.0 :006 > b.include? 10                                                                                                                                                   
    => false                                                                                                                                                                   
 3.0.0 :007 > b.include? 8                                                                                                                                                    
    => true                                                                                                                                                                    
 3.0.0 :008 > b.step(2) {|x| print "#{x} " }                                                                                                                                 
 1 3 5 7 9  => 1...10                                                                                                                                                        
 3.0.0 :009 > 1..3.to_a                                                                                                                                                      
    Traceback (most recent call last):                                                                                                                                                  
    6: from /home/usuario/.rvm/rubies/ruby-3.0.0/bin/ruby_executable_hooks:22:in `<main>'                                                                                       
    5: from /home/usuario/.rvm/rubies/ruby-3.0.0/bin/ruby_executable_hooks:22:in `eval'                                                                                         
    4: from /home/usuario/.rvm/rubies/ruby-3.0.0/bin/irb:23:in `<main>'                                                                                                         
    3: from /home/usuario/.rvm/rubies/ruby-3.0.0/bin/irb:23:in `load'                                                                                                           
    2: from /home/usuario/.rvm/rubies/ruby-3.0.0/lib/ruby/gems/3.0.0/gems/irb-1.3.0/exe/irb:11:in `<top (required)>'                                                            
    1: from (irb):9:in `<main>'                                                                                                                                         
    NoMethodError (undefined method `to_a' for 3:Integer)                                                                                                                       
    Did you mean?  
        to_c                                                                                                                                                                        
        to_r                                                                                                                                                                        
        to_f                                                                                                                                                                        
        to_i                                                                                                                                                                        
        to_s                                                                                                                                                         
 3.0.0 :010 > exit

59. ¿Que resultados dan las siguientes operaciones?

3.0.0 :001 > r = 0...100                                                                                                                                                     
 => 0...100                                                                                                                                                                 
 3.0.0 :002 > r.member? 50                                                                                                                                                    
 => true                                                                                                                                                                    
 3.0.0 :003 > r.include? 99.9                                                                                                                                                 
 => true                                                                                                                                                                    
 3.0.0 :004 > r.member? 99.9                                                                                                                                                  
 => true                                                                                                                                                                    
 3.0.0 :005 > exit 


60. ¿Que resultados dan las siguientes operaciones?

 3.0.0 :001 > true.class                                                                                                                                                      
 => TrueClass                                                                                                                                                               
 3.0.0 :002 > false.class                                                                                                                                                     
 => FalseClass                                                                                                                                                              
 3.0.0 :003 > puts "hello" if 0                                                                                                                                              
 hello                                                                                                                                                                        
 => nil                                                                                                                                                                     
 3.0.0 :004 > puts "hello" if ""                                                                                                                                            
    (irb):4: warning: string literal in condition                                                                                                                               
     hello                                                                                                                                                                        
     => nil                                                                                                                                                                     
 3.0.0 :005 > exit 


61. ¿Que resultados dan las siguientes operaciones?

 3.0.0 :001 > x = :sym                                                                                                                                                        
    => :sym                                                                                                                                                                    
 3.0.0 :002 > x.class                                                                                                                                                         
    => Symbol                                                                                                                                                                  
 3.0.0 :003 > x == :sym                                                                                                                                                       
    => true                                                                                                                                                                    
 3.0.0 :004'> z = :'a long symbol'                                                                                                                                            
    => :"a long symbol"                                                                                                                                                        
 3.0.0 :005 > z.class                                                                                                                                                         
    => Symbol                                                                                                                                                                  
 3.0.0 :006 > x == 'sym'.to_s                                                                                                                                                 
    => false                                                                                                                                                                   
 3.0.0 :007 > x.to_s = 'sym'                                                                                                                                                 
    Traceback (most recent call last):                                                                                                                                                  
    6: from /home/usuario/.rvm/rubies/ruby-3.0.0/bin/ruby_executable_hooks:22:in `<main>'                                                                                       
    5: from /home/usuario/.rvm/rubies/ruby-3.0.0/bin/ruby_executable_hooks:22:in `eval'                                                                                         
    4: from /home/usuario/.rvm/rubies/ruby-3.0.0/bin/irb:23:in `<main>'                                                                                                         
    3: from /home/usuario/.rvm/rubies/ruby-3.0.0/bin/irb:23:in `load'                                                                                                           
    2: from /home/usuario/.rvm/rubies/ruby-3.0.0/lib/ruby/gems/3.0.0/gems/irb-1.3.0/exe/irb:11:in `<top (required)>'                                                            
    1: from (irb):7:in `<main>'                                                                                                                                         
    NoMethodError (undefined method `to_s=' for :sym:Symbol)                                                                                                                    
    Did you mean?  to_s                                                                                                                                                                        
    to_sym                                                                                                                                                       
 3.0.0 :008 > exit


62. ¿Que resultados se dan?
  
    s = "Ruby" => "Ruby"
    t = s  => "Ruby"
    t[-1] = "" => ""
    print s => Rub => nil
    t = "Java" => "Java"
    print s, t => RubJava => nil
    


63. ¿Cual es el resultado?

   "%d %s" % [3, "rubies"] => "3 rubies"

64. ¿Cuales son los resultados?

   x,y = 4, 5 => [4, 5]
   z = x > y ? x : y => 5
   x,y,z = [1,2,3]


65. ¿Que resultados dan las siguientes operaciones?

   x = { :a => 1, :b => 2} => {:a=>1, :b=>2}
   x.keys => [:a, :b]
   x.values => [1, 2]
   x[:c] = 3 => 3
   x => {:a=>1, :b=>2, :c=>3}
   x.delete(:a) => 1
   x => {:b=>2, :c=>3}
   x = { :a=>1, :b=>2, :c=>4 } => {:a=>1, :b=>2, :c=>4}
   x.delete_if { |k,v| v % 2 == 0 } => {:a=>1}
   x => {:a=>1}


66. ¿Que hace la siguiente sentencia? counts = Hash.new(0) ¿Que diferencia hay con la asignaci´on
counts = {}?
  => {}

67. ¿Que retorna esta expresion regular? ’hello world, hello LPP’.scan /\w+/
 
  =>["hello", "world, "hello", "LPP"]

</pre>

