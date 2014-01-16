require './kata_substring_instance'

describe "Return substring instance count" do 

	it "should return 2" 	do
		expect(solution('abcdeb','b')).to eq(2)
		
		end

	it "should return 1" 	do
		expect(solution('abcdeb', 'a')).to eq(1) 
		
		end

	it "should return 3" 	do
		expect(solution('ccddeeccddeecc', 'cc')).to eq(3)
	
		end

	it "should return 0" 	do
		expect(solution('aabb', 'cc')).to eq(0) 
		end
    it "should handle underscores" do
    	expect(solution('aa_bb_cc_dd_bb_e', 'bb')).to eq (2)
		end

end