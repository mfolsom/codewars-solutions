

module Decorator
	def initialize(full_text, search_text)
		@full_text = full_text
		@search_text = search_text
		#solution
	end
end

class Solver
include Decorator
	
	def solution
  		 @full_text.scan(@search_text).count
	end

end

#kata = KataOne.new("string1", "ring")
#kata.solution

