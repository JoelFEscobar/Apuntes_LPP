<pre>

 * Práctica 6 - Desarrollo dirigido por Pruebas_TDD

 * Laura González González

1.Primera prueba:Preguntar por el fichero que ha de contener la clase
	rspec spec/matrices_spec.rb

	An error occurred while loading ./spec/matrices_spec.rb. - Did you mean?
                rspec ./spec/spec_helper.rb


	Failure/Error: require 'matrices'

	LoadError:  
    	cannot load such file -- matrices
    	Did you mean? matrix
	# ./spec/matrices_spec.rb:1:in `<top (required)>'
	No examples found.


	Finished in 0.00005 seconds (files took 0.25303 seconds to load)
	0 examples, 0 failures, 1 error occurred outside of examples

2.Se crea el fichero y pasa la prueba
	rspec spec/matrices_spec.rb
	No examples found.



	Finished in 0.00058 seconds (files took 0.17068 seconds to load)
	0 examples, 0 failures

3.Debe existir una clase para representar una matriz:

	$ cat matrices_spec.rb
	require 'matrices'

	describe Matrices do
	end 

	$ rake
	rspec spec/matrices_spec.rb

	An error occurred while loading ./spec/matrices_spec.rb.

	Failure/Error:

	describe Matrices do
	end                                                                                                                                                                                                                                                                                        NameError:                                                                                                   uninitialized constant Matrices
	# ./spec/matrices_spec.rb:3:in `<top (required)>'
	No examples found.


	Finished in 0.00007 seconds (files took 0.22917 seconds to load)
	0 examples, 0 failures, 1 error occurred outside of examples 



4. Se arregla el fallo que produce la segunda prueba

	$ cat matrices.rb
	class Matrices
	end 

	$ rake
	rspec spec/matrices_spec.rb
	No examples found.

	Finished in 0.00041 seconds (files took 0.17645 seconds to load)
	0 examples, 0 failures    

5. Debe existir una forma de inicializar un punto (tercera prueba):

	$ cat matrices_spec.rb
	require 'matrices'
	#Permite agrupar prebas
	describe Matrices do

  	#Describe la prueba
  	it "Se espera que se pueda inicializar la matriz" do
    		expect(Matrices.new(2,2,[[1,2],[3,4]])).not_to eq(nil)
  	end


	end

	rspec spec/matrices_spec.rb
	F

	Failures:

  	1) Matrices Se espera que se pueda inicializar la matriz
     	Failure/Error: expect(Matrices.new(2,2,[[1,2],[3,4]])).not_to eq(nil)

     	ArgumentError:
       	wrong number of arguments (given 3, expected 0)
     	# ./spec/matrices_spec.rb:7:in `initialize'
    	 # ./spec/matrices_spec.rb:7:in `new'
     	# ./spec/matrices_spec.rb:7:in `block (2 levels) in <top (required)>'

	Finished in 0.00467 seconds (files took 0.17525 seconds to load)
	1 example, 1 failure



6. Se arregla el fallo que produce la tercera prueba:

	$ cat matrices.rb
	class Matrices

  	def initialize(fil,col,matriz)
        	@fil=fil
        	@col=col
        	@matriz=matriz
	end
	end

	$ rake
	(in /home/usuario/LPP/Practica_6)
	rspec spec/matrices_spec.rb
	.

	Finished in 0.0049 seconds (files took 0.17132 seconds to load)
	1 example, 0 failures
	
7. Se arregla el fallo que produce la tercera prueba:

        $ cat matrices.rb
        class Matrices

        def initialize(fil,col,matriz)
                @fil=fil
                @col=col
                @matriz=matriz
        end
        end

        $ rake
        (in /home/usuario/LPP/Practica_6)
        rspec spec/matrices_spec.rb
        .

        Finished in 0.0049 seconds (files took 0.17132 seconds to load)
        1 example, 0 failures

