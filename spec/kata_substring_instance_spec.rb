require './kata_substring_instance'


describe "Return substring instance count" do 
	
	it "returns 2 if 2 results found"  do
		kata = KataOne.new('abcdeb','b')
		expect(kata.solution).to eq(2)
		end

	 it "returns 1 if 1 result found" 	do
		kata = KataOne.new('abcdeb', 'a')
		expect(kata.solution).to eq(1)
	 	end

	it "returns 3 if 3 results found" 	do
		kata = KataOne.new('ccddeeccddeecc', 'cc')
		expect(kata.solution).to eq(3)
	 	end

	 it "handles no results" 	do
		kata = KataOne.new('aabb', 'cc')
		expect(kata.solution).to eq(0)
		end

     it "handles data with underscores" do
 		kata = KataOne.new('aa_bb_cc_dd_bb_e', 'bb')
		expect(kata.solution).to eq(2)
	 	end

end