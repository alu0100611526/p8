require "../lib/matriz.rb"

describe Matriz do
	before :each do	
		@m1 = Matriz.new(3,3,[1,2,3,4,5,6,7,8,9])
		@m2 = Matriz.new(3,3,[1,2,3,4,5,6,7,8,9])

	end

#Initialize
	describe "#Inicializar la matriz" do
		it "Se usa pos para acceder a los elementos" do
			@m1.pos(0,2).should eq(3)
			@m1.pos(2,2).should eq(9)
			@m2.pos(2,1).should eq(8) 
		end
	end
	
end
