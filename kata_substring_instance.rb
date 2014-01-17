

class SearchParams
	def initialize(full_text,search_text)
		@full_text = full_text
		@search_text = search_text
	end
end

class Solver < SearchParams
	def solution
		if 	@full_text.is_a? Array
			text = @full_text.join(",")
			full_text = text.scan(@search_text).count
		else
  		 	@full_text.scan(@search_text).count
  		end
	end
end

 #kata = Solver.new("string","ring")
 #puts kata.solution

