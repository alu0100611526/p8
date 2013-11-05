class Matriz
attr_accessor :fil, :col , :mat
include Comparable

def initialize(f, c, e)

	    #atributo
	    @fil=f.to_i; #Numero de filas
	    @col=c.to_i; #Numero de columnas
	    
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
	
#Metodo que devuelve la matriz en forma de string                       
def to_s
	    
	"#{@mat}"
	
end

#Sobrecarga del operador de suma, recibe como parametros dos matrices y devuelve una matriz con el resultado de la suma de forma A+B= (Aij+Bij)
def +(other)	             
	if (@fil == other.fil && @col == other.col)
	                           
		temp = Matriz.new(@fil,@col,[0,0,0,0,0,0,0,0,0])
	    
		for i in (0...@fil.to_i)
			for j in (0...@col.to_i)
				temp.mat[i][j] = @mat[i][j] + other.mat[i][j]
			end
		end
	return temp
	
	else 
		return nil 
	end
	

end

#Sobrecarga del operador de resta, recibe como parametros dos francciones y devuelve una fraccion con el resultado de la resta
def -(other)
	                             
	if (@fil == other.fil && @col == other.col)
	                           
		temp = Matriz.new(@fil,@col,[0,0,0,0,0,0,0,0,0])
	    
		for i in (0...@fil.to_i)
			for j in (0...@col.to_i)
				temp.mat[i][j] = @mat[i][j] - other.mat[i][j]
			end
		end
	return temp
	
	else 
		return nil 
	end
	

	                             
end
	                             
#Sobrecarga del operador de multiplicación, recibe como parametros dos francciones y devuelve una fraccion con el resultado de la multiplicación
def *(other)
temp = Matriz.new(@fil,@col,[0,0,0,0,0,0,0,0,0])
		 

    if (@fil == other.col && @col == other.fil)             
		
		
		for i in (0...@fil.to_i)
			for j in (0...@col.to_i)
				for k in (0...@col.to_i)
					temp.mat[i][j] = temp.mat[i][j]+self.pos(i,k)*other.pos(k,j)
				end
			end
		end
		return temp
	else 
		return nil
	end
	
end 

#Funcion que suma los  elementos de una matriz 
def suma
sum = 0
	for i in (0...@fil.to_i)
		for j in (0...@col.to_i)
			sum += @mat[i][j]
		end
	end
	return sum

end

end


