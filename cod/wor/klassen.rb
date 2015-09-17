class Movie
	def initialize(ptitel, prank = "")
		@titel = ptitel.capitalize
		@rank = prank
	end

	# def titel
	# 	@titel
	# end
	# =
	attr_reader :titel

	# def titel=(ptitel)
	# 	@titel = ptitel
	# end
	# =
	attr_writer :titel

	def thumbs_up
		@rank += 1
	end

	def thumbs_down
		@rank -= 1
	end

	def to_s
		"#{@titel} hat ein Ranking von: #{@rank}."
	end
end

obj_movie1 = Movie.new("Ninja Turtles", 4)
puts obj_movie1.to_s
obj_movie1.thumbs_up
puts obj_movie1.to_s

puts obj_movie1.titel

obj_movie1.titel = "Ninja Purples"
puts obj_movie1