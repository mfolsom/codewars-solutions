

require "spec_helper"

describe "Codewars Ranking" do 
let(:user) {RankSystem.new}

	it "should start a new user with a ranking of -8" do
		expect(user.rank).to eq(-8)
	end

	it "should level the user to the next rank" do	
		user.rank
		expect(user.inc_progress(-6)).to eq(-5)
	end

	it "should show a progress of zero from the beginning" do
		user.rank
		expect(user.progress).to eq(0)
	end


	
end

