

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

	it "should show zero progress points from the beginning" do
		user.rank
		expect(user.progress).to eq(0)
	end

	it "should show an additional 10 progress points if the user progresses one rank" do
		user.rank
		user.inc_progress(-8)
		expect(user.progress).to eq(10)
	end


	
end