8. Debe existir una forma de acceder a la matriz (cuarta prueba):


        $ cat matrices_spec.rb
        require 'matrices'
        #Permite agrupar prebas
        describe Matrices do
        before :each do
        @A = Matrices.new(3,3,[[1,2,3],[4,5,6],[7,8,9]])
        end
        #Describe la prueba
        it "Se espera que se pueda inicializar la matriz" do
            expect(Matrices.new(2,2,[[1,2],[3,4]])).not_to eq(nil)
        end

        it "Se espera acceder a los elementos con los getters" do
                expect(@A.fil).to eq(3)
                expect(@A.col).to eq(3)
                expect(@A.matriz).to eq([[1,2,3],[4,5,6],[7,8,9]])
        end

        end

        $ rake
        (in /home/usuario/LPP/Practica_6)
        rspec spec/matrices_spec.rb

        An error occurred while loading ./spec/matrices_spec.rb.
        Failure/Error: __send__(method, file)

        SyntaxError:
        /home/usuario/LPP/Practica_6/spec/matrices_spec.rb:6: syntax error, unexpected `end', expecting ')'
        end
        ^~~
        # /home/usuario/.rvm/gems/ruby-3.0.0/gems/rspec-core-3.10.1/lib/rspec/core/configuration.rb:2112:in `load'
        # /home/usuario/.rvm/gems/ruby-3.0.0/gems/rspec-core-3.10.1/lib/rspec/core/configuration.rb:2112:in `load_file_handling_errors'
        # /home/usuario/.rvm/gems/ruby-3.0.0/gems/rspec-core-3.10.1/lib/rspec/core/configuration.rb:1615:in `block in load_spec_files'
        # /home/usuario/.rvm/gems/ruby-3.0.0/gems/rspec-core-3.10.1/lib/rspec/core/configuration.rb:1613:in `each'
        # /home/usuario/.rvm/gems/ruby-3.0.0/gems/rspec-core-3.10.1/lib/rspec/core/configuration.rb:1613:in `load_spec_files'
        # /home/usuario/.rvm/gems/ruby-3.0.0/gems/rspec-core-3.10.1/lib/rspec/core/runner.rb:102:in `setup'
        # /home/usuario/.rvm/gems/ruby-3.0.0/gems/rspec-core-3.10.1/lib/rspec/core/runner.rb:86:in `run'
        # /home/usuario/.rvm/gems/ruby-3.0.0/gems/rspec-core-3.10.1/lib/rspec/core/runner.rb:71:in `run'
        # /home/usuario/.rvm/gems/ruby-3.0.0/gems/rspec-core-3.10.1/lib/rspec/core/runner.rb:45:in `invoke'
        # /home/usuario/.rvm/gems/ruby-3.0.0/gems/rspec-core-3.10.1/exe/rspec:4:in `<top (required)>'
        # /home/usuario/.rvm/gems/ruby-3.0.0/bin/rspec:23:in `load'
        # /home/usuario/.rvm/gems/ruby-3.0.0/bin/rspec:23:in `<main>'
        #
        #   Showing full backtrace because every line was filtered out.
        #   See docs for RSpec::Configuration#backtrace_exclusion_patterns and
        #   RSpec::Configuration#backtrace_inclusion_patterns for more information.
        No examples found.


        Finished in 0.00005 seconds (files took 0.43488 seconds to load)
        0 examples, 0 failures, 1 error occurred outside of examples



8. Se arregla el fallo que produce la cuarta prueba:

        $ cat matrices.rb
        class Matrices
        attr_reader :fil, :col, :matriz
        def initialize(fil,col,matriz)
                @fil=fil
                @col=col
                @matriz=matriz
        end

        end


        $ rake
        (in /home/usuario/LPP/Practica_6)
        rspec spec/matrices_spec.rb
        ..

        Finished in 0.00515 seconds (files took 0.17799 seconds to load)
        2 examples, 0 failures


