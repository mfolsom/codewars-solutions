require './kata_substring_instance'


describe "Return substring instance count" do 
	
	it "returns 2 if 2 results found"  do
		kata = Solver.new('abcdeb','b')
		expect(kata.solution).to eq(2)
		end

	 it "returns 1 if 1 result found" 	do
		kata = Solver.new('abcdeb', 'a')
		expect(kata.solution).to eq(1)
	 	end

	it "returns 3 if 3 results found" 	do
		kata = Solver.new('ccddeeccddeecc', 'cc')
		expect(kata.solution).to eq(3)
	 	end

	 it "handles no results" 	do
		kata = Solver.new('aabb', 'cc')
		expect(kata.solution).to eq(0)
		end

     it "handles data with underscores" do
 		kata = Solver.new('aa_bb_cc_dd_bb_e', 'bb')
		expect(kata.solution).to eq(2)
	 	end

end