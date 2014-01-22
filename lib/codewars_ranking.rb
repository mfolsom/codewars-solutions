

class RankSystem
	RANKS = [-8,-7,-6,-5,-4,-3,-2,-1,1,2,3,4,5,6,7,8]

	def rank
		@rank ||= RANKS.first
	end

	def rank=(value)
		@rank = rank
	end

	def progress
		d = activity_rank-rank
		10 *d*d
	end

	def activity_rank
		@activity_rank ||=RANKS.first
	end


	def inc_progress(rank)
		@next_rank = RANKS.index(rank)
		@rank_up = RANKS[@next_rank].next
	end

end