9. Debe existir el to_s


        $ cat matrices_spec.rb
        require 'matrices'
        #Permite agrupar prebas
        describe Matrices do
        before :each do
                @A = Matrices.new(3,3,[[1,2,3],[4,5,6],[7,8,9]])
        end
        #Describe la prueba
        it "Se espera que se pueda inicializar la matriz" do
            expect(Matrices.new(2,2,[[1,2],[3,4]])).not_to eq(nil)
        end

        it "Se espera acceder a los elementos con los getters" do
                expect(@A.fil).to eq(3)
                expect(@A.col).to eq(3)
                expect(@A.matriz).to eq([[1,2,3],[4,5,6],[7,8,9]])
        end
        it "Se espera que se pueda representar como un string" do
                expect(@A.to_s).to eq("[[1, 2, 3], [4, 5, 6], [7, 8, 9]]")
        end

        end

        $ rake
        (in /home/usuario/LPP/Practica_6)
        rspec spec/matrices_spec.rb
        ..F

        Failures:

        1) Matrices Se espera que se pueda representar como un string
            Failure/Error: expect(@A.to_s).to eq("[[1, 2, 3], [4, 5, 6], [7, 8, 9]]")

            expected: "[[1, 2, 3], [4, 5, 6], [7, 8, 9]]"
                    got: "#<Matrices:0x000056159edfa570>"

            (compared using ==)
            # ./spec/matrices_spec.rb:18:in `block (2 levels) in <top (required)>'

        Finished in 0.02412 seconds (files took 0.17299 seconds to load)
        3 examples, 1 failure

        Failed examples:

        rspec ./spec/matrices_spec.rb:17 # Matrices Se espera que se pueda representar como un string

10. Se arregla el fallo del la prueba del to_s

        $ cat matrices.rb
        class Matrices
        attr_reader :fil, :col, :matriz
        def initialize(fil,col,matriz)
                @fil=fil
                @col=col
                @matriz=matriz
        end
        def to_s
                "#{@matriz}"
        end


        end

        $ rake
        (in /home/usuario/LPP/Practica_6)
        rspec spec/matrices_spec.rb
        ...

        Finished in 0.0058 seconds (files took 0.21564 seconds to load)
        3 examples, 0 failures


