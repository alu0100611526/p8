class Matriz
attr_reader :fil, :col
include Comparable

def initialize(f, c, e)

	    #atributo
	    @fil=f;#Numero de filas
	    @col=c; #Numero de columnas
	    
	    #inicializamos una matriz con todos sus valores a cero.
	    @mat = Array.new(@fil.to_i){Array.new(@col.to_i)}
	    
		for i in (0...@fil.to_i)
			for j in (0...@col.to_i)
				@mat[i][j]=0;
			end
	    end
 
	    #Rellenamos la matriz con lo valores recibidos 
	    for i in (0...@fil.to_i)
			for j in (0...@col.to_i)
				@mat[i][j]=e[i*@col.to_i+j];
			end
	    end
end


# Metodos getter devuelve el valor de una posicion determinada

	def pos(a,b)
		@mat[a][b]
	end
end
