require 'matriz'
require 'fraccion'

describe Matriz do
	before :each do	
		f=
		@m1 = Matriz.new(3,3,[1,2,3,4,5,6,7,8,9])
		@m2 = Matriz.new(3,3,[1,2,3,4,5,6,7,8,9])
		@m3 = Matriz.new(2,2,[Fraccion.new(1,2),Fraccion.new(1,3),Fraccion.new(1,4),Fraccion.new(1,5)])
		@m4 = Matriz.new(2,2,[Fraccion.new(1,2),Fraccion.new(2,3),Fraccion.new(3,4),Fraccion.new(4,5)])
		@mr1= Matriz.new(2,2,[Fraccion.new(1,1),Fraccion.new(1,1),Fraccion.new(1,1),Fraccion.new(1,1)])
		@mr2= Matriz.new(2,2,[Fraccion.new(1,2),Fraccion.new(3,5),Fraccion.new(11,40),Fraccion.new(49,150)])
	end

#Initialize
	describe "#Inicializar la matriz" do
		it "Se usa pos para acceder a los elementos" do
			@m1.pos(0,2).should eq(3)
			@m1.pos(2,2).should eq(9)
			@m2.pos(2,1).should eq(8) 
		end
	end

#Operaciones básicas	
	describe "#Operaciones elementales" do

		it "Se invoca a to_s" do 
			@m1.to_s.should eq("[[1, 2, 3], [4, 5, 6], [7, 8, 9]]")
		end

		it "Se invoca a suma" do 
			
			(@m1+@m2).to_s().should eq("[[2, 4, 6], [8, 10, 12], [14, 16, 18]]")
		end
		
		it "Se invoca a resta" do 
			(@m1-@m2).to_s().should eq("[[0, 0, 0], [0, 0, 0], [0, 0, 0]]")
		end

		it "Se invoca a multiplicacion" do 
			(@m1*@m2).to_s().should eq("[[30, 36, 42], [66, 81, 96], [102, 126, 150]]")
		end

		it "Suma de elementos" do 
			@m1.suma().should eq(45)
		end
		
	end

#Comparaciones
	describe "#Operadores de comparacion" do
		it "Mayor que" do
			(@m1>@m2).should eq(false)
		end

		it "Menor que" do
			(@m1<@m2).should eq(false)
		end

		it "Mayor igual que" do
			(@m1>=@m2).should eq(true)
		end
		
		it "Menor igual que" do
			(@m1<=@m2).should eq(true)
		end

		it "Igual que" do
			(@m1==@m2).should eq(true)
		end

		it "Distinto de" do
			(@m1!=@m2).should eq(false)
		end
	end

#Modificacion
	describe "#Operadores de comparacion" do
		it "Suma fracciones" do
			(@m3+@m4).to_s.should eq("[[1/1, 1/1], [1/1, 1/1]]")
		end

		it "Multiplicacion de fracciones" do
			(@m3*@m4).to_s.should eq("[[1/2, 3/5], [11/40, 49/150]]")
		end
	end
end





