11. Se añade la prueba para la suma

        $ cat matrices_spec.rb
        require 'matrices'
        #Permite agrupar prebas
        describe Matrices do
        before :each do
                @A = Matrices.new(3,3,[[1,2,3],[4,5,6],[7,8,9]])
                @B = Matrices.new(3,3,[[1,2,3],[1,2,3],[1,1,0]]
        end
        #Describe la prueba
        it "Se espera que se pueda inicializar la matriz" do
            expect(Matrices.new(2,2,[[1,2],[3,4]])).not_to eq(nil)
        end

        it "Se espera acceder a los elementos con los getters" do
                expect(@A.fil).to eq(3)
                expect(@A.col).to eq(3)
                expect(@A.matriz).to eq([[1,2,3],[4,5,6],[7,8,9]])
        end
        it "Se espera que se pueda representar como un string" do
                expect(@A.to_s).to eq("[[1, 2, 3], [4, 5, 6], [7, 8, 9]]")
        end

        it "Se espera que se puedan sumar dos matrices" do
                expect((@A+@B).to_s).to eq("[[2, 4, 6], [5, 7, 9], [8, 9, 9]]")
        end

        end

        $ rake
        (in /home/usuario/LPP/Practica_6)
        rspec spec/matrices_spec.rb

        An error occurred while loading ./spec/matrices_spec.rb.
        Failure/Error: __send__(method, file)

        SyntaxError:
        /home/usuario/LPP/Practica_6/spec/matrices_spec.rb:7: syntax error, unexpected `end', expecting ')'
            end
            ^~~
        /home/usuario/LPP/Practica_6/spec/matrices_spec.rb:26: syntax error, unexpected end-of-input, expecting `end'
        # /home/usuario/.rvm/gems/ruby-3.0.0/gems/rspec-core-3.10.1/lib/rspec/core/configuration.rb:2112:in `load'
        # /home/usuario/.rvm/gems/ruby-3.0.0/gems/rspec-core-3.10.1/lib/rspec/core/configuration.rb:2112:in `load_file_handling_errors'
        # /home/usuario/.rvm/gems/ruby-3.0.0/gems/rspec-core-3.10.1/lib/rspec/core/configuration.rb:1615:in `block in load_spec_files'
        # /home/usuario/.rvm/gems/ruby-3.0.0/gems/rspec-core-3.10.1/lib/rspec/core/configuration.rb:1613:in `each'
        # /home/usuario/.rvm/gems/ruby-3.0.0/gems/rspec-core-3.10.1/lib/rspec/core/configuration.rb:1613:in `load_spec_files'
        # /home/usuario/.rvm/gems/ruby-3.0.0/gems/rspec-core-3.10.1/lib/rspec/core/runner.rb:102:in `setup'
        # /home/usuario/.rvm/gems/ruby-3.0.0/gems/rspec-core-3.10.1/lib/rspec/core/runner.rb:86:in `run'
        # /home/usuario/.rvm/gems/ruby-3.0.0/gems/rspec-core-3.10.1/lib/rspec/core/runner.rb:71:in `run'
        # /home/usuario/.rvm/gems/ruby-3.0.0/gems/rspec-core-3.10.1/lib/rspec/core/runner.rb:45:in `invoke'
        # /home/usuario/.rvm/gems/ruby-3.0.0/gems/rspec-core-3.10.1/exe/rspec:4:in `<top (required)>'
        # /home/usuario/.rvm/gems/ruby-3.0.0/bin/rspec:23:in `load'
        # /home/usuario/.rvm/gems/ruby-3.0.0/bin/rspec:23:in `<main>'
        #
        #   Showing full backtrace because every line was filtered out.
        #   See docs for RSpec::Configuration#backtrace_exclusion_patterns and
        #   RSpec::Configuration#backtrace_inclusion_patterns for more information.
        No examples found.


        Finished in 0.00005 seconds (files took 0.37673 seconds to load)
        0 examples, 0 failures, 1 error occurred outside of examples


12. Se añade el código de la suma y pasa la prueba

        $ cat matrices.rb
        class Matrices
        attr_reader :fil, :col, :matriz
        def initialize(fil,col,matriz)
                @fil=fil
                @col=col
                @matriz=matriz
        end
        def to_s
                "#{@matriz}"
        end
        def +(a)
                matriz_resultado=Array.new(@fil) {Array.new(a.col, 0)}
                for i in 0..a.fil - 1
                for j in 0..a.col - 1
                    matriz_resultado[i][j]=@matriz[i][j] + a.matriz[i][j]
                    end
                    end
                Matrices.new(a.fil, a.col, matriz_resultado)
            end

        end

        $ rake
        (in /home/usuario/LPP/Practica_6)
        rspec spec/matrices_spec.rb
        ....

        Finished in 0.00588 seconds (files took 0.18696 seconds to load)
        4 examples, 0 failures



13. Se añade la prueba de la traspuesta

        $ cat matrices_spec.rb
        require 'matrices'
        #Permite agrupar prebas
        describe Matrices do
        before :each do
                @A = Matrices.new(3,3,[[1,2,3],[4,5,6],[7,8,9]])
                @B = Matrices.new(3,3,[[1,2,3],[1,2,3],[1,1,0]])
                @C = Matrices.new(3,3,[[2, 4, 6], [5, 7, 9], [8, 9, 9]])
        end
        #Describe la prueba
        it "Se espera que se pueda inicializar la matriz" do
            expect(Matrices.new(2,2,[[1,2],[3,4]])).not_to eq(nil)
        end

        it "Se espera acceder a los elementos con los getters" do
                expect(@A.fil).to eq(3)
                expect(@A.col).to eq(3)
                expect(@A.matriz).to eq([[1,2,3],[4,5,6],[7,8,9]])
        end
        it "Se espera que se pueda representar como un string" do
                expect(@A.to_s).to eq("[[1, 2, 3], [4, 5, 6], [7, 8, 9]]")
        end

        it "Se espera que se puedan sumar dos matrices" do
                expect((@A+@B).to_s).to eq(@C.to_s)
        end

        it "Se espera que se pueda hacer la traspuesta" do
                expect((@A.traspuesta.to_s).to eq("[[1, 4, 7], [2, 5, 8], [3, 6, 9]]")
        end
        end

        $ rake
        (in /home/usuario/LPP/Practica_6)
        rspec spec/matrices_spec.rb

        An error occurred while loading ./spec/matrices_spec.rb.
        Failure/Error: __send__(method, file)

        SyntaxError:
        /home/usuario/LPP/Practica_6/spec/matrices_spec.rb:29: syntax error, unexpected `end', expecting ')'
            end
            ^~~
        # /home/usuario/.rvm/gems/ruby-3.0.0/gems/rspec-core-3.10.1/lib/rspec/core/configuration.rb:2112:in `load'
        # /home/usuario/.rvm/gems/ruby-3.0.0/gems/rspec-core-3.10.1/lib/rspec/core/configuration.rb:2112:in `load_file_handling_errors'
        # /home/usuario/.rvm/gems/ruby-3.0.0/gems/rspec-core-3.10.1/lib/rspec/core/configuration.rb:1615:in `block in load_spec_files'
        # /home/usuario/.rvm/gems/ruby-3.0.0/gems/rspec-core-3.10.1/lib/rspec/core/configuration.rb:1613:in `each'
        # /home/usuario/.rvm/gems/ruby-3.0.0/gems/rspec-core-3.10.1/lib/rspec/core/configuration.rb:1613:in `load_spec_files'
        # /home/usuario/.rvm/gems/ruby-3.0.0/gems/rspec-core-3.10.1/lib/rspec/core/runner.rb:102:in `setup'
        # /home/usuario/.rvm/gems/ruby-3.0.0/gems/rspec-core-3.10.1/lib/rspec/core/runner.rb:86:in `run'
        # /home/usuario/.rvm/gems/ruby-3.0.0/gems/rspec-core-3.10.1/lib/rspec/core/runner.rb:71:in `run'
        # /home/usuario/.rvm/gems/ruby-3.0.0/gems/rspec-core-3.10.1/lib/rspec/core/runner.rb:45:in `invoke'
        # /home/usuario/.rvm/gems/ruby-3.0.0/gems/rspec-core-3.10.1/exe/rspec:4:in `<top (required)>'
        # /home/usuario/.rvm/gems/ruby-3.0.0/bin/rspec:23:in `load'
        # /home/usuario/.rvm/gems/ruby-3.0.0/bin/rspec:23:in `<main>'
        #
        #   Showing full backtrace because every line was filtered out.
        #   See docs for RSpec::Configuration#backtrace_exclusion_patterns and
        #   RSpec::Configuration#backtrace_inclusion_patterns for more information.
        No examples found.


        Finished in 0.00006 seconds (files took 0.43602 seconds to load)
        0 examples, 0 failures, 1 error occurred outside of examples    


14. Se añade el código de la traspuesta y pasa la prueba

        $ cat matrices.rb
        class Matrices
        attr_reader :fil, :col, :matriz
        def initialize(fil,col,matriz)
                @fil=fil
                @col=col
                @matriz=matriz
        end
        def to_s
                "#{@matriz}"
        end
        def +(a)
                matriz_resultado=Array.new(@fil) {Array.new(a.col, 0)}
                for i in 0..a.fil - 1
                for j in 0..a.col - 1
                    matriz_resultado[i][j]=@matriz[i][j] + a.matriz[i][j]
                    end
                    end
                Matrices.new(a.fil, a.col, matriz_resultado)
            end

        def traspuesta
            trasp=@matriz.transpose
            Matrices.new(@fil,@col,trasp)
            end

        end

        usuario@ubuntu:~/LPP/Practica_6/spec$ rake
        (in /home/usuario/LPP/Practica_6)
        rspec spec/matrices_spec.rb
        .....

        Finished in 0.00685 seconds (files took 0.17342 seconds to load)
        5 examples, 0 failures


15. Se añade la prueba para multiplicar una matriz por un valor


        $ cat matrices_spec.rb
        require 'matrices'
        #Permite agrupar prebas
        describe Matrices do
        before :each do
                @A = Matrices.new(3,3,[[1,2,3],[4,5,6],[7,8,9]])
                @B = Matrices.new(3,3,[[1,2,3],[1,2,3],[1,1,0]])
                @C = Matrices.new(3,3,[[2, 4, 6], [5, 7, 9], [8, 9, 9]])
                @D = Matrices.new(3,3,[[1, 4, 7], [2, 5, 8], [3, 6, 9]])
                @E = Matrices.new(2,2,[[2, 2], [2, 2]])
        end
        #Describe la prueba
        it "Se espera que se pueda inicializar la matriz" do
            expect(Matrices.new(2,2,[[1,2],[3,4]])).not_to eq(nil)
        end

        it "Se espera acceder a los elementos con los getters" do
                expect(@A.fil).to eq(3)
                expect(@A.col).to eq(3)
                expect(@A.matriz).to eq([[1,2,3],[4,5,6],[7,8,9]])
        end
        it "Se espera que se pueda representar como un string" do
                expect(@A.to_s).to eq("[[1, 2, 3], [4, 5, 6], [7, 8, 9]]")
        end

        it "Se espera que se puedan sumar dos matrices" do
                expect((@A+@B).to_s).to eq(@C.to_s)
        end

        it "Se espera que se pueda hacer la traspuesta" do
                expect(@A.traspuesta.to_s).to eq(@D.to_s)
        end
        it "se espera que se pueda multiplicar la matriz por un valor"
                expect((@E*2).to_s).to eq("[[4, 4], [4, 4]]")
        end
        end

        $ rake
        (in /home/usuario/LPP/Practica_6)
        rspec spec/matrices_spec.rb

        An error occurred while loading ./spec/matrices_spec.rb.
        Failure/Error: __send__(method, file)

        SyntaxError:
        /home/usuario/LPP/Practica_6/spec/matrices_spec.rb:35: syntax error, unexpected `end', expecting end-of-input
        # /home/usuario/.rvm/gems/ruby-3.0.0/gems/rspec-core-3.10.1/lib/rspec/core/configuration.rb:2112:in `load'
        # /home/usuario/.rvm/gems/ruby-3.0.0/gems/rspec-core-3.10.1/lib/rspec/core/configuration.rb:2112:in `load_file_handling_errors'
        # /home/usuario/.rvm/gems/ruby-3.0.0/gems/rspec-core-3.10.1/lib/rspec/core/configuration.rb:1615:in `block in load_spec_files'
        # /home/usuario/.rvm/gems/ruby-3.0.0/gems/rspec-core-3.10.1/lib/rspec/core/configuration.rb:1613:in `each'
        # /home/usuario/.rvm/gems/ruby-3.0.0/gems/rspec-core-3.10.1/lib/rspec/core/configuration.rb:1613:in `load_spec_files'
        # /home/usuario/.rvm/gems/ruby-3.0.0/gems/rspec-core-3.10.1/lib/rspec/core/runner.rb:102:in `setup'
        # /home/usuario/.rvm/gems/ruby-3.0.0/gems/rspec-core-3.10.1/lib/rspec/core/runner.rb:86:in `run'
        # /home/usuario/.rvm/gems/ruby-3.0.0/gems/rspec-core-3.10.1/lib/rspec/core/runner.rb:71:in `run'
        # /home/usuario/.rvm/gems/ruby-3.0.0/gems/rspec-core-3.10.1/lib/rspec/core/runner.rb:45:in `invoke'
        # /home/usuario/.rvm/gems/ruby-3.0.0/gems/rspec-core-3.10.1/exe/rspec:4:in `<top (required)>'
        # /home/usuario/.rvm/gems/ruby-3.0.0/bin/rspec:23:in `load'
        # /home/usuario/.rvm/gems/ruby-3.0.0/bin/rspec:23:in `<main>'
        #
        #   Showing full backtrace because every line was filtered out.
        #   See docs for RSpec::Configuration#backtrace_exclusion_patterns and
        #   RSpec::Configuration#backtrace_inclusion_patterns for more information.
        No examples found.


        Finished in 0.00014 seconds (files took 0.38837 seconds to load)
        0 examples, 0 failures, 1 error occurred outside of examples


16. Se añade el código y pasa la prueba 

        $ cat matrices.rb
        class Matrices
        attr_reader :fil, :col, :matriz
        def initialize(fil,col,matriz)
                @fil=fil
                @col=col
                @matriz=matriz
        end
        def to_s
                "#{@matriz}"
        end
        def +(a)
                matriz_resultado=Array.new(@fil) {Array.new(a.col, 0)}
                for i in 0..a.fil - 1
                for j in 0..a.col - 1
                    matriz_resultado[i][j]=@matriz[i][j] + a.matriz[i][j]
                    end
                    end
                Matrices.new(a.fil, a.col, matriz_resultado)
        end

        def traspuesta
            trasp=@matriz.transpose
            Matrices.new(@fil,@col,trasp)
        end

        def *(valor)

                for i in 0..@fil - 1
                for j in 0..@col - 1
                    @matriz[i][j]=@matriz[i][j]*valor
                end
                end
                Matrices.new(@fil,@col,@matriz)
            end

        end

        $ rake
        (in /home/usuario/LPP/Practica_6)
        rspec spec/matrices_spec.rb
        ......

        Finished in 0.00659 seconds (files took 0.20765 seconds to load)
        6 examples, 0 failures

</pre>
